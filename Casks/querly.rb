cask "querly" do
  version "1.12.1,33"
  sha256 "dcfdb1869f106dd78a1766effbb893a42183b1c6f4aec6e96f6c49fadb55d1ee"

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
