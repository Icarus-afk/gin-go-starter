# Gin Project Setup Script

This repository contains a setup script for initializing a Go project with a predefined structure, using the Gin web framework.

## Prerequisites

- [Go](https://golang.org/doc/install) installed on your machine (version 1.16 or later is recommended).
- Access to a terminal or command prompt.

## Installation

1. **Clone this Repository (or Create Your Own Script):**

   If you're using this as a template, clone it to your local machine. If you're starting fresh, create a new script file.

   ```bash
   git clone <repository-url>
   cd <repository-name>
   ```

2. **Move the Script to Your PATH:**

    Move the setup.sh script to a directory that is included in your system's PATH (e.g., /usr/local/bin or ~/bin).
    ```bash
    sudo mv setup.sh /usr/local/bin/gin-starter
    ```
    Or, if using ~/bin:
    ```bash
    mv setup.sh ~/bin/gin-starter
    ```

3. **Make the Script Executable:**

    Make the script executable by running the following command:
    ```bash
    chmod +x /usr/local/bin/gin-starter
    ```
    Or, if using ~/bin:
    ```bash
    chmod +x ~/bin/gin-starter
    ```

4. Usage
    To create a new Go project, navigate to the directory where you want to set up your project and run the following command:
    ```bash
    gin-starter <project-name>
    ```
    Replace <project-name> with your desired project name. This will create a new directory with the specified structure.
    **Example**
    ```bash
    gin-starter my-go-project
    ```

**Project Structure**

After running the script, the following structure will be created:
```bash
my_go_project/
├── api
│   ├── controller
│   ├── repository
│   ├── routes
│   └── service
├── Dockerfile
├── docker-compose.yml
├── go.mod
├── infrastructure
│   ├── db.go
│   ├── env.go
│   └── routes.go
├── main
│   └── main.go
├── models
├── util
└── .env
```

A sample .env file will be created with placeholders for:

    Database Configuration
    Other Configuration (e.g., application port)