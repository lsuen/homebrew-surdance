cask "surdance-player" do
  version "3.1.38"

  on_intel do
    sha256 "70525cb337d83c3737b63117b3e5248450a083d054abc174c5e3a6c5a6573ac0"
    url "https://github.com/lsuen/surDancePlayer-releases/releases/download/v#{version}/surDancePlayer-macos-#{version}-x64.zip"
  end

  # Apple Silicon zip not in this release yet (build on arm64 Mac or GitHub Actions macos-latest).
  on_arm do
    sha256 "70525cb337d83c3737b63117b3e5248450a083d054abc174c5e3a6c5a6573ac0"
    url "https://github.com/lsuen/surDancePlayer-releases/releases/download/v#{version}/surDancePlayer-macos-#{version}-x64.zip"
    caveats <<~EOS
      This release only ships an Intel (x64) build. On Apple Silicon it may run under Rosetta,
      or wait for an arm64 asset on the Releases page.
    EOS
  end

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
