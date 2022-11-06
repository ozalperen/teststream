#Each instruction in this file creates a new layer
#Here we are getting our node as Base image
#Each instruction in this file creates a new layer
#Here we are getting our node as Base image
FROM alpine:3
RUN apk add  --no-cache ffmpeg
WORKDIR /app
COPY video.mp4 /app/video.mp4
CMD ["ffmpeg", "-re", "-stream_loop", "-1", "-i", "video.mp4", "-tune", "zerolatency", "-preset", "ultrafast", "-f", "flv", "rtmp://stream.ceremeet.com/live/cerebrumlogo"]