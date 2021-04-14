Start a redis-cli with:

```
make start-containers # if you don't have them initialized yet
make redis-cli
```

Store and retrieve the next information in redis selecting the appropiate datatype:

1. The current year (keep it simple, 2021) in a key called `year`

2. The name of the last 4 spanish presidents by mandate ordered from old to recent under the key `presidents`. Mandates:
    - Rariano Majoy
    - Rariano Majoy
    - Perro Sanchez
    - Perro Sanchez

3. The rollouts active in production under the key `rollouts`. Rollouts active in production:
    - PLATOP-1_fx_payouts_in_cash_management
    - PLATOP-2_disable_pt_domain
    - PLATOP-3_disable_pt_domain

4. Name and ages of a team under the key `team_ages`:

    - Jesus, 36 years old
    - Janis, 27 years old
    - Jesulin, 47 years old

Hints:

- [SADD command](https://redis.io/commands/sadd)
- [SMEMBERS command](https://redis.io/commands/smembers)
- [SET command](https://redis.io/commands/set)
- [GET command](https://redis.io/commands/get)
- [LPUSH command](https://redis.io/commands/lpush)
- [RPUSH command](https://redis.io/commands/rpush)
- [LRANGE command](https://redis.io/commands/rpush)
- [HSET command](https://redis.io/commands/hset)
- [HGET command](https://redis.io/commands/hget)

