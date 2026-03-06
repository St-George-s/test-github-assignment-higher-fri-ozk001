# Software code goes here 
import csv

#step 1: read file into parallel arrays
def get_tool_data():
    tool_name = []
    manufacturer = []
    dateRented = []
    returned = []
    fee = []

    with open('Courseworks Databases/Coursework 2026/Software/tools.csv', 'r') as file:
        reader = csv.reader(file)
        for row in reader:
            tool_name.append(row[0])
            manufacturer.append(row[1])
            dateRented.append(row[2])
            returned.append(row[3])
            fee.append(int(row[4]))
            print(tool_name, manufacturer, dateRented, returned, fee)
        
        return tool_name, manufacturer, dateRented, returned, fee

#step 2: display name of tool and total number of tools by a chosen manufacturer
def linear_search(tool_name, manufacturer):
    found = False
    counter = 0
    array_size = len(manufacturer)
    while counter < array_size and not found:
        if manufacturer[counter] == 'TitanForge':
            found = True
        else:
            counter += 1
    if found:
        print(f"{tool_name[counter]} by Titan Forge found {counter}")
    else:
        print("manufacturer not found")

tool_name, manufacturer, dateRented, returned, fee = get_tool_data()
linear_search(tool_name, manufacturer)