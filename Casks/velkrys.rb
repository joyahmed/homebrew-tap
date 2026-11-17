cask "velkrys" do
  version "0.1.3"
  sha256 "ed6f322e9705af9a4cec9dc11fb0095f3eacc96e6dfa4fe86010776305f4b984"

  url "https://github.com/joyahmed/velkrys/releases/download/v#{version}/Velkrys_#{version}_universal.dmg"
  name "Velkrys"
  desc "File explorer with real tabs, big folders and instant search"
  homepage "https://github.com/joyahmed/velkrys"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Velkrys.app"

  zap trash: [
    "~/Library/Application Support/com.joyahmed.velkrys",
    "~/Library/Caches/com.joyahmed.velkrys",
    "~/Library/WebKit/com.joyahmed.velkrys",
    # its name until 0.1.2 was Trove
    "~/Library/Application Support/com.joyahmed.trove",
    "~/Library/Caches/com.joyahmed.trove",
    "~/Library/WebKit/com.joyahmed.trove",
  ]
end
