# Use an official Golang runtime as a parent image
FROM golang:latest

# Set the working directory to /webapi
WORKDIR /webapi

# Copy the source code into the container at /webapi
COPY . .

# Build the Go application
RUN go build -o app

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./app"]
