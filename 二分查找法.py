# 描述
# 给定一个排序的整数数组（升序）和一个要查找的整数target，用O(logn)的时间查找到target第一次出现的下标（从0开始），如果target不存在于数组中，返回-1。
#
# 您在真实的面试中是否遇到过这个题？
# 样例
# 在数组 [1, 2, 3, 3, 4, 5, 10] 中二分查找3，返回2。
#
# 挑战
# 如果数组中的整数个数超过了2^32，你的算法是否会出错？
nums = [1, 2, 3, 3, 4, 5, 10]
target = 3


def binarySearch(nums, target):
    low = 0
    high = len(nums) - 1
    while low <= high:
        mid = (low + high) // 2
        guess = nums[mid]
        if guess == target:
            high = mid
            if mid == low:
                return mid
        elif guess > target:
            high = mid - 1
        else:
            low = mid + 1
    return None


print(binarySearch(nums, target))
