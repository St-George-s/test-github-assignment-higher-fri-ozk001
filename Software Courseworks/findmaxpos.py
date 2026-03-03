def findMaxPos(views): 
    maximum_position = 0
    for counter in range(1, len(views)): 
        if views[counter] > maximum_position: 
            maximum_position = counter 
    return maximum_position 


views = [1000, 20, 150, 500, 6000] 
print(findMaxPos(views))