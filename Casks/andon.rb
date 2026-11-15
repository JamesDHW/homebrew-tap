cask "andon" do
  version "0.1.1"
  sha256 "14d6782df6d155a5732362e4ed7287f0180ba9beec4e99beb1c5854db3fddecf"

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
