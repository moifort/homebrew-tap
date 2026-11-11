# The token is minimal-stats, not stats: homebrew/cask's `stats` (exelban)
# installs another app also named Stats.app.
cask "minimal-stats" do
  version "1.12.3"
  sha256 "b5e5956a45605cf8f5db429ac9c3e695776450aab60463cb6c5a402ef8708b7b"

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
