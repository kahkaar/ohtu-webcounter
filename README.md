[![CI](https://github.com/kahkaar/ohtu-webcounter/actions/workflows/main.yaml/badge.svg?branch=main)](https://github.com/kahkaar/ohtu-webcounter/actions/workflows/main.yaml)

# Running the Application

1. Install `Python 3.12`

2. Install poetry
```sh
pip install poetry
```

3. Install dependencies
```sh
poetry install
```

4. Run application
```sh
poetry run python3 src/index.py
```

## Running in Docker

```sh
sudo docker run -d -p 5001:5001 ohtu-webcounter
```

## Building

```sh
sudo docker build -t ohtu-webcounter .
```

# Running Robot Tests

```sh
sh ./run_robot_tests.sh
```
