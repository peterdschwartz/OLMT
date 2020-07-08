import os
import sys, getopt


try:
    opts, args = getopt.getopt(sys.argv[1:],"hN:")
except getopt.GetoptError:
    print("invalid args")
    sys.exit(2)

for opt, arg in opts:
    if opt == '-h':
        print('-N specifices the number of points to duplicate')
        sys.exit()
    elif opt == '-N':
        N = int(arg)

file  = open('point_list_N')
lines = file.readlines()
lat =[];lon=[];
for l in lines[1:]:
    l = l.rstrip('\n').split()
    lat.append(l[0]); lon.append(l[1])

print(f"making {N} sets" )
lat = N*lat
lon = N*lon
print(len(lat))
with open('point_list','w') as ofile:
    ofile.write('lat lon\n')
    for i in range(0,len(lat)):
        ofile.write(f'{lat[i]} {lon[i]}\n')


file.close()
