cask "nepali-calendar" do
  version "2.1.1,28"
  sha256 "22b4fd65a3fc88638b839257360f7be584f138cf8da4901b4c9f9768dbe507a7"

  url "https://github.com/kshitijsubedi/nepali-calendar-mac-updates/raw/refs/heads/main/versions/nepali-calendar-mac-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Nepali Calendar"
  desc "Nepali calendar and date converter menubar app for macOS"
  homepage "https://nepalicalendar.lifeatearth.com"

  depends_on macos: ">= :ventura"

  app "Nepali Calendar Mac.app"

  zap trash: [
    "~/Library/Caches/com.kshitijsubedi.nepali-calendar-mac",
    "~/Library/Preferences/com.kshitijsubedi.nepali-calendar-mac.plist",
  ]
end
