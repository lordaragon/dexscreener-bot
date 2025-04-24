# Auto-generated setup script

New-Item -ItemType Directory -Force -Path "backend"
New-Item -ItemType Directory -Force -Path "frontend\src"

# .env template
Set-Content "backend\.env" @"
TELEGRAM_BOT_TOKEN=your_token_here
TELEGRAM_CHAT_ID=your_chat_id_here
TOXI_SOL_API_KEY=your_toxi_sol_key_here
"@

# Dockerfiles and configs
Set-Content "backend\Dockerfile" @"
FROM python:3.10
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD [\"uvicorn\", \"dexscreener_api:app\", \"--host\", \"0.0.0.0\", \"--port\", \"8000\", \"--reload\"]
"@

Set-Content "frontend\Dockerfile" @"
FROM node:18
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
CMD [\"npm\", \"run\", \"dev\"]
"@

Start-Process "http://localhost:3000"
Start-Process "http://localhost:8000/docs"