cask "usage-island" do
  version "0.1.16"
  sha256 "a9c5694692cf4e030ab68a4b28cdaeda93024edd67592aba4ad69212ecb0289d"

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
