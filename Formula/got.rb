class Got < Formula
  desc "Clone Git repositories into predictable local paths"
  homepage "https://github.com/iashc/got"
  url "https://github.com/iashc/got/releases/download/v0.1.1/got-0.1.1-aarch64-apple-darwin.tar.gz"
  sha256 "53119ea11e1925cc32bfa14797ca35f7989ac5a71d46c0ff4de56d447337350f"
  version "0.1.1"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "got"
  end

  test do
    system "#{bin}/got", "--version"
  end
end
