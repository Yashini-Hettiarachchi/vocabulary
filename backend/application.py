# This file is used by Elastic Beanstalk to run the application
import os
import sys

# Add the current directory to the path so that imports work
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# Import the FastAPI app and rename it to 'application' for AWS Elastic Beanstalk
from main import app as application

# This is to ensure the application variable is defined as required by AWS Elastic Beanstalk
if __name__ == "__main__":
    # For local testing
    import uvicorn
    uvicorn.run(application, host="0.0.0.0", port=8000)
