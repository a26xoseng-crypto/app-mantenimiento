CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS access_logs (
    id SERIAL PRIMARY KEY,
    ip_address VARCHAR(50),
    request_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status_code INT
);

INSERT INTO users (username, email) VALUES 
('usuario_demo', 'demo@curso.local'),
('admin_test', 'admin@curso.local');

INSERT INTO access_logs (ip_address, status_code) VALUES 
('192.168.1.50', 200),
('10.0.0.15', 404);
