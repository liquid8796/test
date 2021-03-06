FROM minio/minio:RELEASE.2022-06-25T15-50-16Z.fips

ENV MINIO_ROOT_USER=$ACCESS_KEY
ENV MINIO_ROOT_PASSWORD=$SECRET_KEY

EXPOSE $PORT
EXPOSE 9001

ENTRYPOINT ["minio"]
CMD ["server","/data","--address",":$PORT"]
