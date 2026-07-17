cask "nepali-calendar" do
  version "2.5.7,38"
  sha256 "2cc4eea287ab5db2e616222fa87adfcbd9827a7c1be1a6c5bad0428330adc8e2"

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
