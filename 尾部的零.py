# 描述
# 设计一个算法，计算出n阶乘中尾部零的个数
#
# 您在真实的面试中是否遇到过这个题？
# 样例
# 11! = 39916800，因此应该返回 2
#
# 挑战
# O(logN)的时间复杂度
# 统计n的阶乘数字中存在5或者5个倍数有多少个，例如如果n为20，那么就存在20（4*5）,15（3*5），
# 10（2*5）,5（1*5），总共4个5。
# 如果n为25，就存在25（5*5）,加上之前的4个，总共6个5。
# 以此类推
def ceshi(n):
    zeroNo = 0
    while (n):
        zeroNo = zeroNo + n // 5
        n = n // 5
    return zeroNo


print(ceshi(25))
