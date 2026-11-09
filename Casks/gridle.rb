cask "gridle" do
  version "0.2.1"
  sha256 "3f0379c9a46d6d55019966f37ee927a6a1a45d2898ddf28612b029012ed7f1de"

  url "https://github.com/joyahmed/gridle/releases/download/v#{version}/Gridle-#{version}.zip"
  name "Gridle"
  desc "Snap windows from the keyboard or by dragging to an edge"
  homepage "https://github.com/joyahmed/gridle"

  depends_on macos: :sonoma

  app "Gridle.app"

  zap trash: [
    "~/Library/Preferences/com.joyahmed.gridle.plist",
    "~/Library/Preferences/com.joyahmed.panes.plist", # its name until 0.2.0
  ]
end
