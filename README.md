# homebrew-surdance

Homebrew tap for **surDancePlayer** (macOS app).

Packages are published on: https://github.com/lsuen/surDancePlayer-releases/releases

## Install

```bash
brew tap lsuen/surdance
brew install --cask surdance-player
```

## Upgrade

```bash
brew update
brew upgrade --cask surdance-player
```

## Uninstall

```bash
brew uninstall --cask surdance-player
```

## First launch

The app may be unsigned. If macOS blocks it:

```bash
xattr -cr /Applications/surDancePlayer.app
```

Or in Finder: right-click → **Open**.

## 中文

### 安装

```bash
brew tap lsuen/surdance
brew install --cask surdance-player
```

### 升级 / 卸载

```bash
brew update && brew upgrade --cask surdance-player
brew uninstall --cask surdance-player
```

### 首次打开

若提示无法验证开发者：

```bash
xattr -cr /Applications/surDancePlayer.app
```

或在 Finder 中右键 App → **打开**。
