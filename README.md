# DexScreener Bot Dashboard

A full-stack, Dockerized trading bot dashboard for monitoring DEX token pairs, analyzing pump/rug behavior, and interacting with Telegram and trading APIs.

## 🌐 Features

- FastAPI backend with trade automation
- React + Tailwind frontend dashboard
- Real-time alerts to Telegram
- Fake volume and rug detection
- ToxiSol trade execution hooks
- Docker Compose for full-stack launch

---

## 🚀 Quick Start (Windows)

### 1. Install Required Software

- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- [Node.js LTS](https://nodejs.org/)
- [Git for Windows](https://git-scm.com/downloads)

Optional but recommended:
- [Visual Studio Code](https://code.visualstudio.com/)

---

### 2. Extract Project

Unzip the folder:
```bash
dexscreener-bot/
```

Then open PowerShell in the root folder.

---

### 3. Run Setup Script

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
.\setup.ps1
```

This creates `.env`, opens your browser to the frontend, and sets up Docker files.

---

### 4. Launch App

```powershell
docker-compose up --build
```

Open in browser:

- Frontend: http://localhost:3000
- API Docs: http://localhost:8000/docs

---

### 5. Configure Environment

Edit `backend/.env`:

```env
TELEGRAM_BOT_TOKEN=your_token
TELEGRAM_CHAT_ID=your_chat_id
TOXI_SOL_API_KEY=your_api_key
```

Then restart:
```bash
docker-compose down
docker-compose up --build
```

---

## 🌍 Deployment Options

- Upload to GitHub:
  ```bash
  git init
  git add .
  git commit -m "Initial commit"
  git remote add origin https://github.com/yourusername/dexscreener-bot.git
  git push -u origin main
  ```

- Deploy to Render.com or Railway

---

## 📁 Folder Structure

```
dexscreener-bot/
├── backend/
│   └── bot.py, .env, Dockerfile, requirements.txt
├── frontend/
│   └── src/, Dockerfile, package.json, Tailwind configs
├── docker-compose.yml
└── setup.ps1
```

---

## 🤝 License

MIT License – use, modify, and expand freely!