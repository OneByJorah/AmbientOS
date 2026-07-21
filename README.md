# AmbientOS

![CI](https://github.com/OneByJorah/AmbientOS/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/license-MIT-green.svg)
![Node](https://img.shields.io/badge/node-%E2%89%A518-43853d.svg)

> Turn your Obsidian vault into an ambient desktop scene instead of another hidden sidebar.

AmbientOS turns your vault graph into a live desktop backdrop: glowing nodes, tag-colored clusters, curated visual presets, smarter hub labels, and motion that stays atmospheric instead of noisy. It is built to feel like wallpaper first, graph tooling second.

**macOS, Windows, and Linux.**

## Features

- Curated presets instead of raw sliders only
- Soft cluster halos for tag territories
- Smarter labels that surface hubs without clutter
- Large-vault-aware scaling so dense graphs stay elegant
- Incremental parsing after the first vault scan
- Local-only HTTP server that binds to `127.0.0.1` by default

## Tech Stack

- Node.js 18+
- `chokidar` for file watching
- D3 (vendored locally) for rendering

## Installation

You'll need [Node.js](https://nodejs.org) (v18+) and a wallpaper host app:

- **macOS**: [Plash](https://apps.apple.com/us/app/plash/id1494023538)
- **Windows**: [Lively Wallpaper](https://www.rocksdanister.com/lively/)
- **Linux**: KDE (native), GNOME via [Hidamari](https://github.com/jeffshee/hidamari), or `xwinwrap`

### Quickest start (no clone)

```bash
npx ambient-os --vault "/path/to/your/Obsidian/vault"
```

Point your wallpaper host at the printed `http://127.0.0.1:3000` URL.

### Clone it (best for customizing or contributing)

```bash
git clone https://github.com/OneByJorah/AmbientOS.git
cd AmbientOS
npm install
cp config.example.json config.json
# Edit config.json and set vaultPath and host
npm start
```

Open `http://127.0.0.1:3000/settings.html` to customize visuals. `vaultPath`, `host`, and `port` stay in `config.json`.

## Configuration

| Option | Default | Description |
|--------|---------|-------------|
| `vaultPath` | — | Absolute path to your Obsidian vault |
| `host` | `127.0.0.1` | HTTP server bind address |
| `port` | `3000` | Local HTTP port |
| `accent` | `#7c5cff` | Default node and edge color |
| `background` | `#0a0a0f` | Canvas background color |
| `refreshMs` | `5000` | Fallback refresh interval in ms |
| `nodeColorMode` | `"tag"` | Node coloring: `tag`, `age`, or `folder` |
| `motionMode` | `"balanced"` | Ambient movement profile |
| `maxRenderedNodes` | `5000` | Hard cap on rendered nodes |

See `config.example.json` for all options.

## Architecture

```
parser.js  →  graph.json  →  index.html (D3 renderer)  →  wallpaper host
```

- `parser.js` watches your vault and serves the renderer.
- `index.html` loads `graph.json` and runs a d3 force simulation.
- The wallpaper host renders the page as your desktop background.

## Development

```bash
npm install
npm test    # parser smoke + renderer smoke
```

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md).

## Security

Report vulnerabilities privately to **info@jorahone.com**. See [SECURITY.md](SECURITY.md).

## License

MIT © Jhonattan L. Jimenez
