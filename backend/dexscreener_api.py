from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "DexScreener Bot API is running"}
# FastAPI code here