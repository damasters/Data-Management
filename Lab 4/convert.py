
import json
import sys

file = open(sys.argv[1])
content = json.load(file)
dict_val = content.values()

new_dict_keys = []
for a in list(content.keys()):
    new_dict_keys.append(a)
new_dict_values = []
for i in list(content.values()):
    for j in list(i.values()):
        if (isinstance(j, list) == True):
            for k in j:
                if (isinstance(k, dict) == True):
                    for l in k.values():
                        new_dict_values.append(l)
                else:
                    new_dict_values.append(j)
                    break
        elif (isinstance(j,dict) == True):
            new_dict_two = {}
            for m in j.keys():
                for n in j.values():
                    if isinstance(n, dict) == True:
                        for s in n.values():
                            new_dict_two[m] = s
                    else:
                        new_dict_two[m] = n
            new_dict_values.append(new_dict_two)
        else:
            new_dict_values.append(j)

new_dict = {}
for a in new_dict_keys:
    for b in new_dict_values:
        new_dict[a] = b
        new_dict_values.remove(b)
        break

for k,v in new_dict.items():
    try:
        if "." in v:
            new_dict[k] = float(v)
        else:
            new_dict[k] = int(v)
    except:
        pass

for i, j in new_dict.items():
    if isinstance(j, list) == True:
        new_list = []
        for a in j:
            try:
                if "." in j:
                    new_list.append(float(a))
                else:
                    new_list.append(int(a))
            except:
                new_list.append(a)
        new_dict[i] = new_list

for a, b in new_dict.items():
    if isinstance(b, dict) == True:
        dict_two = {}
        for j,k in b.items():
            try:
                if "." in k:
                    dict_two[j] = float(k)
                else:
                    dict_two[j] = int(k)
            except:
                dict_two[j] = k
        new_dict[a] = dict_two       

output_json = json.dumps(new_dict, indent=4)
with open(sys.argv[2], "w") as outfile:
    outfile.write(output_json)