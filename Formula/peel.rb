class Peel < Formula
  desc "Docker-compatible CLI for Apple Containers"
  homepage "https://github.com/TOMFoolery-Labs/peel-cli"
  url "https://github.com/TOMFoolery-Labs/peel-cli/releases/download/v0.3.1/peel"
  sha256 "f68700c2a9a0313f7706ba773ad7f5d96569d07d8eaf10cff52fab21187465dc"
  license "MIT"
  version "0.3.1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "peel"
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/peel --version")
  end
end
