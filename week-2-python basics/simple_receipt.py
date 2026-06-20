# simple_receipt.py
# Exercise 3: Practice input, numbers and basic math

item_name = input("Item name: ")
price = float(input("Price: "))
quantity = int(input("Quantity: "))

total = price * quantity

print("Receipt")
print(f"Item: {item_name}")
print(f"Price: {price}")
print(f"Quantity: {quantity}")
print(f"Total: {total}")
