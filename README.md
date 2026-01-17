# Homebrew Tap

This is a Homebrew tap containing casks for various applications.

## Available Casks

| Name | Description |
|------|-------------|
| [anime1](Casks/anime1.rb) | Anime1 Desktop - Anime Browser |

## Installing a Cask

```bash
# Add this tap
brew tap elfgzp/homebrew-tap

# Install a specific cask
brew install --cask anime1
```

## Updating

```bash
brew update
brew upgrade
```

## Uninstalling

```bash
brew uninstall anime1
brew untap elfgzp/homebrew-tap
```

## Adding New Casks

To add a new cask, create a file in `Casks/` directory following Homebrew's cask format.
