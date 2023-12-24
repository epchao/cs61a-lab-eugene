def falling(n, k):
    """Compute the falling factorial of n to depth k.

    >>> falling(6, 3)  # 6 * 5 * 4
    120
    >>> falling(4, 3)  # 4 * 3 * 2
    24
    >>> falling(4, 1)  # 4
    4
    >>> falling(4, 0)
    1
    """
    # counter = 1
    # factorial = n

    if (k == 0):
        return 1
    return n * falling(n - 1, k - 1)

        # while k > 0:
            # if counter == k:
            #     return factorial
            # factorial = factorial * (n - counter)
            # counter += 1
        

#(n,k)
#return n * n * 1

def sum_digits(y):
    """Sum all the digits of y.

    >>> sum_digits(10) # 1 + 0 = 1
    1
    >>> sum_digits(4224) # 4 + 2 + 2 + 4 = 12
    12
    >>> sum_digits(1234567890)
    45
    >>> a = sum_digits(123) # make sure that you are using return rather than print
    >>> a
    6
    """
    sum = 0

    while y != 0:
        sum += y % 10
        y //= 10
    return sum

def double_eights(n):
    """Return true if n has two eights in a row.
    >>> double_eights(8)
    False
    >>> double_eights(88)
    True
    >>> double_eights(2882)
    True
    >>> double_eights(880088)
    True
    >>> double_eights(12345)
    False
    >>> double_eights(80808080)
    False
    """
    prev = 0
    curr = 0

    while n != 0:
        if curr == 8 and prev == 8:
            return True
        prev = n % 10

        curr = (n // 10) % 10

        n //= 10

    return False