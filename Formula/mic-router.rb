class MicRouter < Formula
  desc "Automatic macOS microphone router CLI for Xiaomi Bluetooth Remote 2 Pro (SayAll)"
  homepage "https://github.com/nanoac/mic-router"
  url "https://github.com/nanoac/mic-router/releases/download/v1.3.0/mic-router-cli-arm64.zip"
  version "1.3.0"
  sha256 "f163e43d0d42d230a48242de78771c8db0786aeec0b87531c5030820efaf9950"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "mic-router"
  end

  test do
    assert_match "mic-router 1.3.0", shell_output("#{bin}/mic-router --version")
  end
end
