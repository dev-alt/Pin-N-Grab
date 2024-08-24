# Pin'n'Grab

Pin'n'Grab is a comprehensive job marketplace application designed to connect service providers with clients. It utilizes a modern tech stack including Docker for containerization, React for the frontend, Express.js for the backend, and MySQL for the database.

## Project Structure

The project is organized using Docker Compose with the following main components:

- `tradeapp`: Frontend React application
- `tradeapp-backend`: Backend Express.js application
- `mysql`: MySQL database
- `phpmyadmin`: PHP-based administration tool for MySQL

## Prerequisites

- Docker and Docker Compose
- Git

## Setup and Installation

1. Clone the repository:
   ```
   git clone https://github.com/your-username/pin-n-grab.git
   cd pin-n-grab
   ```

2. Initialize and update the submodules:
   ```
   git submodule init
   git submodule update
   ```

3. Start the application using Docker Compose:
   ```
   docker-compose up -d
   ```

4. Access the applications:
   - Frontend: http://localhost:3010
   - Backend: http://localhost:5050
   - PHPMyAdmin: http://localhost:8080

## Database

The MySQL database is initialized with a dump file located in the `mysql-dump` directory. This includes essential tables such as Users, Jobs, Categories, and more.

## Development

- Frontend code is located in the `Submodules/tradeapp` directory
- Backend code is located in the `Submodules/tradeapp-backend` directory

To make changes, modify the code in these directories and rebuild the Docker containers.

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
