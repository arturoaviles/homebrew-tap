# Arturo Avilés Homebrew Tap

Homebrew formulae for Arturo Avilés's projects.

## Bionic Reader

[Bionic Reader](https://github.com/arturoaviles/bionic-reader) emphasizes word
beginnings in text streams, Markdown documents, and interactive terminal sessions.

Install the native binary on macOS or Linux, on Apple Silicon/ARM64 or Intel/x86-64:

```sh
brew install arturoaviles/tap/bionic-reader
bionic-reader -t 'Read text with emphasis on word beginnings.'
```

To upgrade:

```sh
brew update
brew upgrade arturoaviles/tap/bionic-reader
```

Or add it to a `Brewfile`:

```ruby
tap "arturoaviles/tap"
brew "arturoaviles/tap/bionic-reader"
```

See Bionic Reader's [usage guide](https://github.com/arturoaviles/bionic-reader/blob/main/docs/USAGE.md)
for reading modes and shell integration.

## Formula updates

Bionic Reader's [package publishing workflow](https://github.com/arturoaviles/bionic-reader/blob/main/.github/workflows/publish-packages.yml)
generates `Formula/bionic-reader.rb` from verified release assets. Configure the
`homebrew` environment, `HOMEBREW_TAP_TOKEN`, and `PUBLISH_HOMEBREW` in that
repository as described in its [release guide](https://github.com/arturoaviles/bionic-reader/blob/main/docs/RELEASE.md#publishing-package-managers).

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
