cask "usage-island" do
  version "0.1.5"
  sha256 "a6c0333a6bb4b6a4830335edb64f98a6261dc36cfae04ea12ec13942ec1d86c8"

  url "https://github.com/LikanLabs/UsageIsland/releases/download/v#{version}/Usage-Island.zip"
  name "Usage Island"
  desc "Codex and Claude Code usage beside the MacBook notch"
  homepage "https://github.com/LikanLabs/UsageIsland"

  depends_on macos: :sonoma

  app "Usage Island.app"

  zap trash: "~/Library/Preferences/com.likanlabs.usageisland.plist"
end
