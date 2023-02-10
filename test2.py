import os
import re

with open('data2.txt', 'r') as f:
    data = f.read().splitlines()

for line in data:
    print(line)
    os.system('pkg install -y '+ line)