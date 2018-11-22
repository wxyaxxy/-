# 描述
# 合并两个排序的整数数组A和B变成一个新的数组。
#
# 您在真实的面试中是否遇到过这个题？
# 样例
# 给出A=[1,2,3,4]，B=[2,4,5,6]，返回 [1,2,2,3,4,4,5,6]
#
# 挑战
# 你能否优化你的算法，如果其中一个数组很大而另一个数组很小？

A=[1,2,3,4]
B=[2,4,5,6]


def mergeSortedArray(A, B):# write your code here
    c = A+B
    c.sort()
    return c

print(mergeSortedArray(A,B))