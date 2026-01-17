cask "anime1" do
  version "0.1.0"
  sha256 "9dd3b13986ae3546b7c5a62c3059007d9b5d49d8a46e7ad7f2bd7d48180f495d"

  url "https://github.com/elfgzp/anime1-desktop/releases/download/v#{version}/anime1-macos-#{version}.dmg"
  name "Anime1"
  desc "Anime1 Desktop - Anime Browser"
  homepage "https://github.com/elfgzp/anime1-desktop"

  app "Anime1.app"

  zap trash: [
    "~/Library/Application Support/com.anime1.app",
    "~/Library/Preferences/com.anime1.app.plist",
  ]
end
