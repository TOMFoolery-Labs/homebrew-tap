class Peel < Formula
  desc "Docker-compatible CLI for Apple Containers"
  homepage "https://github.com/TOMFoolery-Labs/peel-cli"
  url "https://github.com/TOMFoolery-Labs/peel-cli/releases/download/v0.2.0/peel"
  sha256 "b95c3b0c090bdb80befd084e509ef3cf184013d9a4a06a78ddaf2e61c14bbd55"
  license "MIT"
  version "0.2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "peel"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/peel --version")
  end
end
