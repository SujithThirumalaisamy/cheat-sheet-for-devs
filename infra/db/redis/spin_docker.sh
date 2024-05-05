docker run -d \
    --name redis-local \
    -p 6379:6379 \
    -e REDIS_PORT=6379 \
    # -v /path/to/local/data:/root/redis \
    # -v /path/to/local/redis.conf:/usr/local/etc/redis/redis.conf \
    # -e REDIS_PASSWORD=my-password \
    # -e REDIS_DATABASES=16 \
    redis:latest
