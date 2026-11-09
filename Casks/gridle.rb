cask "gridle" do
  version "0.2.0"
  sha256 "616d1eccd31c2e3264f3513188c7b2bff6f1df948b11e7a7ef4ed4bd39894db4"

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
