# 描述
# 给定一个列表，该列表中的每个要素要么是个列表，要么是整数。将其变成一个只包含整数的简单列表。
#
# 如果给定的列表中的要素本身也是一个列表，那么它也可以包含列表。
#
# 您在真实的面试中是否遇到过这个题？
# 样例
# 给定 [1,2,[1,2]]，返回 [1,2,1,2]。
#
# 给定 [4,[3,[2,[1]]]]，返回 [4,3,2,1]。
#
# 挑战
# 请用非递归方法尝试解答这道题。
a = [1, 2, [1, 2]]  # ，返回 [1,2,1,2]。

b = [4, [3, [2, [1]]]]  # ，返回 [4,3,2,1]。

c = 10  # 期望[10]

d = [[1,1],2,[1,1]]
def flatten(nestedList):
    # 递归的做法
    c = []
    if type(nestedList) == list:
        for i in nestedList:
            if type(i) == list:
                c += flatten(i)
            else:
                c.append(i)
    else:
        c.append(nestedList)
    return c

print(flatten(d))
