# Redis Training

Content of the redis training.

The Workshop take around an hour and a half. It is intended for people with zero knowledge of Redis.

Prior knowledge:

- Basic RMDBS (yes, SQL)
- Shell fluency
- Docker familiarity for eventual troubleshooting

Tech requeriments:

- Docker
- Some unix? userland utilities
- Basic Ruby (for the exercise-3)

Hopefully, you will end up knowing at the end of the workshop:

- What is redis
- What is redis suited for (compared to RMDBS)
- What is redis not suited for (compared to RMDBS)
- What are the basic redis datatypes and operations
- What is redis-cli
- What is time complexity and how it applies in redis
- What is redis-benchmark
- Why you should never use `KEYS *` in production
- How to implement a basic cache system with redis

What is redis?:

- In memory data structure store (database)
- Schemaless
- "Weakly typed" ?
- In ANSI C
- Single threaded
- Think of it as the typical structures persisted (strings, arrays and hashes)
- Very fast
- Commands in the form of: COMMAND key_name argument1 [...] i.e: SET hola mundo, sets key hola with value mundo

Content:

- Part 1: Basic types and interaction
- Part 2: Relational vs Key-Value and complexity
- Part 3: Practical case

To do the execises:

`make start-containers` to start the Redis instance and the MySQL instance
`make stop-containers` to stop the Redis instance and the MySQL instance
`make redis-cli` to start a redis-cli
`make shell-cli` to start a shell in the redis container
`make rdbms-cli` to start a cli of MySQL

Links:

- [Redis Official Documentation](https://redis.io/documentation)
- [Redis Data types intro](https://redis.io/topics/data-types-intro)
- [Redis CLI](https://redis.io/topics/rediscli)
- [Redis benchmarks](https://redis.io/topics/benchmarks)