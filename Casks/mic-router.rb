cask "mic-router" do
  version "1.3.0"
  sha256 "b300e4627f8aeb82bf20f616f35b941e056e321d1ce9c9a2b827105059decc32"

  url "https://github.com/nanoac/mic-router/releases/download/v#{version}/MicRouter-app-arm64.zip"
  name "MicRouter"
  desc "Automatic macOS microphone router for Xiaomi Bluetooth Remote 2 Pro (SayAll)"
  homepage "https://github.com/nanoac/mic-router"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "MicRouter.app"

  uninstall quit: "com.microuter.app"

  zap trash: [
    "~/Library/Caches/com.microuter.app",
    "~/Library/HTTPStorages/com.microuter.app",
    "~/Library/Logs/MicRouter.log",
    "~/Library/Preferences/com.microuter.app.plist",
  ]

  caveats <<~EOS
    MicRouter is open-source and currently ad-hoc signed (not Apple notarized).
    • If Gatekeeper blocks first launch, run:
        brew reinstall --cask --no-quarantine nanoac/tap/mic-router
      or click "Open Anyway" in System Settings → Privacy & Security.
    • On first launch, follow the 3-step guide to grant Input Monitoring permission.
    • To remove all settings and logs completely:
        brew uninstall --cask --zap nanoac/tap/mic-router
        tccutil reset ListenEvent com.microuter.app
  EOS
end
