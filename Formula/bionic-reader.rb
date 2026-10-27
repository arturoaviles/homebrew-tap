class BionicReader < Formula
  desc "Local word-prefix emphasis for text streams and terminal sessions"
  homepage "https://github.com/arturoaviles/bionic-reader"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.2.0/bionic-reader-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "3fe924f9a97c502ac4b37e251758eb73a12018aa545934607895892f5c1c987c"
    end
    on_intel do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.2.0/bionic-reader-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f01842773833eb587c1028fab848b923b50f778942fd82a1fa93f081ab50f58d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.2.0/bionic-reader-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "105392e41bedb1dc3cb15bea8b2bf7d11c9ad4de130cc9e6ca1cacc17069dcfb"
    end
    on_intel do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.2.0/bionic-reader-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "334e90352f5a39a466d57d5ea5065d142c75adfc87a558e0bba45d1c708e610d"
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
