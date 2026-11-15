cask "digital-andon" do
  version "0.2.1"
  sha256 "24a2d442fd606a905a498678d73a20d4d30b72e4b4b5aa872b22be4fa01d882e"

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
