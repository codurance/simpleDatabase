CREATE TABLE public.example_user (
    id SERIAL PRIMARY KEY, 
    name varchar(100) NOT NULL, 
    age int NOT NULL,
    dateofbirth DATE NOT NULL
);

INSERT INTO public.example_user(name, age, dateofbirth)
VALUES ('John Doe',26,'1970-12-31');