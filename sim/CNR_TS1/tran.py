#!/usr/bin/env python3

import pandas as pd
import cicsim as cs
import numpy as np
import yaml
import glob
import re
import matplotlib.pyplot as plt

def main(name):


    yamlfile = name + ".yaml"
    with open(yamlfile) as fi:
        obj = yaml.safe_load(fi)

    files = glob.glob(name + "_*.raw")

    for f in files:
        m = re.findall("_([\d-]+).raw",f)
        if(len(m) == 0):
            continue
        key = m[0]

        dfs = cs.toDataFrames(cs.ngRawRead(name +"_spec_" + key +".raw"))
        df = dfs[0]

        spec = 20*np.log10(np.abs(df["v(do)"]))
        freq = df["frequency"]
        fxmax = spec.argmax()
        fymax = float(np.abs(freq[fxmax]))
        print(fymax)
        obj["freq_" + key] = fymax

    # Save new yaml file
    with open(yamlfile,"w") as fo:
        yaml.dump(obj,fo)


if __name__ == '__main__':
    main("output_tran/tran_NosweepSchGtKttTtVt")
