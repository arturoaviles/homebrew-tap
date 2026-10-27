class BionicReader < Formula
  desc "Local word-prefix emphasis for text streams and terminal sessions"
  homepage "https://github.com/arturoaviles/bionic-reader"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.1.0/bionic-reader-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "1c3394d4f0ebb452a8116d2a281e11c20f118741145b1a2ebc558d8b5167fd5a"
    end
    on_intel do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.1.0/bionic-reader-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "841d82147b77e9d57f7a0cfd2edd35f3e95e8041613b1ff586ce46a687458a93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.1.0/bionic-reader-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1c86059e2e85a78b3969b9f6df3d03c355d0887fb4583fbbcb5f25b841677e9f"
    end
    on_intel do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.1.0/bionic-reader-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae9e9a8eaa294652182aa7b0fb74f237c2fa658aa9fab2a5ae5a5a8a6f1ef319"
    end
  end

  def install
    bin.install "bin/bionic-reader"
    bash_completion.install(
      "share/bionic-reader/completions/bionic-reader.bash" => "bionic-reader",
    )
    zsh_completion.install "share/bionic-reader/completions/_bionic-reader"
    fish_completion.install(
      "share/bionic-reader/completions/bionic-reader.fish" => "bionic-reader.fish",
    )
    pkgshare.install Dir["share/bionic-reader/*"]
    doc.install "README.md", "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bionic-reader --version")
  end
end
