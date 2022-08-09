###找寄件地址###

x = "From AN4096750@gs.ncku.edu.tw Mon Aug 8 16:10:34 2022"

# 1.舊方法 find
atpos = x.find("@")
print(atpos)
sppos = x.find(" ",atpos) #從atpos之後開始找第一個空白
print(sppos)
ans = x[atpos+1:sppos]
print(ans)

# 2.新方法 split
words = x.split()
print(x)

aaa = words[1].split("@")
print(aaa) 
ans2= aaa[1]

print(ans2)

# 3.The Regex Version 寫在另一個檔案