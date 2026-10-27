cask "dictate" do
  version "1.1.4"
  sha256 "c42972c251d31ca9471c922dbee298c5f9f2114019835050a6b318017a6099d2"

  url "https://github.com/moifort/dictate/releases/download/v#{version}/Dictate-#{version}.dmg"
  name "Dictate"
  desc "Push-to-talk dictation: hold control, speak, release, clean text at the cursor"
  homepage "https://moifort.github.io/dictate/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself (Sparkle); `brew upgrade` leaves it alone unless --greedy.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Dictate.app"

  zap trash: [
    "~/Library/Application Support/Dictate",
    "~/Library/Caches/com.thibautmottet.dictate",
    "~/Library/HTTPStorages/com.thibautmottet.dictate",
    "~/Library/Preferences/com.thibautmottet.dictate.plist",
  ]
end
