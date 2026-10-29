# ⛏️ Minecraft 24/7 AFK & Chunk-Loader Bot

An ultra-resilient, 24/7 automated Minecraft player bot built on **Mineflayer** and Node.js.

## ✨ Key Features
- **Auto-Reconnect**: Seamless exponential backoff with jitter if server restarts or kicks.
- **Anti-AFK System**: Performs natural randomized actions (looking around, sneaking, swinging arm, jumping) to bypass AFK-detection plugins.
- **Auto-Eat**: Automatically scans inventory and eats food when hunger falls below 15 points.
- **Auto-Respawn**: Instantly revives if killed by mobs or environmental damage.
- **Web Status Dashboard**: Built-in Express dashboard running on `http://localhost:3000` with live health, hunger, XYZ coords, and uptime.
- **Cloud-Ready**: The HTTP endpoint prevents free cloud hosts (Render, Koyeb, Railway) from shutting down the instance.
- **Chat Commands**: In-game player commands (`!ping`, `!status`, `!coords`, `!drop`).
- **Flexible Version Support**: Supports auto-detecting server protocol or locking to specific versions (`1.20.2`, `1.21.2`, etc.).

---

## 🚀 Quick Start

1. Edit `.env` with your server IP and port:
   ```env
   MC_HOST=your-server-ip-or-domain
   MC_PORT=25565
   MC_VERSION=auto
   BOT_USERNAME=AFK_Bot_24_7
   BOT_AUTH=offline
   ```

2. Start the bot:
   - **Double-click** `start_afk_bot.bat`
   - Or run in terminal:
     ```bash
     node index.js
     ```

3. Open your browser at `http://localhost:3000` to monitor bot status in real-time.

---

## 🔄 Running 24/7 with PM2 (Background Daemon)

To keep the bot running in the background and survive computer restarts:
```bash
npm install -g pm2
pm2 start ecosystem.config.js
pm2 save
```
