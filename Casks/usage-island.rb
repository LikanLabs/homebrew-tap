cask "usage-island" do
  version "0.1.19"
  sha256 "f4cb1d11ddc51f4f3dcf1b8d1b9de2d1e21a4e3c090ae8364646d35ac0bffeee"

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
