cask "qstats" do
  arch arm: "apple-silicon", intel: "intel"

  version "1.4.0"
  sha256 arm:   "4d9f764ba999d7442a397aff3780b87531fa9c69ec408fcbe3fc35fb4a3f31db",
         intel: "fba1e369e063151691183a2b43288054e17c7af29b643d58e768673bf81bae52"

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
