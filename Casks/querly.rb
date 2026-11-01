cask "querly" do
  version "1.12.0,32"
  sha256 "712bd81cdf92dd05451f703df03eb738999ec2fe7e41874876b3161c16392586"

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
