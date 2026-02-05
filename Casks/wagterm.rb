cask "wagterm" do
  arch arm: "arm64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "PLACEHOLDER_ARM64_SHA256",
         intel: "PLACEHOLDER_X64_SHA256"

  url "https://github.com/WagnerAgent/wagterm/releases/download/v#{version}/Wagterm-#{version}-#{arch}.dmg"
  name "Wagterm"
  desc "Open-source AI SSH desktop client"
  homepage "https://github.com/WagnerAgent/wagterm"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Wagterm.app"

  zap trash: [
    "~/Library/Application Support/wagterm",
    "~/Library/Preferences/com.wagner.wagterm.plist",
    "~/Library/Saved Application State/com.wagner.wagterm.savedState",
  ]
end
