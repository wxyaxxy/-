# 比如 n = 15, 返回一个字符串数组：
#
# [
#   "1", "2", "fizz",
#   "4", "buzz", "fizz",
#   "7", "8", "fizz",
#   "buzz", "11", "fizz",
#   "13", "14", "fizz buzz"
# ]


def fizzBuzz(n):
    # write your code here
    lista = []
    for i in range(n):
        i += 1
        if i % 3 == 0 and i % 5 == 0 and i:
            lista.append("fizz buzz")
        elif i % 3 == 0:
            lista.append("fizz")
        elif i % 5 == 0:
            lista.append("buzz")
        else:
            lista.append(str(i))
    # return [i for i in range(n) if i % 3 == 0 or i % 5 == 0]
    return lista


print(fizzBuzz(15))
