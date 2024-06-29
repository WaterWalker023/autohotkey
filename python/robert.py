def permute(list=list):
    if len(list) == 1:
        return [[list[0]]]
    else:
        permutations = []
        for i in list:
            copy = list.copy()
            copy.remove(i)
            for j in permute(copy):
                permutations.append([i] + j)
        return permutations

with open("C:\\Users\\tomst\\Desktop\\AHK\\python\\robertshuiswerk.txt", "w") as f:
    f.write(str(permute([1,2,3,4,5,6,7,8,9,10,11,12])))
    f.close()