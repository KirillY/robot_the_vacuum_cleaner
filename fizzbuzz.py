def fizzbuzz(input_number):
    input_number += 1
    for n in range(input_number)[::-1]:
        if n % 3 == 0 and n % 5 == 0:
            print(n, 'Testing')
        elif n % 3 == 0:
            print(n, 'Software')
        elif n % 5 == 0:
            print(n, 'Agile')

if __name__ == "__main__":
    fizzbuzz(50)