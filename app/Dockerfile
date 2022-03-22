# Use an official Python runtime as an image
FROM python:3.6
# Port to access a container
EXPOSE 5000
# Working directory for the following COPY and CMD instructions
WORKDIR /app
COPY requirements.txt /app
RUN python -m pip install --upgrade pip
RUN pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host=files.pythonhosted.org --no-cache-dir -r requirements.txt
# Run app.py when the container launches
COPY app.py /app
CMD python app.py