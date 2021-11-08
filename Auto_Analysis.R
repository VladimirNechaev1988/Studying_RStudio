# Import data set

df = read.csv('auto.csv')

# View the data set

View(df)

# Select 3d row and 5th column

df[3,5]

# Select all the values for a given car (9th row and all columns)

df[9,]

# Selecting three rows together and all columns

df[9:11,]

# Select "name" and "horse power" for all cars

df[ , c("name","horsepower")]
df[,c(9,4)] #alternative to the above

# Select first three rows and first 5 columns

> df[1:3,1:5]

# Selecting one column

df[,5]

# Creating a new variable with the information "horsepower"

hp=df[,4]
hp

# Check some information on hp

summary(hp)
df2=df[-c(331, 33,337,127),] #this is actually shit, it didn't work
View(df2)
str(df)
str(df2)

# Change the "horsepower" variable type into numeric

df$horsepower = as.numeric(df$horsepower)
# Check the structure again
str(df) # column horsepower is now numerical

hp=df[,4] #reassign hp to new dataframe

# Summary HP
summary(hp)
# Now we have NA's which isn't cool

# Get rid of NA's

df=df[complete.cases(df),] # This will create a new DF which will create rows without NA and all columns

#Check summary again
hp=df[,4]
summary(hp)

# Create summary of "weight" column

summary(df$weight)

# Filtering data set using criterion

efficient_cars = df[df$mpg >= 30,] # We choose cars which mpg is larger than 30 (TRUE), we only chech rows
View(efficient_cars)
efficient_cars1 = df[(df$mpg >= 30)& (df$year==77),] # Selecting two rows

