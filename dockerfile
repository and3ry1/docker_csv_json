FROM python:3.11-slim

#creation user
RUN useradd -m appuser

# Set the working directory
WORKDIR /app
# Copy the requirements file into the container
COPY requirements.txt .
COPY convert.py .
COPY data.csv .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Run the conversion script
ENTRYPOINT ["python", "convert.py"]

#changer proprietary
RUN chown -R appuser:appuser /app

# Switch to the non-root user
USER appuser

