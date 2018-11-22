# 描述
# Given a non-overlapping interval list which is sorted by start point.
#
# Insert a new interval into it, make sure the list is still in order and non-overlapping (merge intervals if
# necessary).
#
# 您在真实的面试中是否遇到过这个题？
# Insert (2, 5) into [(1,2), (5,9)], we get [(1,9)].
#
# Insert (3, 4) into [(1,2), (5,9)], we get [(1,2), (3,4), (5,9)].

intervals = [(1, 2), (5, 9)]
newInterval = (2, 5)
newInterval2 = (3, 4)


def insert(intervals, newInterval):
    for i in intervals:
        if newInterval[0]==i[1]:
            i[1]=newInterval[1]
        if newInterval[1]==i[0]:
            i[0]=newInterval[0]


print(insert(intervals, newInterval))
