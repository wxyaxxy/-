# 描述
# 写出一个高效的算法来搜索 m × n矩阵中的值。
#
# 这个矩阵具有以下特性：
#
# 每行中的整数从左到右是排序的。
# 每行的第一个数大于上一行的最后一个整数。
# 您在真实的面试中是否遇到过这个题？
# 样例
# 考虑下列矩阵：
#
# [
#   [1, 3, 5, 7],
#   [10, 11, 16, 20],
#   [23, 30, 34, 50]
# ]
# 给出 target = 3，返回 true

a = [
    [1, 3, 5, 7],
    [10, 11, 16, 20],
    [23, 30, 34, 50]
]
target = 2


def searchMatrix(matrix, target):
    for i in matrix:
        for j in i:
            if j == target:
                return True
    return False


print(searchMatrix(a, target))
