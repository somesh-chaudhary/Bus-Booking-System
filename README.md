
<p align="center">
  <img src="assets/banner.png" alt="Bus Booking System Banner">
</p>

<h1 align="center">Bus Booking System</h1>

<p align="center">
  A Full-Stack Bus Reservation Platform
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Frontend-React%2018-blue?style=for-the-badge&logo=react" />
  <img src="https://img.shields.io/badge/Backend-Spring%20Boot%203-green?style=for-the-badge&logo=springboot" />
  <img src="https://img.shields.io/badge/Database-PostgreSQL%20%7C%20H2-blue?style=for-the-badge&logo=postgresql" />
  <img src="https://img.shields.io/badge/Security-JWT-orange?style=for-the-badge" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" />
</p>

A full-stack bus reservation application built using **React 18, Spring Boot 3, and PostgreSQL/H2**. The platform provides user authentication, route-based bus search, seat availability, ticket booking, passenger management, and booking history through a responsive web interface.

---

## 🔍 Overview

The **Bus Booking System** provides an end-to-end online ticket reservation experience. Users can create accounts, log in securely, search for buses based on their travel routes, reserve seats for multiple passengers, and manage their bookings.

The application follows a layered backend architecture and uses RESTful APIs to connect the React frontend with the Spring Boot backend.

## ⭐ Key Features

### 👨‍💻 User Authentication
- User registration and login
- JWT-based authentication
- Secure API access using Spring Security
- Stateless session management

### 🚌 Bus Search and Reservation
- Search buses using origin and destination
- View available bus details
- Check seat availability
- Book tickets for multiple passengers
- Prevent conflicting seat reservations

### 👤 User Profile and Booking Management
- View and manage personal profile
- View previous booking history
- Manage passenger information
- Track booking details

### 💾 Database Management
- H2 in-memory database for local development
- PostgreSQL support for persistent database deployment
- Data management using Spring Data JPA and Hibernate

---

## 🧠 Technology Stack

| Layer | Technologies |
|---|---|
| Frontend | React 18, JavaScript, Bootstrap 5 |
| Routing | React Router v7 |
| HTTP Client | Axios |
| Backend | Java, Spring Boot 3 |
| Security | Spring Security 6, JWT, JJWT |
| ORM | Spring Data JPA, Hibernate |
| Database | H2, PostgreSQL |
| Build Tool | Maven |

---

## 🏗 System Architecture

The application follows a three-layer architecture consisting of a React frontend, Spring Boot backend, and relational database.

```text
       ┌────────────────────────────┐
       │       React Frontend       │
       │                            │
       │   React 18 + Bootstrap     │
       └──────────────┬─────────────┘
                      │
                      │ REST APIs
                      │ JSON + JWT
                      ▼
       ┌────────────────────────────┐
       │     Spring Boot Backend    │
       │                            │
       │ Controllers                │
       │ Services                   │
       │ Repositories               │
       │ Entities                   │
       │ Security                   │
       └──────────────┬─────────────┘
                      │
                      │ JPA / Hibernate
                      ▼
       ┌────────────────────────────┐
       │         Database           │
       │                            │
       │       H2 / PostgreSQL      │
       └────────────────────────────┘
```

---

## 📁 Project Structure

```text
Bus-Booking-System/
│
├── assets/
│   └── banner.png
│
├── frontend/
│   ├── public/
│   └── src/
│       ├── components/
│       │   ├── Booking.js
│       │   ├── BusList.js
│       │   ├── Login.js
│       │   ├── Navbar.js
│       │   ├── Profile.js
│       │   └── Register.js
│       ├── App.js
│       └── index.js
│
├── screenshots/
│
├── src/
│   └── main/
│       ├── java/com/busbooking/bus_booking_system/
│       │   ├── config/
│       │   ├── controller/
│       │   ├── entity/
│       │   ├── repository/
│       │   ├── security/
│       │   └── service/
│       │
│       └── resources/
│           └── application.properties
│
├── Dockerfile
├── pom.xml
├── mvnw
├── mvnw.cmd
├── run-all.bat
├── run-backend.bat
├── run-frontend.bat
└── README.md
```

---

## 🖥 Application Screenshots

### Home Page
![](screenshots/homepage.png)

### User Login
![](screenshots/login%20success%20page.png)

### User Registration
![](screenshots/registration%20success.png)

### Bus Search
![](screenshots/search%20buses%20page.png)

### Ticket Booking
![](screenshots/ticket%20booking%20page.png)

### Booking Confirmation
![](screenshots/booking%20success%20page.png)

### User Profile
![](screenshots/user%20profile%20page.png)

---

## ⚙️ Installation and Local Setup

### Prerequisites

Make sure the following tools are installed:

- Java 17 or higher
- Node.js 18 or higher
- npm
- Maven (or use the included Maven Wrapper)

### 1. Clone the Repository

```bash
git clone https://github.com/somesh-chaudhary/Bus-Booking-System.git

cd Bus-Booking-System
```

### 2. Run Backend (Spring Boot)

Build the application:

```bash
mvn clean package -DskipTests
```

Run the generated JAR:

```bash
java -jar target/bus-booking-system-0.0.1-SNAPSHOT.jar
```

Backend URL:

**http://localhost:8082**

### 3. Run Frontend (React)

Open another terminal:

```bash
cd frontend
npm install
npm start
```

Frontend URL:

**http://localhost:3000**

The React frontend communicates with the Spring Boot backend through REST APIs.

---

## 🛣 REST API Documentation

| Method | Endpoint | Description | Authentication |
|---|---|---|---|
| POST | `/api/auth/register` | Register a new user | Not required |
| POST | `/api/auth/login` | Authenticate and receive JWT | Not required |
| GET | `/api/buses` | Retrieve available buses | JWT required |
| GET | `/api/buses?from=...&to=...` | Search buses by route | JWT required |
| GET | `/api/buses/{id}` | Retrieve bus details | JWT required |
| POST | `/api/bookings` | Create a multi-passenger booking | JWT required |
| GET | `/api/bookings/history` | Retrieve booking history | JWT required |
| GET | `/api/users/profile` | Retrieve user profile | JWT required |
| PUT | `/api/users/profile` | Update user profile | JWT required |

---

## 🧪 API Testing

The following screenshots demonstrate API testing through Postman.

![](screenshots/api-login-postman.png)

![](screenshots/api-register-postman.png)

![](screenshots/api-buses-postman.png)

![](screenshots/api-busById-postman.png)

![](screenshots/api-bookings-postman.png)

---

## 🗄 Database Screenshots

![](screenshots/database%201.png)

![](screenshots/database%202.png)

![](screenshots/database%203.png)

![](screenshots/database%204.png)

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

<p align="center">
  Built with React, Spring Boot and Java.
</p>
