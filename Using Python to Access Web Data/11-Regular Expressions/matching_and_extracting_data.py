import re

x = "My 2 favorite number is 19 and 42 ."
y = re.findall("[0-9]",x)
print(y)

####################################
import re

x = "My 2 favorite number is 19 and 42 ."
y = re.findall("[0-9]+",x)
print(y)

####################################
import re

x = "My 2 favorite number is 19 and 42 ."
y = re.findall("[aeiou]+",x)
print(y)
z = re.findall("[AEIOU]+",x)
print(z)



