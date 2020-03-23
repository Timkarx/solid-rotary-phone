num = int(input("Please input a number:"))
if num % 2 == 0:
        print("This is an EVEN number")
else:
        print("This is  an ODD number")
def repeat():
    num = int(input("Please input another number:"))
    if num % 2 == 0:
        print("This is an EVEN number")
    else:
        print("This is  an ODD number")
while True:
    repeat()
