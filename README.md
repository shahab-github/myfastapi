## API using FASTAPI
to run the server
```
gunicorn src:app -k uvicorn.workers.UvicornWorker --workers 4 --bind 0.0.0.0:8000 --reload
```
