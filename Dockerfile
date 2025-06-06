# Base image with FFmpeg
FROM jrottenberg/ffmpeg:4.4-alpine

# Add Python if you plan to use boto3 to upload to S3 directly from the container
RUN apk add --no-cache python3 py3-pip

# Optional: install boto3 if needed inside this container
RUN pip3 install boto3

# Create working directory
WORKDIR /app

# Copy transcoding script (we'll write this next)
COPY transcode.py .

# Entry point
CMD ["python3", "transcode.py"]
