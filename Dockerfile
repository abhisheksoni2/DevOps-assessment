# Stage 1 : Build
FROM python:3.9 as build

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

RUN echo "Installing dependencies..."

# Install the project dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN sh -c 'ls -l /app'

# Stage 2 : Runtime

FROM python:3.9-slim as runtime

WORKDIR /app

COPY --from=build /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.11/site-packages

COPY --from=build /app .

RUN sh -c 'ls -l /app'

EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]
