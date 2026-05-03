class Latch < Formula
  desc "Local-first bookmark service and personal clients"
  homepage "https://github.com/iashc/latch"
  url "https://github.com/iashc/latch/releases/download/v0.1.0/latch-cli-aarch64-apple-darwin.tar.gz"
  sha256 "8e242583ff760d308b6dc88e2ca5caac6785e9baa962c5ec9360003bfca03b2c"
  version "0.1.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "bin/latch"
  end

  test do
    assert_match "Local-first bookmark", shell_output("#{bin}/latch --help")
  end
end
