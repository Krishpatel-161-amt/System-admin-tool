# asks for total space
total_space = float(input("Enter total space in GB: "))
# asks for remaining space
used_space = float(input("Enter remaining space in GB: "))

# calculates percentage used
percentage_used = (used_space / total_space) * 100

# prints space details
print(f"Total space is: {total_space} GB")
print(f"Used space is: {used_space} GB")
print(f"Percentage of disk space used is: {percentage_used:.1f}%")

# checks if space is okay
if percentage_used <= 70:
    print("Ok - plenty of space")
# checks if space is filling up
elif percentage_used < 90:
    print("WARNING - disk filling up")
# warns if space is critical
else:
    print("CRITICAL - take action now!")
