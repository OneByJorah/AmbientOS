<div align="center">
  <img src="https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white">
  <img src="https://img.shields.io/badge/Canvas-FF6B6B?style=for-the-badge&logo=html5&logoColor=white">
  <img src="https://img.shields.io/badge/license-MIT-blue?style=for-the-badge">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white">
</div>

<br>

<div align="center">
  <h1>AmbientOS</h1>
  <p><strong>Obsidian Vault as Live Desktop Wallpaper</strong></p>
  <p>Turn your Obsidian knowledge graph into an ambient desktop scene with 18 presets.</p>
  <p>
    <a href="#features">Features</a> •
    <a href="#quick-start">Quick Start</a> •
    <a href="#presets">Presets</a> •
    <a href="#contributing">Contributing</a>
  </p>
</div>

---

## Screenshot

![AmbientOS Wallpaper](docs/screenshot.png)
*Obsidian vault graph rendered as an ambient desktop wallpaper.*

## Features

- **Knowledge Graph Visualization** — Render your Obsidian vault as an interactive graph.
- **18 Presets** — Beautiful pre-configured themes and styles.
- **Tag Clusters** — Group notes by tags for visual organization.
- **Large Vault Scaling** — Optimized performance for 10,000+ notes.
- **Cross-Platform** — macOS, Windows, and Linux support.
- **Real-Time Updates** — Auto-refresh when vault changes.
- **Customizable** — Adjust colors, physics, and layout options.
- **Lightweight** — Minimal CPU and memory usage.

## Quick Start

### macOS / Windows / Linux

```bash
git clone https://github.com/OneByJorah/AmbientOS.git
cd AmbientOS

npm install
npm run setup  # Select your Obsidian vault
npm start      # Launch the wallpaper
```

### Docker

```bash
docker compose up -d
```

## Configuration

| Variable | Default | Description |
|----------|---------|-------------|
| `VAULT_PATH` | — | Path to your Obsidian vault |
| `PRESET` | `default` | Theme preset name |
| `POLL_INTERVAL` | `5000` | Vault refresh interval (ms) |
| `PORT` | `3210` | Web interface port |

### Available Presets

| Preset | Description |
|--------|-------------|
| `default` | Clean, minimal graph view |
| `cyberpunk` | Neon-lit futuristic theme |
| `forest` | Nature-inspired green palette |
| `ocean` | Deep blue aquatic theme |
| `sunset` | Warm orange and pink hues |
| `midnight` | Dark mode with subtle glow |
| `retro` | 80s-inspired pixel aesthetic |
| `minimal` | Ultra-clean monochrome |
| `and more...` | 18 total presets |

## Architecture

```
Obsidian Vault ──File Watcher──▶ Node.js Server ──Canvas──▶ Desktop Wallpaper
                                        │
                                        ├──▶ Graph Renderer
                                        ├──▶ Tag Cluster Engine
                                        └──▶ Preset Manager
```

## Project Structure

```
AmbientOS/
├── src/
│   ├── index.js           # Main entry point
│   ├── vault-scanner.js   # Obsidian vault parser
│   ├── graph-renderer.js  # Canvas graph rendering
│   ├── presets/            # Theme preset configurations
│   └── utils/
├── public/
│   ├── index.html         # Web configuration UI
│   └── app.js             # Frontend logic
├── presets.json            # All preset definitions
├── package.json
├── docker-compose.yml     # Docker deployment
└── .env.example           # Configuration template
```

## Platform-Specific Setup

### macOS
- Uses native window for wallpaper
- Requires Accessibility permissions

### Windows
- Uses Electron for wallpaper integration
- Works with Wallpaper Engine

### Linux
- X11: Direct window embedding
- Wayland: Via layer-shell protocol

## Contributing

Contributions are welcome. Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines and [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) for community standards.

## Security

For security concerns, see [SECURITY.md](SECURITY.md). Please report vulnerabilities to **info@jorahone.com** — do not use public issues.

## License

MIT © Jhonattan L. Jimenez

---

<div align="center">
  <p>Obsidian vault as ambient desktop wallpaper.</p>
  <p><a href="https://github.com/OneByJorah">@OneByJorah</a></p>
</div>
