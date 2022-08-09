import re

x = "From AN4096750@gs.ncku.edu.tw Mon Aug 8 16:10:34 2022"
y = re.findall("\S+@\S+",x)
z = re.findall("\S@\S",x)
h = re.findall("^From (\S+@\S+)",x)
print(y) # greedy
print(z) # non-greedy
print(h) #用括號做更準確的分割

# 把Email抓出來

# \S : 非空白字符
#  + : 一次或多次
