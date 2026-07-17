cask "nepali-calendar" do
  version "2.5.8,39"
  sha256 "97aec1c7b3c00ebc1eff08b1d5f39c03cd351f65fe4b75f6dd61aebe5096ee9e"

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
