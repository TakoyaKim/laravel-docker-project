# Laravel Dockerized Project

A fully containerized Laravel application with PHP 8.3, MySQL, and Nginx using Docker Compose.

## 🚀 Features

- **Laravel 12.21.0** with PHP 8.3
- **Docker Compose** for easy development setup
- **Nginx** web server configuration
- **MySQL 8.0** database
- **Composer** for dependency management
- **Hot reload** development environment

## 📋 Prerequisites

- Docker Desktop installed
- Docker Compose v2+
- Git

## 🛠️ Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/TakoyaKim/laravel-docker-project.git
   cd laravel-docker-project
   ```

2. **Have a look on the Makefile I made**
      - A Makefile is a text file containing instructions used by the make utility to automate the process of building software projects, especially those with numerous source files and dependencies.

3. **Set up environment**
   ```bash
   cp .env.example .env
   # Edit .env file with your database credentials
   # I have provided an example
   ```

4. **Install dependencies**
   ```bash
   make run
   ```
   

5. **Build and start containers**
   ```bash
   make up
   ```
5. **Build and start artisan container**
   ```bash
   make art
   ```

7. **Access the application**
   - Visit: http://localhost:8000

## 🏗️ Architecture

```
├── dockerfiles/            # Custom Dockerfiles
│   ├── php.dockerfile      # PHP-FPM configuration
│   ├── composer.dockerfile # Composer container
│   └── nginx.dockerfile    # nginx container
├── nginx/                  # Nginx configuration
├── src/                    # Laravel application
├── env/                    # Environment files
├── docker-compose.yml      # Container orchestration
├── Makefile                # Build automation scripts
└── README.md               # Project Documentation
```

## 🐳 Docker Services

- **server**: Nginx (Port 8000)
- **php**: PHP 8.3-FPM with extensions
- **mysql**: MySQL 8.0 with persistent storage
- **composer**: Composer for dependency management
- **artisan**: Laravel Artisan CLI commands

## 💻 Development Commands

```bash
# Start all services
docker-compose up -d

# Stop all services
docker-compose down

# View logs
docker-compose logs -f

# Run Artisan commands
docker-compose exec php php artisan [command]

# Access database
docker-compose exec mysql mysql -u root -p

# Install Composer packages
docker-compose run --rm composer require [package]

# Run tests
docker-compose exec php php artisan test
```

## 🔧 Configuration

### Environment Variables
Copy `.env.example` to `.env` and configure:

```env
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=homestead
DB_USERNAME=root
DB_PASSWORD=yourpassword
```

### Database Setup
The MySQL container uses environment variables from `env/mysql.env`:

```env
MYSQL_ROOT_PASSWORD=yourpassword
MYSQL_DATABASE=homestead
```

## 📦 Tech Stack

- **Backend**: Laravel 12.21.0, PHP 8.3
- **Database**: MySQL 8.0
- **Web Server**: Nginx 1.25
- **Containerization**: Docker & Docker Compose
- **Dependency Management**: Composer


## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 📞 Contact

[Kim Tangonan](www.linkedin.com/in/kim-tangonan-1a1305234) - kimtangonan2001@gmail.com

Project Link: [laravel-docker-project](https://github.com/TakoyaKim/laravel-docker-project)

---

⭐ If you found this project helpful, please give it a star!