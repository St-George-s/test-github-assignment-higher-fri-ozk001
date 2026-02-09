import csv


# get the qualified athlete's data FUNCTION MODULE
def get_athlete_data():
    entryID = []
    location = []
    forename = []
    surname = []
    jumps = []

    with open('Software Courseworks/athletes.csv', 'r') as file:
        reader = csv.reader(file)
        for row in reader:
            entryID.append(row[0])
            location.append(row[1])
            forename.append(row[2])
            surname.append(row[3])
            jumps.append(int(row[4]))
            print(entryID, location, forename, surname, jumps)
            
    return entryID, location, forename, surname, jumps


#makes bibs for athlete and written new file PROCEDURE MODULE
def gen_bib(entryID, location, forename, surname):
    with open('data.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        for count in range(len(entryID)):
            bibValue = forename[count][0] + surname[count] + str(ord(location[count][0]))
            print (bibValue)    
            writer.writerow([entryID[count], bibValue])
            print()
    pass


#searches for highest number of jumps FUNCTION MODULE
def find_max(jumps):
    maximum_value = jumps[0] 

    for counter in range(1, len(jumps)): 
        if jumps[counter] > maximum_value: 
            maximum_value = jumps[counter] 

    print(f"The largest value was {maximum_value}") 
    return maximum_value


#displays athlete identity after finding highest number of jumps PROCEDURE MODULE
def linear_search(jumps, forename, surname, maxJumps):
    for counter in range(30): 
        if jumps[counter] == maxJumps: 
            print(forename[counter] + " " + surname[counter])


#displays each location's finalist athletes PROCEDURE MODULE
def count_occurrences(location): 
    coatbridge_count = 0
    inverness_count = 0
    kirkcaldy_count = 0
    motherwell_count = 0

    for item in location: 
        if item == "Coatbridge": 
            coatbridge_count += 1 
        elif item == "Inverness": 
            inverness_count += 1 
        elif item == "Kirkcaldy": 
            kirkcaldy_count += 1     
        elif item == "Motherwell": 
            motherwell_count += 1 

    print(f"Coatbridghe as {coatbridge_count} finalists")
    print(f"Inverness as {inverness_count} finalists")
    print(f"Kirkcaldy as {kirkcaldy_count} finalists")
    print(f"Motherwell as {motherwell_count} finalists")


# Main program
# entryID, location, forename, surname, jumps = get_athlete_data() # Call function
# gen_bib(entryID, location, forename, surname)
# maxJumps = find_max(jumps)
# linear_search(jumps, forename, surname, maxJumps)
# count_occurrences(location)

find_max([100, 87, 102, 108, 95])
#1,008,710,210,895