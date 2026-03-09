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
def count_occurrences(tool_name, Pliers):
    number_found = 0
    for item in tool_name:
        if item == Pliers:
        number_found += 1
    print(f"{number_found} items of {Pliers}")



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


#main program
tool_name, manufacturer, dateRented, returned, fee = get_tool_data()
count_occurrences(manufacturer)
