class Latch < Formula
  desc "Local-first bookmark service and personal clients"
  homepage "https://github.com/iashc/latch"
  url "https://github.com/iashc/latch/releases/download/v0.1.0/latch-cli-aarch64-apple-darwin.tar.gz"
  sha256 "e3884d849ba1ce38826b4c94064e88d2093d532999250a5ee27fecd51bd3a986"
  version "0.1.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "latch"
  end

  test do
    assert_match "Local-first bookmark", shell_output("#{bin}/latch --help")
  end
end
