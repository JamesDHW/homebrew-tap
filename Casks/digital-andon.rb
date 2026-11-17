cask "digital-andon" do
  version "0.2.6"
  sha256 "8da1bb83ae2d301ea3bf0de20e4eb52df9851b8343cb334afbc23299aa4997ce"

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
