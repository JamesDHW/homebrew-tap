cask "digital-andon" do
  version "0.2.4"
  sha256 "2d84231e40ce81a04134026d4aae5eda56c83c37ff1c8b568de1e1a131e39270"

  url "https://github.com/JamesDHW/digital-andon/releases/download/v#{version}/Digital-Andon.dmg"
  name "Digital Andon"
  desc "Menu bar andon cord: see who on your team needs help"
  homepage "https://github.com/JamesDHW/digital-andon"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Digital Andon.app"

  zap trash: [
    "~/Library/Preferences/*.andon.plist",
    "~/Library/Caches/*.andon",
  ]
end
