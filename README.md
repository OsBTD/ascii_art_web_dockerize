# ASCII Art Generator

Welcome to the ASCII Art Generator website! This website allows you to turn text into ASCII art using different styles. You can download the content in text or HTML formats as well.

## Description

This project, as part of the ZONE01 coursework, comprises several exercises aimed at mastering various aspects of web development, particularly using Go and CSS. Our focus has been on creating a user-friendly interface, implementing robust functionalities, and ensuring the overall consistency and responsiveness of our web application.

## Technologies

- **GOLANG**
- **HTML**
- **CSS**
- **Docker**
- **Shell**

## Installation

### Running Locally:

To install and run the project locally:

1. **Clone the repository:**
    ```sh
    git clone https://learn.zone01oujda.ma/git/oatmani/ascii-art-web-dockerize
    ```

2. **Navigate to the project directory:**
    ```sh
    cd ascii-art-web-dockerize
    ```

3. **Build and run the Go server:**
    ```sh
    go run main.go
    ```

4. **Open your web browser and visit** `http://localhost:8080`.

### Running with Docker:

#### Running manually

1. Ensure Docker is installed and running on your machine.

2. **Navigate to the project directory:** 
```sh 
cd ascii-art-web-dockerize 
``` 

3. **Build the Docker image:** 
```sh 
docker build -t ascii-dockerize . 
``` 
4. **Run the Docker container:** 
```sh 
docker run -p 8080:8080 ascii-dockerize 
```

#### Running using the shell script

**Run the provided script to handle everything:** 
```sh 
./script.sh 
``` 
The script is designed to simplify the process of building and running the container, it will: 
- Check if any Docker images exist. 
- If no image exists, build the Docker image. 
- Run the Docker container using the available or newly built image.
