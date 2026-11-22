# nanoac/homebrew-tap

Official Homebrew tap for indie macOS utilities by [`nanoac`](https://github.com/nanoac).

## MicRouter

Automatic macOS microphone router for Xiaomi Bluetooth Remote 2 Pro ([SayAll](https://github.com/HD838A/remote-mic-app)) & keyboard `Fn`.

### Menu Bar App (Recommended)

| Action | Command |
| :--- | :--- |
| **Install** | `brew install --cask nanoac/tap/mic-router` |
| **Install (skip Gatekeeper prompt)** | `brew install --cask --no-quarantine nanoac/tap/mic-router` |
| **Upgrade** | `brew upgrade --cask nanoac/tap/mic-router` |
| **Reinstall / Repair** | `brew reinstall --cask nanoac/tap/mic-router` |
| **Uninstall App** | `brew uninstall --cask nanoac/tap/mic-router` |
| **Full Uninstall (app + logs + prefs)** | `brew uninstall --cask --zap nanoac/tap/mic-router` |

> If Homebrew prompts that the tap is untrusted on first use, run `brew trust nanoac/tap` once.
> After `--zap`, you can optionally clear the macOS Input Monitoring entry with `tccutil reset ListenEvent com.microuter.app`.

### Geek CLI Mode

| Action | Command |
| :--- | :--- |
| **Install** | `brew install nanoac/tap/mic-router` |
| **Start background service** | `brew services start nanoac/tap/mic-router` |
| **Restart / Repair service** | `brew services restart nanoac/tap/mic-router` |
| **Stop service** | `brew services stop nanoac/tap/mic-router` |
| **Uninstall** | `brew uninstall nanoac/tap/mic-router` |
