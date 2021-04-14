In this folder there is a basic ruby application. The endpoint `/` is calling a very time costly external service.

You are asked to implement a cache system intended to avoid calling the external service for an hour (60 minutes) after the first call. On top of that you have to return the next string:

```
Hello #{user}. Cache refreshed #{minutes} minutes ago.
```

If you have time you can implement and endpoint which flushes the cache.

Use `make build` to build the project.
Use `make up` to start the containers.
Use `make shell` to initiate a shell in the app container.
Use `make restart` to restart the code of `app.rb`. It doesn't autorestart by default.

The application should be available in `http://localhost:4567`.

Hint:

- [EXPIRE command](https://redis.io/commands/expire)
- [TTL command](https://redis.io/commands/expire)
- [redis-rb](https://github.com/redis/redis-rb)