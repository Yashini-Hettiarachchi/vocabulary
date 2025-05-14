# Script to run both frontend and backend

# Install dependencies if needed
if (-not (Test-Path "node_modules")) {
    Write-Host "Installing root dependencies..."
    npm install
}

# Run the dev script from package.json
Write-Host "Starting both frontend and backend servers..."
npm run dev
