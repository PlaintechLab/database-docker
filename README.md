# DB Docker deployment with docker-compose

---

Database & Phpmyadmin deployment with docker and docker-compose

## Status

This deployment is production ready.

## Change default value

Copy `default.env` to `.env`

```
cp default.env .env
```

then edit the `.env` file to change default values.

| Variable name         | Default value |
| --------------------- | ------------- |
| `MYSQL_PASSWORD`      |               |
| `MYSQL_ROOT_PASSWORD` | kong          |
| `MYSQL_DATABASE`      | db            |
| `MYSQL_USER`          | user          |
| `DOCKER_NETWORK`      | backend       |
| `DB_IMAGE`            | mysql         |
| `DB_VERSION`          | 8.2           |

## Quick start

### (Optional) If you want to randomize the password

```bash
sh ./randomize-password.sh
```

### Start all services

```bash
sh ./quick-start.sh
```

## Deploy Database Docker step by step

### Deploy database

```bash
docker-compose up -d database
```

### Deploy phpmyadmin

```bash
docker-compose up -d phpmyadmin
```

**Now Database is running**

-   Phpmyadmin http://127.0.0.1:4000 `Recommed to use HTTPS in production`

### Upgrading Database version

> **WARNING** : This may take some downtime to start a new Database version.

1. Change `DB_VERSION` in `.env` file to a newer version.

2. Run migration by compose down

    ```bash
    docker-compose down
    ```

3. Start new Database version

    ```bash
    docker-compose up -d database
    ```
