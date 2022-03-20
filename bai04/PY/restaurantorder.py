# json dependency
import json

print("Choose your language\n")
print("- English\n")
print("- Tiếng Việt\n")
language = input(print("Your selection: "))  # chooses language


class English:
    # open and load english.json file
    with open(encoding="utf-8" 'english.json') as english_file:
        english_data = json.load(english_file)

    def maindishes(self):
        print("What would you like to order for your main?\n")
        # read from maindishes array in english.json
        for i in self.english_data['maindishes']:
            print(i)
        # chooses maindish and make it accessible to all instances of this class
        __maindish = input(print("Your selection: "))

    def drinks(self):
        print("What would you like to order for your drinks?\n")
        # read from drinks array in english.json
        for i in self.english_data['drinks']:
            print(i)
        # chooses drinks and make it accessible to all instances of this class
        __drinks = input(print("Your selection: "))

    def desserts(self):
        print("What would you like to order for your desserts?\n")
        # read from desserts array in english.json
        for i in self.english_data['desserts']:
            print(i)
        # chooses desserts and make it accessible to all instances of this class
        __desserts = input(print("Your selection: "))

    # repeats the order to user and ask if they want to reorder
    def repeat(self):
        print("Your order is:")
        print("Main dish: " + __maindish)
        print("Drinks: " + __drinks)
        print("Desserts: " + __desserts)
        repeat_order = input(print("Would you like to reorder? (y/n): "))
        if repeat_order == "y":
            self.maindishes()
            self.drinks()
            self.desserts()
            self.repeat()
        else:
            print("Thank you for your order!")


class Vietnamese:  # replicating english class but in vietnamese
    # open and load vietnamese.json file
    with open(encoding="utf-8" 'vietnamese.json') as vietnamese_file:
        vietnamese_data = json.load(vietnamese_file)

    def maindishes(self):
        print("Nhập món ăn chính của bạn\n")
        # read from maindishes array in vietnamese.json
        for i in self.vietnamese_data['maindishes']:
            print(i)
        __maindish = input(print("Your selection: "))

    def drinks(self):
        print("Nhập món ăn chính của bạn\n")
        # read from drinks array in vietnamese.json
        for i in self.vietnamese_data['drinks']:
            print(i)
        __drinks = input(print("Your selection: "))

    def desserts(self):
        print("Bạn muốn đặt món tráng miệng gì?\n")
        # read from desserts array in vietnamese.json
        for i in self.vietnamese_data['desserts']:
            print(i)
        __desserts = input(print("Your selection: "))

    # repeats the order to user and ask if they want to reorder
    def repeat(self):
        print("Your order is:")
        print("Main dish: " + __maindish)
        print("Drinks: " + __drinks)
        print("Desserts: " + __desserts)
        repeat_order = input(print("Bạn có muốn đặt lại không? (y/n): "))
        if repeat_order == "y":
            self.maindishes()
            self.drinks()
            self.desserts()
            self.repeat()
        else:
            print("Cảm ơn bạn đã đặt hàng!")


if language == "English":
    english = English()
    english.maindishes()
    english.drinks()
    english.desserts()
    english.repeat()
elif language == "Tiếng Việt":
    vietnamese = Vietnamese()
    vietnamese.maindishes()
    vietnamese.drinks()
    vietnamese.desserts()
    vietnamese.repeat()
else:
    print("Please choose English or Tiếng Việt")
# note to self: untested code, it may work.