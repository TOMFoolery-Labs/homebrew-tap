class Peel < Formula
  desc "Docker-compatible CLI for Apple Containers"
  homepage "https://github.com/TOMFoolery-Labs/peel-cli"
  url "https://github.com/TOMFoolery-Labs/peel-cli/releases/download/v0.3.0/peel"
  sha256 "b9532eb1b54d3d23ce0cf46c3c9709f5b6a49dd78389de65b30564b4cb452aa1"
  license "MIT"
  version "0.3.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "peel"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/peel --version")
  end
end
