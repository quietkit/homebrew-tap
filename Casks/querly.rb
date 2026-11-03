cask "querly" do
  version "1.13.0,34"
  sha256 "d29755686860b0efd84fde7ada7294cb5b739936cc98525f4c4c502b1b003473"

  url "https://downloads.quietkit.app/querly/Querly-#{version.csv.first}.dmg"
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
