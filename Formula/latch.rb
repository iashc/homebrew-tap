class Latch < Formula
  desc "Local-first bookmark service and personal clients"
  homepage "https://github.com/iashc/latch"
  url "https://github.com/iashc/latch/releases/download/v0.1.0/latch-cli-aarch64-apple-darwin.tar.gz"
  sha256 "715cc1650d8789cf16c8e20b53bc5b756f55588e52dbccb54bafbad0dcb56304"
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
