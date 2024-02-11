#!/usr/bin/env python3
import yaml
import sys
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

frun = sys.argv[1]

files = list()
with open(frun) as fi:
    for line in fi:
        if(line.startswith("*")):
            continue
        files.append(line.strip() + ".yaml")


fig,ax = plt.subplots(nrows=2,ncols=1,sharex=True,height_ratios=[4,1],figsize=(12,9))

for fname in files:
    with open(fname) as fi:
        obj = yaml.safe_load(fi)
    data = dict()
    vals = list()
    idd = list()
    offset = 0

    for k in obj:
        if("ivdd" in k):
            idd.append(obj[k]*1e6)

        if("freq" in k):
            (dd,v) = k.split("freq_")
            dv = int(v)
            vals.append([dv,obj[k]])
            if(dv==40):
                offset = obj[k]

    nidd = np.array(idd)
    df = pd.DataFrame(vals, columns=['x','y'])
    df = df.sort_values(by=['x', 'y'])
    df["est"] = (100 - ((df["y"] - offset)/1e6)*0.264) - 60
    diff = df["est"] - df["x"]

    avgy = df["y"].mean()
    ax[0].plot(df["x"],df["est"],label=fname)
    ax[1].plot(df["x"],diff)


ax[0].set_title(frun.replace(".run",""))
plt.xlabel("Temperature [C]")
ax[0].set_ylabel("Frequency [MHz]")
ax[1].set_ylabel("Error [C]")
ax[0].grid()
ax[1].grid()
ax[0].legend(loc='upper left')
plt.tight_layout()
plt.savefig(frun.replace(".run",".svg"))
plt.show()
