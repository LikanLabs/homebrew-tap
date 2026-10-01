cask "usage-island" do
  version "0.1.11"
  sha256 "188ebe3ab961fafc5f4555ec68f15e33a75e11fb3bbb873e534e888864076565"

  url "https://github.com/LikanLabs/UsageIsland/releases/download/v#{version}/Usage-Island.zip"
  name "Usage Island"
  desc "Codex and Claude Code usage beside the MacBook notch"
  homepage "https://github.com/LikanLabs/UsageIsland"

  depends_on macos: :sonoma

  app "Usage Island.app"

  zap trash: "~/Library/Preferences/com.likanlabs.usageisland.plist"

  caveats <<~EOS
    Usage Island is not notarized by Apple yet. If macOS blocks the first launch,
    click Done (not Move to Trash), then open
      System Settings > Privacy & Security
    and click "Open Anyway" next to Usage Island. This is needed only once.
    Start it with: open -a "Usage Island"
  EOS
end
