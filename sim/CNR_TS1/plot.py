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


fig,ax = plt.subplots(nrows=1,ncols=1,sharex=True,height_ratios=[1],figsize=(12,9))

if(type(ax) != list):
    axtmp = list()
    axtmp.append(ax)
    ax = axtmp


for fname in files:
    with open(fname) as fi:
        obj = yaml.safe_load(fi)
    data = dict()
    vals = list()
    idd = list()

    for k in obj:
        if("ivdd" in k):
            idd.append(obj[k]*1e6)

        if("freq" in k):
            (dd,v) = k.split("freq_")
            dv = int(v)
            vals.append([dv,obj[k]])

    nidd = np.array(idd)
    df = pd.DataFrame(vals, columns=['x','y'])
    df = df.sort_values(by=['x', 'y'])
    df["y"] = df["y"]/1e6

    avgy = df["y"].mean()
    ax[0].plot(df["x"],df["y"],label=fname)
    ax[0].text(-40,avgy,"IDD = (MAX: %.2f, AVG: %.2f, MIN: %.2f) uA" %(nidd.max(),nidd.mean(),nidd.min()))




ax[0].set_title(frun.replace(".run",""))
plt.xlabel("Temperature [C]")
ax[0].set_ylabel("Frequency [MHz]")
ax[0].grid()
ax[0].legend(loc='upper left')
plt.tight_layout()
plt.savefig(frun.replace(".run",".svg"))
plt.show()
