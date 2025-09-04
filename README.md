# Smart Attendance Management System 

A smart, automated attendance system using face recognition technology, integrated with a real-time webcam interface and Excel-based attendance logging.

---

## Project Overview

The **Smart Attendance Management System** is a Python and web-based application that captures student attendance using facial recognition. It eliminates manual attendance-taking by automating recognition and record-keeping.

---

## Features

-  **Real-time Webcam Face Recognition**
-  **Accurate Student Identification**
-  **Excel Integration for Attendance Records**

---

##  Tech Stack

| Frontend       | Backend          | Database / Storage     |
|----------------|------------------|-------------------------|
| HTML, CSS, JS  | Python (OpenCV)  | Excel (.xlsx via `openpyxl` or `pandas`) |

---

## How It Works

1. The system opens a webcam interface via the browser.
2. Captured images are sent to a Python backend for face detection and matching.
3. If matched, the attendance is marked in an Excel file with date and time.
4. The UI displays attendance confirmation or error messages.

---

##  Project Structure

Smart-Attendance-System


├── attendance_records.xlsx # Attendance logs

├── face_recognition.py # Python logic for face detection

└── README.md # Project documentation


---

##  Prerequisites

- Python 3.x
- OpenCV
- pandas / openpyxl
- A modern browser (for webcam access)



