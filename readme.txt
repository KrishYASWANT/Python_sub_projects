This is how to make a Dockerfile 

docker build -t hls-transcoder .

docker run --rm \
  -e VIDEO_URL="https://yourbucket.s3.amazonaws.com/uploads/video.mp4" \
  -e HLS_BUCKET="your-hls-private-bucket" \
  -e HLS_FOLDER="lecture123" \
  -v ~/.aws:/root/.aws \  # for AWS credentials
  hls-transcoder


Start the project as usual 

    python manage.py runserver

Run the redis on docker 

Start the celery which will scan your files with command

    celery -A check_malware worker --loglevel=info --pool=solo

which will take some time to scan so don't worry if scan shows False.