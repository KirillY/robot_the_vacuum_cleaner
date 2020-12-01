# Write a program in any programming language that counts backwards from value provided by user to 1 and prints: 
# “Agile” if the number is divisible by 5, 
# “Software” if the number is divisible by 3, 
# “Testing” if the number is divisible by both,
# or prints just the number if none of those cases are true.

def fizzbuzz(input_number):
    for n in range(int(input_number), -1, -1):
        if n % 3 == 0 and n % 5 == 0:
            print('Testing')
        elif n % 3 == 0:
            print('Software')
        elif n % 5 == 0:
            print('Agile')
        else:
            print(n)

if __name__ == "__main__":
    input_number = input("Enter the number:")
    fizzbuzz(input_number)