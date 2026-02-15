class Peel < Formula
  desc "Docker-compatible CLI for Apple Containers"
  homepage "https://github.com/TOMFoolery-Labs/peel-cli"
  url "https://github.com/TOMFoolery-Labs/peel-cli/releases/download/v0.3.3/peel"
  sha256 "39f476552338fc3030c7d23b92f6b705624f8f8ea4e61b8f82baeec90b159235"
  license "MIT"
  version "0.3.3"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "peel"
  end

  test do
    assert_match "0.3.3", shell_output("#{bin}/peel --version")
  end
end
