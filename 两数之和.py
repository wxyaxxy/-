# 给一个整数数组，找到两个数使得他们的和等于一个给定的数 target。
#
# 你需要实现的函数twoSum需要返回这两个数的下标, 并且第一个下标小于第二个下标。注意这里下标的范围是 0 到 n-1。
#
# 样例
# 给出 numbers = [2, 7, 11, 15], target = 9, 返回 [0, 1].
a = [2, 7, 11, 15]
target = 9
b = [1,0,-1]
target1 = 0

def twoSum(numbers, target):
    # write your code here
    for i in range(len(numbers)):
        j = i + 1
        while j < len(numbers):
            if numbers[i] + numbers[j] == target:
                return [i, j]
            j += 1
    return None

print(twoSum(b,target1))