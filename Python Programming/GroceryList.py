# Grocery List Program

grocery_list = []

def show_menu():
    print("\n==== Grocery List Menu ====")
    print("1. Add item")
    print("2. View list")
    print("3. Remove item")
    print("4. Exit")

while True:
    show_menu()
    choice = input("Enter your choice (1-4): ")

    if choice == '1':
        item = input("Enter item to add: ")
        grocery_list.append(item)
        print(f"✅ '{item}' added to the grocery list.")

    elif choice == '2':
        if grocery_list:
            print("\n🧾 Your Grocery List:")
            for index, item in enumerate(grocery_list, start=1):
                print(f"{index}. {item}")
        else:
            print("⚠️ Your grocery list is empty.")

    elif choice == '3':
        if grocery_list:
            item_to_remove = input("Enter item to remove: ")
            if item_to_remove in grocery_list:
                grocery_list.remove(item_to_remove)
                print(f"🗑️ '{item_to_remove}' removed.")
            else:
                print(f"❌ '{item_to_remove}' not found in list.")
        else:
            print("⚠️ List is empty. Nothing to remove.")

    elif choice == '4':
        print("👋 Exiting Grocery List. Goodbye!")
        break

    else:
        print("❗ Invalid choice. Please select 1-4.")
