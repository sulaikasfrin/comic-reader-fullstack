# Comic Reader Full-Stack Application

## 📖 Project Overview

A complete full-stack Comic Reader application featuring a React frontend, Spring Boot backend, and MySQL database. Users can browse, search, and read comics with a beautiful cosmic-themed interface.

## ✨ Features

- **User Authentication**: Secure login/signup system
- **Comic Gallery**: Browse and explore comics
- **Responsive Design**: Works on desktop and mobile devices
- **Cosmic Theme**: Beautiful starry background with animations
- **Comic Management**: Add, edit, and delete comics (admin features)
- **MySQL Database**: Robust data persistence

## 🏗 Project Structure

```
comic-reader-fullstack/
├── frontend/                 # React application
│   ├── package.json
│   ├── public/
│   ├── src/
│   │   ├── components/      # React components
│   │   ├── services/        # API services
│   │   ├── App.js
│   │   └── App.css
│   └── README.md
│
├── backend/                  # Spring Boot application
│   ├── pom.xml
│   ├── src/main/java/com/comicreader/
│   │   ├── ComicReaderApplication.java
│   │   ├── controller/      # REST API controllers
│   │   ├── entity/          # JPA entities
│   │   ├── repository/      # Data repositories
│   │   └── service/         # Business logic
│   ├── src/main/resources/
│   │   └── application.properties
│   └── README.md
│
├── database/                 # Database files
│   └── schema.sql           # Database schema and sample data
│
└── README.md                # This file
```

## 🚀 Getting Started

### Prerequisites

- **Java**: JDK 17 or higher
- **Node.js**: v16 or higher
- **MySQL**: v5.7 or higher
- **Maven**: v3.6+
- **npm**: v8+

### 1. Database Setup

1. Open MySQL Workbench
2. Execute the SQL script from `database/schema.sql`
3. Verify tables are created: `users` and `comics`

```bash
mysql -u root -p < database/schema.sql
```

### 2. Backend Setup (Spring Boot)

```bash
cd backend

# Update application.properties with your MySQL credentials
# File: src/main/resources/application.properties
# spring.datasource.username=root
# spring.datasource.password=yourpassword

# Build and run
mvn clean install
mvn spring-boot:run

# Backend runs on http://localhost:8080
```

### 3. Frontend Setup (React)

```bash
cd frontend

# Install dependencies
npm install

# Start the development server
npm start

# Frontend runs on http://localhost:3000
```

## 📝 Default Test Credentials

- **Email**: user@example.com
- **Password**: 123456

## 🔌 API Endpoints

### Authentication
- `POST /api/login` - User login
- `POST /api/signup` - User registration

### Comics
- `GET /api/comics` - Get all comics
- `GET /api/comics/:id` - Get comic by ID
- `POST /api/comics` - Create new comic
- `PUT /api/comics/:id` - Update comic
- `DELETE /api/comics/:id` - Delete comic

## 🛠 Technologies Used

### Frontend
- React 18
- Axios (HTTP client)
- CSS3 with animations
- Responsive Design

### Backend
- Spring Boot 3.2
- Spring Data JPA
- Spring Security
- MySQL Connector

### Database
- MySQL 5.7+
- Tables: users, comics

## 📦 Project Features

### User Management
- Secure authentication with password encryption
- User profile management
- Session handling

### Comic Management
- Create, read, update, delete operations
- Comic search and filtering
- Image URL storage
- JSON-based page management

### Security
- CORS configuration
- Password encryption
- API authentication

## 🔄 How to Run Everything

### Terminal 1 - Database
```bash
# Start MySQL service
mysql.server start  # On Mac
# or use MySQL Workbench GUI
```

### Terminal 2 - Backend
```bash
cd backend
mvn spring-boot:run
# Runs on http://localhost:8080
```

### Terminal 3 - Frontend
```bash
cd frontend
npm start
# Runs on http://localhost:3000
```

## 📚 Project Setup from Scratch

### Option 1: Using Existing Code
1. Clone this repository
2. Follow the "Getting Started" section above

### Option 2: Creating from Scratch

**Backend:**
```bash
mvn archetype:generate -DgroupId=com.comicreader -DartifactId=comic-reader
cd comic-reader
# Add Spring Boot dependencies in pom.xml
mvn spring-boot:run
```

**Frontend:**
```bash
npx create-react-app comic-reader-frontend
cd comic-reader-frontend
npm install axios
npm start
```

## 🐛 Troubleshooting

### Port Already in Use
- Backend: Change port in `application.properties`: `server.port=8081`
- Frontend: Set PORT=3001 before npm start

### Database Connection Error
- Ensure MySQL is running
- Check credentials in `application.properties`
- Verify schema.sql was executed

### CORS Error
- Backend CORS is configured in `ComicReaderApplication.java`
- Verify frontend URL is in allowed origins

## 📄 License

MIT License - feel free to use this project for learning and development.

## 👤 Author

Developed by sulaikasfrin
Email: sulaikasfrins.eai24@rathinam.in

## 🎯 Next Steps

1. Customize the UI with your own designs
2. Add more features (ratings, reviews, favorites)
3. Implement advanced search and filters
4. Add user profile pages
5. Deploy to cloud (AWS, Azure, Heroku)

---

**Happy Coding!** 🚀
