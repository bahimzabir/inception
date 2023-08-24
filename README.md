# Inception
# Docker System Administration Project

This project is a System Administration exercise focused on utilizing Docker to create and manage a small infrastructure of different services. The project aims to enhance your knowledge of system administration, virtualization, and Docker.

## Project Summary

The project involves setting up a virtualized infrastructure with various Docker containers, each running a specific service. The key components of the project include:

- **NGINX Container**: A Docker container running NGINX with TLSv1.2 or TLSv1.3.
- **WordPress + php-fpm Container**: A container with WordPress and php-fpm installed and configured.
- **MariaDB Container**: A container with MariaDB for the WordPress database.
- **Volume Setup**: Two volumes for the WordPress database and website files.
- **Docker Network**: A network to establish connections between containers.
- **Restart on Crash**: Containers automatically restart in case of a crash.
- **WordPress Database Users**: Creation of two users, one of them being the administrator.
- **Custom Domain**: Configuration of a custom domain name (login.42.fr) pointing to the local IP address.

Additionally, the project includes the following tasks:

- Setting up Redis cache for the WordPress website.
- Setting up an FTP server container pointing to the volume of your WordPress website.
- Creating a simple static website (excluding PHP).
- Setting up Adminer for database management.
- Setting up an additional service of your choice, justifying your choice for the defense.

## Getting Started

1. **Clone the Repository**: `git clone https://github.com/bahimzabir/inception`
2. **Build Docker Images**: Run `make build` to build the required Docker images.
3. **Start Services**: Run `make up` to start the Docker containers.
4. **Access Services**: Open your web browser and navigate to the configured domain names and ports for each service.

## Project Structure

- `docker-compose.yml`: Defines the Docker services and their configurations.
- `Makefile`: Builds Docker images, starts services, and manages the project.
- `Dockerfiles/`: Contains Dockerfiles for each service.
- `wordpress/`: Contains WordPress website files.
- `database/`: Contains the MariaDB database files.
- **Redis Cache**: Redis cache is set up to manage the WordPress website cache efficiently.
- **Static Website**: A simple static website is created for demonstration purposes.
- **Adminer**: Adminer is configured for easy database management.

  
