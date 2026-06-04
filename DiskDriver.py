total_space = float(input("Enter total space in GB: "))
used_space =  float(input("Enter remaining space in GB: "))

#Percentage of disk space used
percentage_used = (used_space / total_space) * 100
print(f"Total space used is: {total_space}")
print(f"USed space is {used_space}")
print(f"Percentage of disk space used is: {percentage_used:.1f}%")

if percentage_used <= 70:
    print("Ok - plenty of space")
elif percentage_used < 90:
    print("WARNING - disk filling up")
else:
    print("CRTIICAL - take action now!")
