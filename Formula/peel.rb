class Peel < Formula
  desc "Docker-compatible CLI for Apple Containers"
  homepage "https://github.com/TOMFoolery-Labs/peel-cli"
  url "https://github.com/TOMFoolery-Labs/peel-cli/releases/download/v0.2.1/peel"
  sha256 "87aff5ac8212688e4a55a9ed1b8ad8a3a03f4064575251e34b1f336c2c7b7d86"
  license "MIT"
  version "0.2.1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "peel"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/peel --version")
  end
end
