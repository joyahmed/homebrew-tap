cask "panes" do
  version "0.1.0"
  sha256 "c570d239cf4591baedd0a76139890dce7b413598c84377c7520bddea2197fc62"

  url "https://github.com/joyahmed/panes/releases/download/v#{version}/Panes-#{version}.zip"
  name "Panes"
  desc "Snap, stack and grid windows from the keyboard or by dragging to an edge"
  homepage "https://github.com/joyahmed/panes"

  depends_on macos: ">= :sonoma"

  app "Panes.app"

  zap trash: [
    "~/Library/Preferences/com.joyahmed.panes.plist",
  ]
end
