cask "nepali-calendar" do
  version "2.5.0,31"
  sha256 "5c61669e41e4ea5fce0ed7fe271c8a9b35da3668a028f7fcfd86719b35a0e34c"

  url "https://github.com/kshitijsubedi/nepali-calendar-mac-updates/raw/refs/heads/main/versions/nepali-calendar-mac-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Nepali Calendar"
  desc "Nepali calendar and date converter widget for macOS"
  homepage "https://github.com/kshitijsubedi/nepali-calendar-widgets"

  depends_on macos: ">= :ventura"

  app "Nepali Calendar Mac.app"

  zap trash: [
    "~/Library/Caches/com.kshitijsubedi.nepali-calendar-mac",
    "~/Library/Preferences/com.kshitijsubedi.nepali-calendar-mac.plist",
  ]
end
