import re

x = "From: Using the : character"
y = re.findall("^F.+?:",x)
print(y)

# ^F: F開頭
# . : 任何字符
# + : 一次或多次
# : : 從冒號開始
# ? : 別貪心