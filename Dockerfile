
# Use a lightweight Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy all files from the project directory to /app in the container
COPY . .

# Install dependencies from requirements.txt (if using Python)
RUN pip install -r requirements.txt

# Expose the port your API runs on
EXPOSE 5000

# Run the API
CMD ["python", "app.py"]
