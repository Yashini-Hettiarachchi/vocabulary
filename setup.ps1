# Script to set up the project

Write-Host "Setting up the Vocabulary Learning Application..."

# Install root dependencies
Write-Host "Installing root dependencies..."
npm install

# Set up backend
Write-Host "Setting up backend..."
Set-Location -Path "backend"

# Create virtual environment
if (-not (Test-Path "venv")) {
    Write-Host "Creating virtual environment..."
    python -m venv venv
    
    # Activate virtual environment
    Write-Host "Activating virtual environment..."
    & .\venv\Scripts\Activate.ps1
    
    # Install dependencies
    Write-Host "Installing backend dependencies..."
    pip install -r requirements.txt
    
    # Create .env file if it doesn't exist
    if (-not (Test-Path ".env")) {
        Write-Host "Creating .env file from .env.example..."
        Copy-Item -Path ".env.example" -Destination ".env"
        Write-Host "Please update the .env file with your configuration."
    }
}

# Return to root directory
Set-Location -Path ".."

# Set up frontend
Write-Host "Setting up frontend..."
Set-Location -Path "frontend"

# Install frontend dependencies
if (-not (Test-Path "node_modules")) {
    Write-Host "Installing frontend dependencies..."
    npm install
}

# Return to root directory
Set-Location -Path ".."

Write-Host "Setup completed successfully!"
Write-Host "To run the application, use one of the following commands:"
Write-Host "- .\run_app.ps1 (to run both frontend and backend)"
Write-Host "- .\run_backend.ps1 (to run only the backend)"
Write-Host "- .\run_frontend.ps1 (to run only the frontend)"
