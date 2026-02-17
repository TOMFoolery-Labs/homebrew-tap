class Peel < Formula
  desc "Docker-compatible CLI for Apple Containers"
  homepage "https://github.com/TOMFoolery-Labs/peel-cli"
  url "https://github.com/TOMFoolery-Labs/peel-cli/releases/download/v0.3.6/peel"
  sha256 "7dc0922a667b7566ba3c5766a53dba8870366cddaf53521c8cc77cf128f516f0"
  license "MIT"
  version "0.3.6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "peel"
  end

  test do
    assert_match "0.3.6", shell_output("#{bin}/peel --version")
  end
end
