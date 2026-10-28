class BionicReader < Formula
  desc "Local word-prefix emphasis for text streams and terminal sessions"
  homepage "https://github.com/arturoaviles/bionic-reader"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.3.0/bionic-reader-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "a00e35c440482210fb981c348ca21ca586fc8411b8f8d00bb50f67193141bfe0"
    end
    on_intel do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.3.0/bionic-reader-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "3fb0e01719fd1f712e385ca94808bfc6a48e2f034cd2d836a921ae672e8bc7c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.3.0/bionic-reader-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7335a6eda1906ef8094420433b8c055674eb2db125cd7ebb1df9e3a0ebd9edb"
    end
    on_intel do
      url "https://github.com/arturoaviles/bionic-reader/releases/download/v0.3.0/bionic-reader-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e264ee221aef3e123777383b9a165e7f8c31e13fd598f169c44d3751a6d913a7"
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
