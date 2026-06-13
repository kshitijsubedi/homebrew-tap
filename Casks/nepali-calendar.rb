cask "nepali-calendar" do
  version "2.5.5,36"
  sha256 "82a22269c88fa4701b6fa43bb2faf8239d28b96e863fa54d26232f2f9ffbcd46"

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
