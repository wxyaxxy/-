# 给定一个字符串和一个偏移量，根据偏移量旋转字符串(从左向右旋转)
#
# 您在真实的面试中是否遇到过这个题？
# 样例
# 对于字符串 "abcdefg".
#
# offset=0 => "abcdefg"
# offset=1 => "gabcdef"
# offset=2 => "fgabcde"
# offset=3 => "efgabcd"
# 挑战
# 在数组上原地旋转，使用O(1)的额外空间

str0 = "abcdefg"
str1 = [1,2,3,4,5]

def rotateString(str1, offset):
    # for i in range(len(str)):
    # c = list(str)
    str3 = str1[-offset:]+str1[:len(str1)-offset]
    # str =
    # global str0
    str = 'aaaa'
    # global str1
    # str1[:] = [2,2,2]

rotateString(str1,2)
print(str1)
rotateString(str0,2)
print(str0)