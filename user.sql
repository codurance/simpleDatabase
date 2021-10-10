CREATE TABLE public.example_user (
    id SERIAL PRIMARY KEY, 
    name varchar(100) NOT NULL, 
    age int NOT NULL,
    dateofbirth DATE NOT NULL
);

CREATE TABLE public.product (
    id SERIAL PRIMARY KEY,
    userId int REFERENCES example_user (id),
    description varchar(100) NOT NULL
);

INSERT INTO public.example_user(name, age, dateofbirth) VALUES ('John Doe',26,'1970-12-31');
INSERT INTO public.example_user(name, age, dateofbirth) VALUES ('Jane Smith',45,'1966-12-31');
INSERT INTO public.product (userId,description) VALUES (2,'Plasma screen tv');