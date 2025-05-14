# Vocabulary Learning Application

A simple application to help users learn vocabulary through interactive activities.

## Quick Start

### Prerequisites
- Node.js (v14 or higher)
- Python 3.11 or higher
- npm
- Git

### Setup and Run (Windows)

1. **Clone the repository**
   ```
   git clone https://github.com/Yashini-Hettiarachchi/vocabulary.git
   cd vocabulary
   ```

2. **Run the setup script**
   ```
   .\setup.ps1
   ```
   This will install all dependencies for both frontend and backend.

3. **Run the application**
   ```
   .\run_app.ps1
   ```
   This will start both the frontend and backend servers.

4. **Access the application**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:8000

### Alternative Run Options

- **Run only the backend**
  ```
  .\run_backend.ps1
  ```

- **Run only the frontend**
  ```
  .\run_frontend.ps1
  ```

## Project Structure

```
vocabulary/
├── backend/                # FastAPI backend server
├── frontend/               # React frontend
├── package.json            # Root package.json
├── README.md               # This file
├── run_app.ps1             # Script to run both servers
├── run_backend.ps1         # Script to run backend only
├── run_frontend.ps1        # Script to run frontend only
└── setup.ps1               # Setup script
```

## API Endpoints

The backend provides the following API endpoints:

- `GET /`: Welcome message
- `GET /predict`: Predict vocabulary grade level based on time taken
- `POST /predict`: Same as above but using POST
- `POST /vocabulary-records`: Create a new vocabulary record
- `GET /vocabulary-records`: Get all vocabulary records

## Deployment

The application is configured for deployment to AWS Elastic Beanstalk. See the `application.py` file for details.
