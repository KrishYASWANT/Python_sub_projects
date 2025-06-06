This is how to make a Dockerfile 

docker build -t hls-transcoder .

docker run --rm \
  -e VIDEO_URL="https://yourbucket.s3.amazonaws.com/uploads/video.mp4" \
  -e HLS_BUCKET="your-hls-private-bucket" \
  -e HLS_FOLDER="lecture123" \
  -v ~/.aws:/root/.aws \  # for AWS credentials
  hls-transcoder
