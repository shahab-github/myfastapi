## API using FASTAPI

make sure to install the requried dependencies
```
pip install fastapi uvicorn gunicorn
```

to run the server
```
gunicorn src:app -k uvicorn.workers.UvicornWorker --workers 4 --bind 0.0.0.0:8000 --reload
```
