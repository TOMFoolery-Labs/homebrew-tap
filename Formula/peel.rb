class Peel < Formula
  desc "Docker-compatible CLI for Apple Containers"
  homepage "https://github.com/TOMFoolery-Labs/peel-cli"
  url "https://github.com/TOMFoolery-Labs/peel-cli/releases/download/v0.3.5/peel"
  sha256 "213785c0d7b19e433bb90ec4c942e43ee77e0bf413fb4148204a64f36ddf6461"
  license "MIT"
  version "0.3.5"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "peel"
  end

  test do
    assert_match "0.3.5", shell_output("#{bin}/peel --version")
  end
end
