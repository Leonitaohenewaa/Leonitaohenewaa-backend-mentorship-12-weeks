# profile_generator.py
# Exercise 4: Practice input, variables, string formatting and output

name = input("Name: ")
age = int(input("Age: "))
city = input("City/Country: ")
goal = input("Learning goal: ")

print("\nProfile Summary")
print(f"{name} is {age} years old and lives in {city}.")
print(f"Current learning goal: {goal}.")
