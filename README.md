# moifort/tap

Homebrew casks for [Dictate](https://dictate.polyforms.co/), push-to-talk
dictation for the Mac, and [Stats](https://stats.polyforms.co/), CPU, network,
memory and disk charts in the menu bar.

```bash
brew install --cask moifort/tap/dictate
brew install --cask moifort/tap/minimal-stats
```

Each cask follows its app's latest release automatically: a workflow checks
every hour and bumps the version and checksum. Both apps then update
themselves, so `brew upgrade` leaves them alone unless run with `--greedy`.
