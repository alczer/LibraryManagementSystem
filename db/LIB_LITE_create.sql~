-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-05-21 18:27:06.229

-- tables
-- Table: author
CREATE TABLE author (
    id_author integer NOT NULL CONSTRAINT author_pk PRIMARY KEY,
    name varchar(255) NOT NULL,
    date_born date NOT NULL
);

-- Table: category
CREATE TABLE category (
    id_category integer NOT NULL CONSTRAINT category_pk PRIMARY KEY,
    name varchar(255) NOT NULL
);

-- Table: item
CREATE TABLE item (
    id_item integer NOT NULL CONSTRAINT item_pk PRIMARY KEY,
    id_publisher integer NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(1000) NOT NULL,
    isbn integer NOT NULL,
    language varchar(255) NOT NULL,
    state varchar(12) NOT NULL,
    date_pub date NOT NULL,
    CONSTRAINT item_publisher FOREIGN KEY (id_publisher)
    REFERENCES publisher (id_publisher)
);

-- Table: item_author
CREATE TABLE item_author (
    id_item_author integer NOT NULL CONSTRAINT item_author_pk PRIMARY KEY,
    id_item integer NOT NULL,
    id_author integer NOT NULL,
    CONSTRAINT item_author_item FOREIGN KEY (id_item)
    REFERENCES item (id_item),
    CONSTRAINT item_author_author FOREIGN KEY (id_author)
    REFERENCES author (id_author)
);

-- Table: item_category
CREATE TABLE item_category (
    id_item_category integer NOT NULL CONSTRAINT item_category_pk PRIMARY KEY,
    id_item integer NOT NULL,
    id_category integer NOT NULL,
    CONSTRAINT item_category_item FOREIGN KEY (id_item)
    REFERENCES item (id_item),
    CONSTRAINT item_category_category FOREIGN KEY (id_category)
    REFERENCES category (id_category)
);

-- Table: loan
CREATE TABLE loan (
    id_loan integer NOT NULL CONSTRAINT loan_pk PRIMARY KEY,
    id_item integer NOT NULL,
    id_user integer NOT NULL,
    date_in date NOT NULL,
    date_out date NOT NULL,
    id_librarian integer NOT NULL,
    CONSTRAINT client_purchase FOREIGN KEY (id_user)
    REFERENCES user (id_user),
    CONSTRAINT loan_item FOREIGN KEY (id_item)
    REFERENCES item (id_item),
    CONSTRAINT loan_user FOREIGN KEY (id_librarian)
    REFERENCES user (id_user)
);

-- Table: penalties
CREATE TABLE penalties (
    id_penalty integer NOT NULL CONSTRAINT penalties_pk PRIMARY KEY,
    date date NOT NULL,
    value integer NOT NULL,
    id_client integer NOT NULL,
    id_loan integer NOT NULL,
    CONSTRAINT penalties_client FOREIGN KEY (id_client)
    REFERENCES user (id_user),
    CONSTRAINT penalties_loan FOREIGN KEY (id_loan)
    REFERENCES loan (id_loan)
);

-- Table: publisher
CREATE TABLE publisher (
    id_publisher integer NOT NULL CONSTRAINT publisher_pk PRIMARY KEY,
    name varchar(255) NOT NULL
);

-- Table: user
CREATE TABLE user (
    id_user integer NOT NULL CONSTRAINT user_pk PRIMARY KEY,
    name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    date_joined date NOT NULL,
    date_active_from date NOT NULL,
    date_active_to date NOT NULL,
    password varchar(255) NOT NULL,
    type varchar(12) NOT NULL
);

-- End of file.

