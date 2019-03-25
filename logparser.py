import csv

times = []
with open("example.log", "r") as file:
	for line in file:
		if line[0] !=  '\n':	
			columns = line.split(" ")
			print(columns)
			times.append(columns[7])
timenumbers = []
for time in times:
	segments = time.split("=")
	timenumbers.append(float(segments[-1]))

with open("data.csv", "a") as file:
	for time in timenumbers:	
		writer = csv.writer(file)
		writer.writerow([time])


