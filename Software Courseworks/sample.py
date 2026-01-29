import csv

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

def gen_bib(entryID, location, forename, surname):
    with open('data.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        for count in range(len(entryID)):
            bibValue = forename[count][0] + surname[count] + str(ord(location[count][0]))
            print (bibValue)
        
            writer.writerow([entryID[count], bibValue])
            print()


    pass

def find_max(jumps):
    maximum_value = jumps[0] 

    for counter in range(1, len(jumps)): 

        if jumps[counter] > maximum_value: 

            maximum_value = jumps[counter] 

    print(f"The largest value was {maximum_value}") 
    return maximum_value

def linear_search(jumps, forename, surname, maxJumps):

    for counter in range(30): 
        if jumps[counter] == maxJumps: 
            print(forename[counter] + surname[counter])

# Main program
entryID, location, forename, surname, jumps = get_athlete_data() # Call function
gen_bib(entryID, location, forename, surname)
maxJumps = find_max(jumps)
linear_search(jumps, forename, surname, maxJumps)