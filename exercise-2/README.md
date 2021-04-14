Start a rdbms-cli with:

```
make start-containers # if you don't have them initialized yet
make rdbms-cli
```

Start a redis-cli with:

```
make start-containers # if you don't have them initialized yet
make redis-cli
```

## Difference with RDBMS

What type of data storage would you use (RDBMS vs Redis/Key-Value)?:

- Message broker
- CRM
- CRUD
- Cache

## Complexity

- How long it takes to write 1000000 keys in redis in your computer?
- How long it takes to read 1000000 keys in redis in your computer?
- What's the time complexity of SET?
- What's the time complexity of KEYS?

Hint:

- Use [redis-benchmark](https://redis.io/topics/benchmarks)