class Peel < Formula
  desc "Docker-compatible CLI for Apple Containers"
  homepage "https://github.com/TOMFoolery-Labs/peel-cli"
  url "https://github.com/TOMFoolery-Labs/peel-cli/releases/download/v0.3.4/peel"
  sha256 "8f38fec5163eb96c54b3960c9d72a07680bd5641e312bceb0caf0d4c6c0e419d"
  license "MIT"
  version "0.3.4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "peel"
  end

  test do
    assert_match "0.3.4", shell_output("#{bin}/peel --version")
  end
end
