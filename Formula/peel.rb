class Peel < Formula
  desc "Docker-compatible CLI for Apple Containers"
  homepage "https://github.com/TOMFoolery-Labs/peel-cli"
  url "https://github.com/TOMFoolery-Labs/peel-cli/releases/download/v0.2.2/peel"
  sha256 "b3439a0bef0e741e87472855dab7f204855576c0a7c765bbcb085888b52257f8"
  license "MIT"
  version "0.2.2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "peel"
  end

  test do
    assert_match "0.2.2", shell_output("#{bin}/peel --version")
  end
end
