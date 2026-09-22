cask "qstats" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.5.0"
  sha256 arm:   "11f7ecaf3e107af7b6ab3479341bfe2b992d32265b2a58ef00341823824a0075",
         intel: "ec4518a4448a4b829a45296d183c0d7d03af01b84e8862730292b25ee8dc6ce7"

  url "https://github.com/qg-hs/Qstats/releases/download/v#{version}/Qstats-#{version}-#{arch}.dmg"
  name "Qstats"
  desc "Lightweight macOS menu bar system monitor and screenshot tool"
  homepage "https://github.com/qg-hs/Qstats"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Qstats.app"

  uninstall quit: "com.qghs.Qstats"

  zap trash: [
    "~/Library/Preferences/com.qghs.Qstats.plist",
  ]
end
