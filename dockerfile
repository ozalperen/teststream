#Each instruction in this file creates a new layer
#Here we are getting our node as Base image
#Each instruction in this file creates a new layer
#Here we are getting our node as Base image
FROM alpine:3
RUN apk add  --no-cache ffmpeg
WORKDIR /app
COPY video.mp4 /app/video.mp4
CMD ["ffmpeg", "-re", "-i", "video.mp4", "-vf", "scale=1280:960", "-vcodec", "libx264", "-profile:v", "baseline", "-pix_fmt", "yuv420p", "-f", "flv", "rtmp://stream.ceremeet.com/live/cerebrumlogo"]
