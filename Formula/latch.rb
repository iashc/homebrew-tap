class Latch < Formula
  desc "Local-first bookmark service and personal clients"
  homepage "https://github.com/iashc/latch"
  url "https://github.com/iashc/latch/releases/download/v0.1.1/latch-cli-aarch64-apple-darwin.tar.gz"
  sha256 "db2eb5d6c461ba293c4becf5ef9af47babfa351c77bf76cd0956e2a625d5fea0"
  version "0.1.1"
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
