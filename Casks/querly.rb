cask "querly" do
  version "1.11.0,31"
  sha256 "9fbf5b865285ee7300dd23ed90e353e6d07a188c348153a517726fb5b6e9c3d3"

  url "https://downloads.quietkit.app/querly/Querly-#{version.csv.first}-build#{version.csv.second}.dmg"
  name "Querly"
  desc "Native database client"
  homepage "https://querly.quietkit.app/"

  livecheck do
    url "https://downloads.quietkit.app/querly/appcast.xml"
    strategy :sparkle
  end

  # Sparkle updates the app in place; brew shouldn't fight it.
  auto_updates true
  depends_on macos: :sonoma

  app "Querly.app"

  zap trash: [
    "~/Library/Application Support/com.querly.app",
    "~/Library/Caches/com.querly.app",
    "~/Library/Preferences/com.querly.app.plist",
  ]
end
