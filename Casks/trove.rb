cask "trove" do
  version "0.1.1"
  sha256 "fa38af7ce0111ea2b43caef7f3611e48f5bdf96f8c11c6d3880558274a4f330f"

  url "https://github.com/joyahmed/trove/releases/download/v#{version}/Trove_#{version}_universal.dmg"
  name "Trove"
  desc "File explorer with real tabs, big folders and instant search"
  homepage "https://github.com/joyahmed/trove"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Trove.app"

  zap trash: [
    "~/Library/Application Support/com.joyahmed.trove",
    "~/Library/Caches/com.joyahmed.trove",
    "~/Library/WebKit/com.joyahmed.trove",
  ]

  caveats <<~EOS
    Trove is not notarized by Apple yet. The first time you open it, macOS
    will refuse. Then open System Settings > Privacy & Security and click
    "Open Anyway" next to Trove. You only do this once.
  EOS
end
