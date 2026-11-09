cask "velkrys" do
  version "0.1.2"
  sha256 "b6d741e76c4a0eedf8f27b2ea6a0305cba42e49599132bd95c7402dbbd849cc8"

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
