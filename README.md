# Flask App with MySQL and Docker (Soft-Delete)

## SoftDelete Implementation

In this application, the SoftDelete functionality is achieved by introducing a `deleted` column in the database model. When a record is marked as deleted, it is logically removed from the active records while preserving its existence in the database.

The SoftDelete feature is applied to the `Task` model, and the application provides routes to view, add, and logically delete tasks.


### **Select Language:**
- [Español (Spanish)](README-es.md)
- [English](README.md)

## Result
### Start Web Service (Python-Flask) and MongoDB
![Alt text](docs/up.PNG) 
### Home
![Alt text](docs/index.PNG) 
### Add
![Alt text](docs/eliminar.PNG)
### Add Data
![Alt text](docs/create.PNG) 
### List Data in Docker
![Alt text](docs/add_docker.PNG) 
### Update
![Alt text](docs/update.PNG) 


## Prerequisites

- [Python](https://www.python.org/downloads/)
- [Docker](https://www.docker.com/get-started)

# Result

## Getting Started

1. Clone the repository:

    ```bash
    git clone https://github.com/Anyel-ec/Flask-MySQL-Docker-SoftDelete
    cd tuproyecto
    ```

2. Run the Flask App Locally:

    ```bash
    # Install dependencies
    pip install -r requirements.txt

    # Run the Flask app
    python app.py
    ```

   The app will be accessible at [http://localhost:5000](http://localhost:5000).

3. Dockerize the App:

    ```bash
    # Build the Docker image
    docker build -t my-flask-app .
    
    # Run the Docker container
    docker run -p 5000:5000 my-flask-app
    ```

   The Dockerized app will be accessible at [http://localhost:5000](http://localhost:5000).

4. Use Docker Compose (Optional):

    ```bash
    # Build and run the app with MySQL using Docker Compose
    docker-compose up
    ```

   This will start both the Flask application and the MySQL database.

## Docker Configuration

The Dockerfile and docker-compose.yml files are provided for containerization.

- **Dockerfile:**
  - Uses the official Python 3.8 image as a base.
  - Sets the working directory to `/app`.
  - Copies the necessary files into the container.
  - Installs dependencies from requirements.txt.
  - Exposes port 5000.
  - Defines the command to run the Flask app.

- **docker-compose.yml:**
  - Defines two services: `flask-app` and `mysql-db`.
  - `flask-app` builds from the current directory and depends on `mysql-db`.
  - `mysql-db` uses the official MySQL 5.7 image, exposes port 3306, and sets environment variables for configuration.

## Notes

- The Flask application uses SQLAlchemy with the `pymysql` driver to connect to the MySQL database.

- Customize the configurations in `app.py`, `Dockerfile`, and `docker-compose.yml` as needed for your project.

- This is a basic example, and you may need to adjust configurations based on your specific requirements.