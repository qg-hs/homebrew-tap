cask "qstats" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.2.0"
  sha256 arm:   "32aa8779a45ffbe743c594c1acc0846afddb28266a14e86f0634eb0236f2f39a",
         intel: "418faacfd1ab222dc7a9d6df428d28f896bfaae49b2e099464f2263670297e65"

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
