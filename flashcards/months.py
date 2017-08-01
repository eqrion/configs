import random

months = ["january",
          "february",
          "march",
          "april",
          "may",
          "june",
          "july",
          "august",
          "september",
          "october",
          "november",
          "december"]

print("What do you want to do?")
which = 0

while which < 1 or which > 3:
    print("1 = list, 2 = rev list, 3 = random")
    which = int(input())

if which == 1:
    print("List the months in order:")
    for month in months:
        answer = input().lower()

        if month == answer:
            print("correct")
        else:
            print("incorrect")
elif which == 2:
    print("List the months in reverse order:")
    for month in reversed(months):
        answer = input().lower()

        if month == answer:
            print("correct")
        else:
            print("incorrect")
elif which == 3:
    print("Random months:")
    while True:
        i = random.randrange(1, 13)

        print("What month is %d?" % i)
        answer = input().lower()

        if months[i - 1] == answer:
            print("correct")
        else:
            print("incorrect")
