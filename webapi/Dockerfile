# Use an official Golang runtime as a parent image
FROM golang:latest

RUN mkdir /app

ADD . /app

# Set the working directory to /webapi
WORKDIR /app

# Build the Go application
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 8082

# Command to run the executable
CMD ["./app"]
