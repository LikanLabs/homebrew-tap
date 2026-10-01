cask "usage-island" do
  version "0.1.9"
  sha256 "919896fefc6bfc4a8fe7bfa16314d70bbae3a94c607dfc040f3f2e298427a73c"

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
