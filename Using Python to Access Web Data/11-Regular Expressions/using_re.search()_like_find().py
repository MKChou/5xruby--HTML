# 1:find()
hand = open("mbox-short.txt")
for line in hand :
    line = line.rstrip()
    if line.find("From ") >= 0:
        print(line)

# 2:re.search()
import re

hand = open("mbox-short.txt")
for line in hand:
    line = line.rstrip()
    if re.search("^From",line):
        print(line)
