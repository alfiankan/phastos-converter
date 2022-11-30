docker run \
   -d \
   -p 9000:9000 \
   -p 9090:9090 \
   --name minio \
   -v $(pwd)/minio/data:/data \
   -e "MINIO_ROOT_USER=PHASTOS" \
   -e "MINIO_ROOT_PASSWORD=PHASTOS123" \
   quay.io/minio/minio server /data --console-address ":9090"
