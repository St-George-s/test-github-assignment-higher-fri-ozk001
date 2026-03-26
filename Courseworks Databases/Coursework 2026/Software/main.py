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


# def get_manufacture_data():
#     tool_name = []
#     manufacturer = []
#     chosen_manufacturer = 'TitanForge'
    
#     with open('Courseworks Databases/Coursework 2026/Software/tools.csv', 'r') as file:
#         reader = csv.DictReader(file)
#         associated_tools = [row['tool_name'] for row in reader if row['manufacturer']] == chosen_manufacturer
#         print(f"Tools owned by {chosen_manufacturer}:{associated_tools}")
        
#         return tool_name, manufacturer, chosen_manufacturer, associated_tools



#experiment two
def linear_search(numbers, item_to_find):
    found = False
    counter = 0
    array_size = len(numbers)
    while counter < array_size and not found:
        if numbers[counter] == item_to_find:
            found = True
        else:
            counter += 1
    if found:
        print (f"{item_to_find} found at position {counter}")
    else:
        print(f"item not found")
    

#experiment
def count_occurrences(manufacturer):
        handytech_count = 0
        buildpro_count = 0
        browntech_count = 0
        titanforge_count = 0
        megatools_count = 0
        irongrip_count = 0
        fixit_count = 0
        precision_count = 0

        for item in manufacturer:
            if item == "HandyTech Solutions":
                handytech_count += 1
            elif item == "BuildPro Systems":
                buildpro_count += 1
            elif item == "BrownTech":
                browntech_count += 1
            elif item == "TitanForge":
                titanforge_count += 1
            elif item == "MegaTools Inc.":
                megatools_count += 1
            elif item == "IronGrip Manufacturing":
                irongrip_count += 1
            elif item == "FixIt Co.":
                fixit_count += 1
            elif item == "PrecisionWorks":
                precision_count += 1

        print(f"HandyTech Solutions has {handytech_count}")
        print(f"BuildPro Systems has {buildpro_count}")
        print(f"BrownTech has {browntech_count}")
        print(f"TitanForge has {titanforge_count}")
        print(f"MegaTools Inc. has {megatools_count}")
        print(f"IronGrip Manufacturing has {irongrip_count}")
        print(f"FixIt Co. has {fixit_count}")
        print(f"PrecisionWorks has {precision_count}")


#step 3: calculate late fee for unreturned tools rented in 2025
def late_fee(returned, dateRented, fee):
    # 3.1 loop for number of tools
    if returned != 'Yes':
        for x in range(120):
            if int(dateRented[x][3:5]) <= 7:
                fee = 10
            elif int(dateRented[x][3:5]) >= 8:
                fee = 5
    # 3.2 if tool was rented in 2025 and not returned
    # 3.3 if the month is between January and June
    # 3.4 set current fee to 10
    # 3.5 else
    # 3.6 set current fee to 5 elif
    else:
        print("item returned on time")
    # 3.7 end if
    # 3.8 end if
    # 3.9 end loop
    # 3.10 return fee array
    #return returned
        return fee

age = 17.4
age = int(age) 
print(age)  # Output: 17 

#def stepFour():
    # 4.1 open file ‘lateTools.csv’ to write

    # 4.2 loop for number of tools

    # 4.3 if current fee is not 0

    # 4.4 write tool name, date rented and fee to file

    # 4.5 end if

    # 4.6 end loop

    # 4.7 close file ‘lateTools.csv

def unreturned(tool_name, returned, dateRented):
    for x in range(120):
        if int(dateRented[x][6:10]) == 2025 and returned != 'Yes':
            if int(dateRented[x][3:5]) <= 6:
                #fee should be 10

                print(f"fee is 10 of unreturned {tool_name[x]}")
            elif int(dateRented[x][3:5]) >= 7:
                #fee should be five

                print(f"fee is 5 of unreturned {tool_name[x]}")
            else:
                print("idk1")
        elif int(dateRented[x][6:10]) != 2025 and returned != 'Yes':
            print("great way to start of the new year, ey?")
        else:
            pass


def gen_fee(tool_name, dateRented, fee):
    with open('data.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        for count in range(len(tool_name)):
            feeValue = dateRented[count][3:5] + surname[count] + str(ord(location[count][0]))
            print (feeValue)    
            writer.writerow([tool_name[count], feeValue])
            print()
    pass

#with open('data.csv', 'w', newline='') as file: 
#    writer = csv.writer(file) 
#    writer.writerow(["Name", "Age"]) 

#main program
tool_name, manufacturer, dateRented, returned, fee = get_tool_data()
#count_occurrences(manufacturer)
#numbers = [3, 8, 1, 7, 19]
# linear_search(numbers, 7)
# get_manufacture_data()
#late_fee(returned, dateRented, fee)
age = [17.4]
unreturned(tool_name, returned, dateRented)
#gen_latefee(tool_name, manufacturer, dateRented, returned)
gen_fee(tool_name, dateRented, fee)