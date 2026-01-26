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
            jumps.append(row[4])
            print(entryID, location, forename, surname, jumps)
            
    return entryID, location, forename, surname, jumps

def gen_bib(entryID, location, forename, surname):
    with open('data.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        for count in range(len(entryID)):
            writer.writerow([entryID[count]])
            writer.writerow([location[count]])
            writer.writerow([forename[count]])
            writer.writerow([surname[count]])
            print()


    pass

def max_jumps(jumps):
    return maxJumps
def full_athlete_name(maxJumps, forename, surname, jumps):
    pass

# Main program
entryID, location, forename, surname, jumps = get_athlete_data() # Call function
gen_bib(entryID, location, forename, surname)