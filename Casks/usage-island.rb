cask "usage-island" do
  version "0.1.18"
  sha256 "ef21a23477c0e516111c6c0e42a75f2a8ca3df66edf4805b614ab4ac50ea3721"

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
