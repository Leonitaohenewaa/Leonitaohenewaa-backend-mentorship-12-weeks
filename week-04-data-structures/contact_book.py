contacts = []


def show_menu():
    print("\nContact Book")
    print("1. Add contact")
    print("2. View all contacts")
    print("3. Search contact")
    print("4. Exit")


def add_contact():
    name = input("Name: ").strip().title()
    phone = input("Phone: ").strip()
    email = input("Email: ").lower()
    contacts.append({"name": name, "phone": phone, "email": email})
    print("Contact added.")


def view_contacts():
    if len(contacts) == 0:
        print("Contacts not found.")
    else:
        for contact in contacts:
            print(
                f"Name: {contact['name']}, Phone: {contact['phone']}, Email: {contact['email']}")


def search_contact():
    if len(contacts) == 0:
        print("Contacts not found.")
    else:
        name = input(
            "Enter the name of the contact to search: ").strip().title()
        for contact in contacts:
            if contact["name"] == name:
                print(
                    f"Name: {contact['name']}, Phone: {contact['phone']}, Email: {contact['email']}")
                return
        print("Contact not found.")


def main():
    while True:
        show_menu()
        choice = input("Choose an option: ").strip()

        if choice == "1":
            add_contact()
        elif choice == "2":
            view_contacts()
        elif choice == "3":
            search_contact()
        elif choice == "4":
            print("Goodbye!")
            break
        else:
            print("Invalid choice. Please choose 1, 2, 3 or 4.")


main()
