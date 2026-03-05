# Software code goes here 
import csv

#step 1: read file into parallel arrays
def get_tool_data():
    tools = []
    manufacturer = []
    dateRented = []
    returned = []
    fee = []

    with open('Software/tools.csv', 'r') as file:
        reader = csv.reader(file)
        for row in reader:
            tools.append(row[0])
            manufacturer.append(row[1])
            dateRented.append(row[2])
            returned.append(row[3])
            fee.append(int(row[4]))
            print()
    
#    return tools, manufacturer, dateRented, returned, fee


#step 2: display name of tool and total number of tools by a chosen manufacturer
#def linear_search(manufacturer, TitanForge):
#    found = False
#    counter = 0
#    array_size = len(manufacturer)
#    while counter < array_size and not found:
#        if manufacturer[counter] == TitanForge:
#            found = True
#        else:
#            counter += 1
#    if found:
#        print(f"{TitanForge} found at {counter}")
#    else:
#        print("manufacturer not found")