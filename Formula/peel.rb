class Peel < Formula
  desc "Docker-compatible CLI for Apple Containers"
  homepage "https://github.com/TOMFoolery-Labs/peel-cli"
  url "https://github.com/TOMFoolery-Labs/peel-cli/releases/download/v0.3.2/peel"
  sha256 "8d6ca967e1d7530321000fe455a1ac2b666d3819b7451148176fffbedb46be74"
  license "MIT"
  version "0.3.2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "peel"
  end

  test do
    assert_match "0.3.2", shell_output("#{bin}/peel --version")
  end
end
