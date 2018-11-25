# 描述
# 给定一个排序数组和一个目标值，如果在数组中找到目标值则返回索引。如果没有，返回到它将会被按顺序插入的位置。
#
# 你可以假设在数组中无重复元素。
#
# 您在真实的面试中是否遇到过这个题？
# 样例
# [1,3,5,6]，5 → 2
#
# [1,3,5,6]，2 → 1
#
# [1,3,5,6]， 7 → 4
#
# [1,3,5,6]，0 → 0

# 利用二分查找法,可以让时间复杂度为O(logN)

A = [1, 3, 5, 6]
target = 0


def searchInsert(A, target):
    low = 0
    high = len(A) - 1
    while low <= high:
        mid = (low + high) // 2
        guess = A[mid]
        if guess == target:
            return mid
        elif guess > target:
            high = mid - 1
        else:
            low = mid + 1
    return low


print(searchInsert(A, target))
