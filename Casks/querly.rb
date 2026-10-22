cask "querly" do
  version "1.8.0,28"
  sha256 "79ad54d74ef1488c4cc0cd3057aecde80572f242dd977d6df8e91f44fd46f080"

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
