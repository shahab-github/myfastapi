# __init__.py

from fastapi import FastAPI
from src.users import user_data, router

app = FastAPI()

app.include_router(router.users_router)
@app.get("/")
async def read_root():
    return {"Hello": "World"}

@app.get("/health")
async def is_healthy():
    return {"is_healthy": True}