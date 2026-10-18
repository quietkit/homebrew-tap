cask "querly" do
  version "1.6.0,25"
  sha256 "421bc9aa64b2fdc5f8850e038aeb5ab4c19259a1b0e6562e9ff758e166290962"

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
