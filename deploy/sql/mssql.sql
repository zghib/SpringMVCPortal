create table APP_USER (
   id int IDENTITY(1,1) NOT NULL,
   sso_id VARCHAR(100) NOT NULL,
   first_name VARCHAR(100) NOT NULL,
   last_name  VARCHAR(30) NOT NULL,
   email VARCHAR(30) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE (sso_id)
);


create table USER_DOCUMENT(
   id int IDENTITY(1,1) NOT NULL,
   user_id INT NOT NULL,
   name  VARCHAR(100) NOT NULL,
   description VARCHAR(255) ,
   type VARCHAR(100) NOT NULL,
   content Image NOT NULL,
   PRIMARY KEY (id),
   CONSTRAINT document_user FOREIGN KEY (user_id) REFERENCES APP_USER (id) ON UPDATE CASCADE ON DELETE CASCADE
);