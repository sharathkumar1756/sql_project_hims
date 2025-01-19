# sql_project_hims

# Hospital Management Database

## Overview
This project is a comprehensive Hospital Management System that manages patient records, doctor information, appointments, and medical reports. The database is designed using SQL, ensuring efficient data retrieval and management.

## Features
- **Patient Management**: Add, update, and view patient details.
- **Doctor Management**: Store and manage doctor information and their specializations.
- **Appointment Scheduling**: Schedule, reschedule, and cancel appointments.
- **Medical Records**: Maintain patient medical records including diagnoses, treatments, and prescriptions.

## Database Structure
The database consists of the following tables:
1. **Patients**: Stores patient information.
2. **Doctors**: Stores doctor information.
3. **Appointments**: Manages appointment details.
4. **MedicalRecords**: Keeps patient medical history.

### Table Schemas
#### Patients
| Column Name    | Data Type  | Description           |
|----------------|------------|-----------------------|
| patient_id     | INT        | Unique patient ID     |
| first_name     | VARCHAR    | Patient's first name  |
| last_name      | VARCHAR    | Patient's last name   |
| date_of_birth  | DATE       | Patient's date of birth |
| contact_number | VARCHAR    | Patient's contact number |

#### Doctors
| Column Name    | Data Type  | Description            |
|----------------|------------|------------------------|
| doctor_id      | INT        | Unique doctor ID       |
| first_name     | VARCHAR    | Doctor's first name    |
| last_name      | VARCHAR    | Doctor's last name     |
| specialization | VARCHAR    | Doctor's specialization |
| contact_number | VARCHAR    | Doctor's contact number |

#### Appointments
| Column Name    | Data Type  | Description             |
|----------------|------------|-------------------------|
| appointment_id | INT        | Unique appointment ID   |
| patient_id     | INT        | ID of the patient       |
| doctor_id      | INT        | ID of the doctor        |
| appointment_date | DATE     | Date of the appointment |
| status         | VARCHAR    | Status of the appointment |

#### MedicalRecords
| Column Name    | Data Type  | Description                |
|----------------|------------|----------------------------|
| record_id      | INT        | Unique medical record ID   |
| patient_id     | INT        | ID of the patient          |
| doctor_id      | INT        | ID of the doctor           |
| diagnosis      | TEXT       | Diagnosis details          |
| treatment      | TEXT       | Treatment provided         |
| prescription   | TEXT       | Medications prescribed     |
| record_date    | DATE       | Date of the record         |

## Getting Started
To get started with the database:
1. **Install SQL Server**: Download and install SQL Server if not already installed.
2. **Clone the Repository**:
   ```bash
   git clone https://github.com/username/repository-name.git
