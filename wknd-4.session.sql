CREATE TABLE "Employees" (
  "employee_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "job_title" VARCHAR(50),
  PRIMARY KEY ("employee_id")
);

CREATE TABLE "Invoice" (
  "invoice_id" SERIAL,
  "employee_id" INTEGER,
  "customer_id" INTEGER,
  "car_id" INTEGER,
  PRIMARY KEY ("invoice_id"),
  CONSTRAINT "FK_Invoice.employee_id"
    FOREIGN KEY ("employee_id")
      REFERENCES "Employees"("employee_id")
);

CREATE INDEX "fk" ON  "Invoice" ("employee_id", "customer_id", "car_id");

CREATE TABLE "ServiceTicket" (
  "service_ticket_id" SERIAL,
  "employee_id" INTEGER,
  "customer_id" INTEGER,
  "car_id" INTEGER,
  "service_rendered" VARCHAR(100),
  PRIMARY KEY ("service_ticket_id")
);

CREATE INDEX "fk" ON  "ServiceTicket" ("employee_id", "customer_id", "car_id");

CREATE TABLE "Car" (
  "car_id" SERIAL,
  "make" VARCHAR(25),
  "model" VARCHAR(25),
  "isNew" BOOLEAN,
  PRIMARY KEY ("car_id")
);

CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "phone" VARCHAR(20),
  "email" VARCHAR(75),
  PRIMARY KEY ("customer_id")
);

INSERT INTO "Customer" (
  "customer_id",
  "first_name",
  "last_name",
  "phone",
  "email"
)VALUES(
    1,
    'ian',
    'mcquillan',
    555-555-5555,
    'im@me.com'
);
INSERT INTO "Customer" (
  "customer_id",
  "first_name",
  "last_name",
  "phone",
  "email"
)VALUES(
    2,
    'sia',
    'mcquillan',
    555-555-55555,
    'sm@notme.com'
);

INSERT INTO "Employees" (
  "employee_id",
  "first_name",
  "last_name",
  "job_title"
)VALUES(
    1,
    'ian',
    'mcquillan',
    'salesperson'
);
INSERT INTO "Employees" (
  "employee_id",
  "first_name",
  "last_name",
  "job_title"
)VALUES(
    2,
    'sia',
    'mcquillan',
    'mechanic'
);

INSERT INTO "Car" (
  "car_id",
  "make",
  "model"
)VALUES(
    1,
    'Nissan',
    'Rouge'
);
INSERT INTO "Car" (
  "car_id",
  "make",
  "model"
)VALUES(
    2,
    'Toyota',
    'Camry'
);

INSERT INTO "Invoice" (
  "invoice_id",
  "employee_id",
  "customer_id",
  "car_id"
)VALUES(
    1,
    1,
    1,
    1
);
INSERT INTO "Invoice" (
  "invoice_id",
  "employee_id",
  "customer_id",
  "car_id"
)VALUES(
    2,
    2,
    2,
    2
);

INSERT INTO "ServiceTicket" (
  "service_ticket_id",
  "employee_id",
  "customer_id",
  "car_id",
  "service_rendered"
)VALUES(
    1,
    1,
    1,
    1,
    'oil change'
);
INSERT INTO "ServiceTicket" (
  "service_ticket_id",
  "employee_id",
  "customer_id",
  "car_id",
  "service_rendered"
)VALUES(
    2,
    2,
    2,
    2,
    'tire rotation'
);