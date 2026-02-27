cask "anime1-desktop" do
  arch arm: "arm64", intel: "x64"
  
  version "0.3.4"
  sha256 arm: "2a9f374952488cc8c6fe5e0f03d68d7711b09e1037db50500892f3a49acfbfdb", 
         intel: "PLACEHOLDER_FOR_INTEL_SHA256"
  
  url "https://github.com/elfgzp/anime1-desktop/releases/download/v#{version}/Anime1Desktop-#{version}-#{arch}.dmg"
  
  name "Anime1 Desktop"
  desc "Anime1 Desktop - Anime Browser"
  homepage "https://github.com/elfgzp/anime1-desktop"
  
  livecheck do
    url :url
    strategy :github_latest
  end
  
  app "Anime1Desktop.app"
  
  zap trash: [
    "~/Library/Application Support/Anime1 Desktop",
    "~/Library/Preferences/com.elfgzp.anime1-desktop.plist",
    "~/Library/Saved Application State/com.elfgzp.anime1-desktop.savedState",
  ]
end
