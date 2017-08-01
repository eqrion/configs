import random

level = 0
levelRange = [(9,15),
              (9,20),
              (9,26),
              (9,32),
              (9,40),
              (9,64),
              (9,88),
              (9,128)]

correct = 0
incorrect = 0
while level < len(levelRange):
    # generate the numbers
    answer = random.randrange(levelRange[level][0], levelRange[level][1] + 1)
    a = random.randrange(1, answer)
    b = answer - a

    if a < b:
        temp = a
        a = b
        b = temp

    print("0x%02x + 0x%02x = " % (a, b), end="")
    user = int(input(""), base=16)

    # check the answer
    if user == answer:
        print("correct")
        correct += 1
        incorrect = 0
    else:
        print("incorrect. answer = 0x%02x or %d" % (answer, answer))
        incorrect += 1
        correct = 0

    # check if we should level up or down
    if correct == 16:
        correct = 0
        incorrect = 0

        level += 1
        print("level is now %d" % (level + 1))
    elif incorrect == -2:
        correct = 0
        incorrect = 0

        level = max(level - 1, 0)
        print("level is now %d" % (level + 1))

print("pass")
