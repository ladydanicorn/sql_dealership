CREATE TABLE Salesperson (
    Salesperson_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Contact_Info VARCHAR(255),
    Title VARCHAR(255)
);

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Contact_Info VARCHAR(255)
);

CREATE TABLE Car (
    Car_ID INT PRIMARY KEY,
    Model VARCHAR(255),
    Year INT,
    Serial_Number VARCHAR(255),
    Salesperson_ID INT,
    Customer_ID INT,
    FOREIGN KEY (Salesperson_ID) REFERENCES Salesperson(Salesperson_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Mechanic (
    Mechanic_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Specialization VARCHAR(255)
);

CREATE TABLE Service_Ticket (
    Service_Ticket_ID INT PRIMARY KEY,
    Car_ID INT,
    Mechanic_ID INT,
    Parts_Used VARCHAR(255),
    FOREIGN KEY (Car_ID) REFERENCES Car(Car_ID),
    FOREIGN KEY (Mechanic_ID) REFERENCES Mechanic(Mechanic_ID)
);

CREATE TABLE Invoice (
    Invoice_ID INT PRIMARY KEY,
    Salesperson_ID INT,
    Customer_ID INT,
    FOREIGN KEY (Salesperson_ID) REFERENCES Salesperson(Salesperson_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

INSERT INTO Salesperson (Salesperson_ID, Name, Contact_Info, Title) VALUES
(1, 'John Doe', 'john.doe@gmail.com', 'Sr Salesperson'),
(2, 'Jane Smith', 'jane.smith@gmail.com.com', 'Jr Salesperson');

INSERT INTO Customer (Customer_ID, Name, Contact_Info) VALUES
(1, 'Alice Johnson', 'alice.johnson@hotmail.com'),
(2, 'Bob Williams', 'bob.williams@yahoo.com');

INSERT INTO Car (Car_ID, Model, Year, Serial_Number, Salesperson_ID, Customer_ID) VALUES
(1, 'Toyota Camry', 2021, '12345', 1, 1),
(2, 'Honda Civic', 2020, '54321', 2, 2);

INSERT INTO Mechanic (Mechanic_ID, Name, Specialization) VALUES
(1, 'Mike Smith', 'Engine Repair'),
(2, 'Sarah Johnson', 'Electrical Systems');

INSERT INTO Service_Ticket (Service_Ticket_ID, Car_ID, Mechanic_ID, Parts_Used) VALUES
(1, 1, 1, 'Spark Plugs, Oil Filter'),
(2, 2, 2, 'Battery, Alternator');

INSERT INTO Invoice (Invoice_ID, Salesperson_ID, Customer_ID) VALUES
(1, 1, 1),
(2, 2, 2);


 