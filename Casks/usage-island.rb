cask "usage-island" do
  version "0.1.1"
  sha256 "2d5b32895613ab6ed5f5f237c54079451c7f2b95264948e411eba1c933a3a76c"

  url "https://github.com/LikanLabs/UsageIsland/releases/download/v#{version}/Usage-Island.zip"
  name "Usage Island"
  desc "Codex usage monitor for the macOS menu bar and screen edge"
  homepage "https://github.com/LikanLabs/UsageIsland"

  app "Usage Island.app"
end
