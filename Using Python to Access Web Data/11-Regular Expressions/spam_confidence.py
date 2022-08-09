import imp


import re

aaa = "0" #opne("mbox-short.txt")
numlist = list()

for line in aaa:
    line = line.rstrip()
    bbb = re.findall("^X-DSPAM-Confidence: (0-9.)+)",line)
    if len(bbb)!=1:
        continue
    num = float(bbb[0])
    numlist.append(bbb)

print("Max:",max(numlist))