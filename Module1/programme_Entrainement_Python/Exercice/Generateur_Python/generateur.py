
def compter(start, end):
    for i in range(start, end):
        yield i

def nombres_pairs(iterable):
    n = 0
    while n < iterable:
        yield n
        n += 2

def fibonacci():
    a, b = 0, 1
    n = 0
    while 1:
        yield a
        temp = b
        b= a + b
        a = temp

def generateur_puissance(n):
    for i in range(2, n):
        pow = n ** i
        yield pow

gen = compter(3, 10)
print(next(gen))
print(next(gen))
print(next(gen))

gen2 = nombres_pairs(10)
print(next(gen2))
print(next(gen2))
print(next(gen2))
print(next(gen2))

gen3 = fibonacci()
for i in range(0, 10, 1):
    print(next(gen3))
    
n = 10
gen4 = generateur_puissance(n)
for i in range(2, n):
    print(next(gen4))