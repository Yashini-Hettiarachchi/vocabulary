# Script to run the frontend server

# Navigate to the frontend directory
Set-Location -Path "frontend"

# Install dependencies if node_modules doesn't exist
if (-not (Test-Path "node_modules")) {
    Write-Host "Installing dependencies..."
    npm install
}

# Run the frontend server
Write-Host "Starting the frontend server..."
npm start

# Return to the original directory
Set-Location -Path ".."
