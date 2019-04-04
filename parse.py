import os
print("Stating output")
print()
print()
print()
print()
print()
print()
print()
print()

urls = ['www.birdsvilleraces.com|ping|', 'www.chinahotelsreservation.com|ping|','www.clubedochoro.com.br|ping|', 
'www.flamingotravel.com.vn|ping|', 'www.jamilin.com|ping|', 'www.just.edu.so|ping|', 
'www.rudgwicksteamshow.co.uk|ping|', 'www.theworldsworstwebsiteever.com|ping|']
list_of_files = os.listdir(os.getcwd()) #list of files in the current directory
for url in urls:
    print()
    for file in (sorted(list_of_files)):
        if file.startswith(url):  #since its all type str you can simply use startswith
            with open(file, 'r') as open_file:
                lines = open_file.read().splitlines()
                info = lines[-2]
                print(file)
                print("Info")
                print(info)
                print()
#line 124
