class MicRouter < Formula
  desc "Automatic macOS microphone router CLI for Xiaomi Bluetooth Remote 2 Pro (SayAll)"
  homepage "https://github.com/nanoac/mic-router"
  url "https://github.com/nanoac/mic-router/releases/download/v1.3.0/mic-router-cli-arm64.zip"
  version "1.3.0"
  sha256 "f163e43d0d42d230a48242de78771c8db0786aeec0b87531c5030820efaf9950"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "mic-router"
  end

  service do
    run [opt_bin/"mic-router"]
    keep_alive true
    process_type :interactive
    log_path "#{Dir.home}/Library/Logs/mic-router-cli.log"
    error_log_path "#{Dir.home}/Library/Logs/mic-router-cli.log"
  end

  def caveats
    <<~EOS
      To run mic-router automatically in the background:
        brew services start nanoac/tap/mic-router

      Grant Input Monitoring permission to:
        #{opt_bin}/mic-router
      in System Settings → Privacy & Security → Input Monitoring.
    EOS
  end

  test do
    assert_match "mic-router #{version}", shell_output("#{bin}/mic-router --version")
  end
end
