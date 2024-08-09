CREATE TABLE employee (
    employee_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    title VARCHAR(100),
    reports_to INTEGER,
    birthdate DATE,
    hire_date DATE,
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20),
    phone BIGINT,
    fax BIGINT,
    email VARCHAR(100)
);

CREATE TABLE customer (
    customer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    company VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20),
    phone BIGINT,
    fax BIGINT,
    email VARCHAR(100),
    support_rep_id INTEGER,
    FOREIGN KEY (support_rep_id) REFERENCES employee(employee_id)
);

CREATE TABLE invoice (
    invoice_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    customer_id INTEGER,
    invoice_date DATE,
    billing_address VARCHAR(255),
    billing_city VARCHAR(100),
    billing_state VARCHAR(100),
    billing_country VARCHAR(100),
    billing_postal_code VARCHAR(20),
    total DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE invoice_line (
    invoice_line_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    invoice_id INTEGER,
    track_id INTEGER,
    unit_price DECIMAL(10, 2),
    quantity INTEGER,
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id),
    FOREIGN KEY (track_id) REFERENCES track(track_id)
);

CREATE TABLE playlist (
    playlist_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE playlist_track (
    playlist_id INTEGER,
    track_id INTEGER,
    PRIMARY KEY (playlist_id, track_id),
    FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id),
    FOREIGN KEY (track_id) REFERENCES track(track_id)
);

CREATE TABLE track (
    track_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200),
    album_id INTEGER,
    media_type_id INTEGER,
    genre_id INTEGER,
    composer VARCHAR(100),
    milliseconds INTEGER,
    bytes INTEGER,
    unit_price DECIMAL(10, 2),
    FOREIGN KEY (album_id) REFERENCES album(album_id),
    FOREIGN KEY (media_type_id) REFERENCES media_type(media_type_id),
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

CREATE TABLE media_type (
    media_type_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE genre (
    genre_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE artist (
    artist_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE album (
    album_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200),
    artist_id INTEGER,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);
