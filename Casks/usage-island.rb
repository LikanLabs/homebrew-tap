cask "usage-island" do
  version "0.1.17"
  sha256 "99b0b96c8f896bed97d773943dfd4df612525cd46a311ea84f871eeb4c1ffd53"

  url "https://github.com/LikanLabs/UsageIsland/releases/download/v#{version}/Usage-Island.zip"
  name "Usage Island"
  desc "Codex and Claude Code usage beside the MacBook notch"
  homepage "https://github.com/LikanLabs/UsageIsland"

  depends_on macos: :sonoma

  app "Usage Island.app"

  zap trash: "~/Library/Preferences/com.likanlabs.usageisland.plist"

  caveats <<~EOS
    Start it with: open -a "Usage Island"
  EOS
end
