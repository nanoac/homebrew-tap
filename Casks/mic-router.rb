cask "mic-router" do
  version "1.3.0"
  sha256 "b300e4627f8aeb82bf20f616f35b941e056e321d1ce9c9a2b827105059decc32"

  url "https://github.com/nanoac/mic-router/releases/download/v#{version}/MicRouter-app-arm64.zip"
  name "MicRouter"
  desc "Automatic macOS microphone router for Xiaomi Bluetooth Remote 2 Pro (SayAll)"
  homepage "https://github.com/nanoac/mic-router"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "MicRouter.app"

  zap trash: [
    "~/Library/Logs/MicRouter.log",
    "~/Library/Preferences/com.microuter.app.plist",
  ]
end
