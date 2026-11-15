cask "andon" do
  version "0.1.2"
  sha256 "2b222e48ac898cc4bc14ff2aa58f66962aa0999b10ee31962324322406a7afbb"

  url "https://github.com/JamesDHW/digital-andon/releases/download/v#{version}/Andon.dmg"
  name "Andon"
  desc "Menu bar andon cord: see who on your team needs help"
  homepage "https://github.com/JamesDHW/digital-andon"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Andon.app"

  zap trash: [
    "~/Library/Preferences/*.andon.plist",
    "~/Library/Caches/*.andon",
  ]
end
