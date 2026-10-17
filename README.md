# moifort/tap

Homebrew casks for [Dictate](https://moifort.github.io/dictate/), push-to-talk
dictation for the Mac.

```bash
brew install --cask moifort/tap/dictate
```

The cask follows the [latest release](https://github.com/moifort/dictate/releases/latest)
automatically: a workflow checks every hour and bumps the version and checksum.
Dictate then updates itself, so `brew upgrade` leaves it alone unless run with
`--greedy`.
