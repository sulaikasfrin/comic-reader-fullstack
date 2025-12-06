-- Create Database
CREATE DATABASE IF NOT EXISTS comicreader;
USE comicreader;

-- Users Table
CREATE TABLE IF NOT EXISTS users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Comics Table
CREATE TABLE IF NOT EXISTS comics (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    image_url VARCHAR(500),
    author VARCHAR(255),
    pages JSON,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Sample Data
INSERT INTO comics (title, description, image_url, author, pages) VALUES
('Superhero Adventures', 'Epic heroes saving the world', 'https://via.placeholder.com/300x200/ffcc00/000?text=Superhero', 'John Smith', '["image1.jpg"]'),
('Mystery Tales', 'Unravel thrilling mysteries', 'https://via.placeholder.com/300x200/ffdd57/000?text=Mystery', 'Jane Doe', '["image2.webp"]'),
('Funny Comics', 'Laugh out loud stories', 'https://via.placeholder.com/300x200/ffcc00/000?text=Funny', 'Comedy Studio', '["image3.jpg"]');

-- Create Indices
CREATE INDEX idx_user_email ON users(email);
CREATE INDEX idx_comic_title ON comics(title);}
