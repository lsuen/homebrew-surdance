cask "surdance-player" do
  arch arm: "arm64", intel: "x64"

  # Bump version + sha256 when publishing a new GitHub Release asset.
  version "3.1.38"
  sha256 arm:   "0000000000000000000000000000000000000000000000000000000000000000",
         intel: "70525cb337d83c3737b63117b3e5248450a083d054abc174c5e3a6c5a6573ac0"

  url "https://github.com/lsuen/surDancePlayer-releases/releases/download/v#{version}/surDancePlayer-macos-#{version}-#{arch}.zip"
  name "surDancePlayer"
  name "SurDance"
  desc "Beat-aware dance practice player"
  homepage "https://github.com/lsuen/surDancePlayer-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "surDancePlayer.app"

  zap trash: [
    "~/Library/Application Support/com.danceplayer.app",
    "~/Library/Caches/com.danceplayer.app",
    "~/Library/Preferences/com.danceplayer.app.plist",
    "~/Library/WebKit/com.danceplayer.app",
  ]

  caveats <<~EOS
    The app may be unsigned. On first launch, right-click in Finder and choose Open,
    or run: xattr -cr "/Applications/surDancePlayer.app"
  EOS
end
