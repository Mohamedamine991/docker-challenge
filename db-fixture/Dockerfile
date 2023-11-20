# Use the official MongoDB image as the base image.
FROM mongo

# Copy the `fixture.json` file from the host machine into the container's root directory.
COPY fixture.json /fixture.json

# Define the default command to run when the container starts.
# This command uses the `mongoimport` tool to import data from the `fixture.json` file into the specified MongoDB database and collection.
CMD mongoimport --host db --db mydb --collection mycollection --type json --file /fixture.json --jsonArray
