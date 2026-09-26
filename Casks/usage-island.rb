cask "usage-island" do
  version "0.1.6"
  sha256 "5c3dbf23a05dbeb4ff677df288f72abdb0e9dec34fef46f88ce829500a97b3fc"

  url "https://github.com/LikanLabs/UsageIsland/releases/download/v#{version}/Usage-Island.zip"
  name "Usage Island"
  desc "Codex and Claude Code usage beside the MacBook notch"
  homepage "https://github.com/LikanLabs/UsageIsland"

  depends_on macos: :sonoma

  app "Usage Island.app"

  zap trash: "~/Library/Preferences/com.likanlabs.usageisland.plist"
end
