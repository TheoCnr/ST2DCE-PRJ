# Use an official Golang runtime as a parent image
FROM golang:latest

# Set the working directory to /webapi
WORKDIR /webapi

# Copy the current directory contents into the container at /webapi
COPY . /webapi

# Build the Go application
RUN go build -o app

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./app"]
