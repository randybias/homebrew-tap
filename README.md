# homebrew-tap

Homebrew formulae for [ZeroFS](https://github.com/Barre/ZeroFS) — The Filesystem That Makes S3 your Primary Storage. 9P/NFS/NBD on top of S3.

## Install

```bash
brew tap <owner>/tap
brew install zerofs
```

Replace `<owner>` with the GitHub username/org hosting this tap.

## Post-install

```bash
# Initialize ZeroFS configuration
zerofs init

# ZeroFS uses NFS mounts — some operations require sudo
```

## Updating

```bash
brew update
brew upgrade zerofs
```

## More info

- [ZeroFS GitHub](https://github.com/Barre/ZeroFS)
- [ZeroFS Releases](https://github.com/Barre/ZeroFS/releases)
