cask "anime1-desktop" do
  arch arm: "arm64", intel: "x64"
  
  version "0.3.6"
  sha256 arm: "d3e885c42a1336ad5f777800f4474d52fd2ccd1a1909e6a8231a32c1f4bfff7b", 
         intel: "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  
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
