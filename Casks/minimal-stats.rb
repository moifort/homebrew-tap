# The token is minimal-stats, not stats: homebrew/cask's `stats` (exelban)
# installs another app also named Stats.app.
cask "minimal-stats" do
  version "1.12.0"
  sha256 "05c0093669f75bd782c9f253208e8f9366e40686f0476ba7e6b37698aa28cdee"

  url "https://github.com/moifort/minimal-stats/releases/download/v#{version}/Stats.dmg"
  name "Stats"
  desc "Menu bar CPU, network, memory and disk charts"
  homepage "https://stats.polyforms.co/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself; `brew upgrade` leaves it alone unless --greedy.
  auto_updates true
  conflicts_with cask: "stats"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Stats.app"

  uninstall quit: "com.polyforms.stats"

  zap trash: [
    "~/Library/Preferences/com.polyforms.stats.plist",
    "~/Library/Preferences/com.stats.menubar.plist",
  ]
end
