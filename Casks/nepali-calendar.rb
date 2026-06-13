cask "nepali-calendar" do
  version "2.5.5,36"
  sha256 "16299c98f58887bffba3dc9e0c5053877802d4ffaab63d344bd02eaccacb4110"

  url "https://github.com/kshitijsubedi/nepali-calendar-mac-updates/raw/refs/heads/main/versions/nepali-calendar-mac-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Nepali Calendar"
  desc "Nepali Calendar and Date converter Menubar app & widget for macOS"
  homepage "https://github.com/kshitijsubedi/nepali-calendar-widgets"

  depends_on macos: ">= :ventura"

  app "Nepali Calendar Mac.app"

  zap trash: [
    "~/Library/Caches/com.kshitijsubedi.nepali-calendar-mac",
    "~/Library/Preferences/com.kshitijsubedi.nepali-calendar-mac.plist",
  ]
end
