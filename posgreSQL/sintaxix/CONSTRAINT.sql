## tipos de cosntraint (reglas)

NOT NULL
UNIQUE
PRIMARY KEY
FOREIGN KEY 
CHECK
DEFAULT
CREATE INDEX 


ALTER TABLE invoices ADD PRIMARY KEY (id)
ALTER TABLE invoices ADD CONSTRAINT invoices_pk PRIMARY KEY (id);

ALTER TABLE invoices ADD CONSTRAINT users user_email_notnull CHECK(
    NOT (
        (username IS NULL OR username ='')
    )
    AND
    (
        (email IS NULL OR email = '')
    )
)

# llave compuesta unica
CREATE UNIQUE CONSTRAINT users_name
ON users(username, email);

ALTER TABLE users
ADD CONSTRAINT unique_username_email
UNIQUE USING INDEX users_name