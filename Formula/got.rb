class Got < Formula
  desc "Clone Git repositories into predictable local paths"
  homepage "https://github.com/iashc/got"
  url "https://github.com/iashc/got/releases/download/v0.1.0/got-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "5fce1a2c72a915de173f2bded8d444203ef2ff214c38e0418cccd2f15b54380c"
  version "0.1.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "got"
  end

  test do
    system "#{bin}/got", "--version"
  end
end
