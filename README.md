# AmbientOS

Turn your Obsidian vault graph into a live desktop wallpaper — 18 curated presets, tag-aware clusters, large-vault scaling.

![status](https://img.shields.io/badge/status-active-FFB300?style=flat-square)
![language](https://img.shields.io/badge/node.js-18+-0d0d0c?style=flat-square)
![license](https://img.shields.io/badge/license-MIT-FFB300?style=flat-square)

## Overview

AmbientOS transforms your Obsidian vault's knowledge graph into an ambient desktop backdrop — glowing nodes, tag-colored clusters, and motion that stays atmospheric instead of noisy. Built to feel like wallpaper first, graph tooling second. Works on macOS (Plash), Windows (Lively Wallpaper), and Linux (KDE/GNOME via Hidamari).

## Features

- 18 curated visual presets with customizable settings
- Tag-aware cluster halos for visual territory mapping
- Smarter hub labels that surface important nodes without clutter
- Large-vault-aware scaling for dense graphs (1000+ nodes)
- Incremental parsing after initial vault scan
- Local-only HTTP server binding to `127.0.0.1` by default
- Real-time file watching via chokidar
- Settings UI at `http://127.0.0.1:3000/settings.html`

## Architecture / Tech Stack

- **Runtime**: Node.js 18+
- **Renderer**: D3.js (vendored locally)
- **File Watching**: chokidar
- **Packaging**: Docker (nginx:alpine), npm (`npx ambient-os`)
- **Platforms**: macOS, Windows, Linux

## Installation

```bash
# Quickest start (no clone)
npx ambient-os --vault "/path/to/your/Obsidian/vault"

# Clone for customizing
git clone https://github.com/OneByJorah/AmbientOS.git
cd AmbientOS
npm install
cp config.example.json config.json
# Edit config.json — set vaultPath and host
npm start
```

Point your wallpaper host at `http://127.0.0.1:3000`.

### Docker

```bash
docker compose up -d
# Open http://localhost:9503
```

## Usage

```bash
# Start with specific vault
npx ambient-os --vault ~/Documents/MyVault

# Start with custom port
npx ambient-os --vault ~/Documents/MyVault --port 4000

# Open settings UI
open http://127.0.0.1:3000/settings.html
```

## Configuration

| Option | Default | Description |
|--------|---------|-------------|
| `vaultPath` | — | Path to Obsidian vault (required) |
| `port` | `3000` | HTTP server port |
| `host` | `127.0.0.1` | Bind address |

See `config.example.json` for full options.

## License

MIT — see [LICENSE](LICENSE).

---
Part of the JorahOne / J1 ecosystem — ambient visualization for Obsidian knowledge graphs.
