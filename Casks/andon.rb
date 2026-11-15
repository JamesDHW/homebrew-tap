cask "andon" do
  version "0.1.3"
  sha256 "efe3f378b546dc7ff13289ffdaa48ac91ce61dd32b169bdafed88d1fe20a3d40"

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
