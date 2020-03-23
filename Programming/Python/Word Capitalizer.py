sentence = input().split(", ")
sentence = [x.upper() for x in sentence]
if len(sentence) == 0:
    print("No input")
elif len(sentence) == 1:
    print(sentence[0])
elif len(sentence) == 2:
    print (sentence[0])
    print (sentence[1])
else:
    print ("I cant be fucked to print that much")
