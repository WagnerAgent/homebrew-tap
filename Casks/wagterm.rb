cask "wagterm" do
  version "0.1.5"
  sha256 "443f876c92add634fe422e30178363d867bca4364e894b89b51be8d12c01c428"

  url "https://github.com/WagnerAgent/wagterm/releases/download/v#{version}/Wagterm-#{version}-arm64.dmg"
  name "Wagterm"
  desc "Open-source AI SSH desktop client"
  homepage "https://github.com/WagnerAgent/wagterm"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Wagterm.app"

  zap trash: [
    "~/Library/Application Support/wagterm",
    "~/Library/Preferences/com.wagner.wagterm.plist",
    "~/Library/Saved Application State/com.wagner.wagterm.savedState",
  ]
end
