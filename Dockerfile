# 1. Start with a clean Linux environment
FROM ubuntu:latest

# 2. Install the C++ compiler inside the container
RUN apt-get update && apt-get install -y g++

# 3. Create a folder inside the container and move into it
WORKDIR /app

# 4. Copy our project files from our computer into the container's folder
COPY main.cpp .

# 5. Compile the code inside the container
RUN g++ main.cpp -o my_program

# 6. The default command to run when the container starts
CMD ["./my_program"]