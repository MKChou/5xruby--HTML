import re

x = "From AN4096750@gs.ncku.edu.tw Mon Aug 8 16:10:34 2022"
y = re.findall("@([^ ]*)",x)
print(y)

# * : 任何
# [] : 除了中括號裡面
# [^ ] : 裡面有＾還有空白 >>> 除了空白開頭以外的
# [^ ]* : 除了空白開頭以外的任何一切

z = re.findall("^From .*@([^ ]*)",x)
print(z)
