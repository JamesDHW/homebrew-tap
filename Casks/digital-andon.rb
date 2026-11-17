cask "digital-andon" do
  version "0.2.8"
  sha256 "9af843c1c699923aeb25f069c1d758bd658f19cb9a55b5567fa6f59a33f93ae5"

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
