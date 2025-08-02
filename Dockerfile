# Start from the official Golang image
FROM golang:1.22

# Set working directory inside the container
WORKDIR /app

# Copy all files from current directory to container
COPY . .

# Build the Go app
RUN go build -o main .

# Expose port 8080
EXPOSE 8080

# Run the app
CMD ["./main"]
