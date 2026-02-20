# Homebrew KAWAI Contributor

Homebrew tap for KAWAI Contributor node.

## Installation

```bash
# Tap the repository
brew tap kawai-network/kawai-contributor
```

## For Developers

### Updating to a New Version

1. Update the `url` and `version` in `Formula/kawai-contributor.rb`
2. Calculate the new SHA256 checksum:
   ```bash
   curl -fsSL https://storage.getkawai.com/<VERSION>/contributor/kawai-contributor-<VERSION>-darwin-amd64.tar.gz | shasum -a 256
   ```
3. Update the `sha256` field in the formula
4. Commit and push the changes

### Formula Structure

The formula downloads pre-built binaries from KAWAI's R2 storage:
- URL format: `https://storage.getkawai.com/{version}/contributor/kawai-contributor-{version}-darwin-{arch}.tar.gz`

## License

MIT
