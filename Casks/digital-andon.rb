cask "digital-andon" do
  version "0.2.0"
  sha256 "0cc51d5f567f0821f4ee7bbc50d9f46010cf9889239fdeea9e94625b9286f6f4"

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
