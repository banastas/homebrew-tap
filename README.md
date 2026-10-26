# banastas/homebrew-tap

Homebrew casks for apps by Bill Anastas.

```bash
brew install --cask banastas/tap/flatline
```

| Cask | App |
|---|---|
| `flatline` | [flatline](https://flatline.banast.as): menu bar monitor for CPU, memory and network on Apple Silicon |

flatline updates itself with Sparkle, so `brew upgrade` skips it unless you pass `--greedy`. The cask is bumped with each release by `scripts/update-cask.sh` in the [flatline repo](https://github.com/banastas/flatline).
