cask "operecs" do
  arch arm: "-arm64", intel: ""

  version "0.23.0"
  sha256 arm:   "ab6eeab93c86199848d35156cac6ac2721d22029d15c79abf57992e4e0b94da7",
         intel: "859684ad6ee48197e72ffd848be41d0d098e057fe700fd95ad96a490d8bbc738"

  url "https://github.com/ezzeldinzozz-svg/operecs-browser/releases/download/v#{version}/Operecs-#{version}#{arch}.dmg"
  name "Operecs"
  desc "Private, fast web browser built on Chromium"
  homepage "https://github.com/ezzeldinzozz-svg/operecs-browser"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Operecs.app"

  zap trash: [
    "~/Library/Application Support/Browser",
    "~/Library/Caches/Browser",
    "~/Library/Preferences/com.ezzeddinmagdy.browser.plist",
    "~/Library/Saved Application State/com.ezzeddinmagdy.browser.savedState",
  ]
end
