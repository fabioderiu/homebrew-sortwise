cask "sortwise" do
  version "0.1.0"
  sha256 "56c56f175f1cb7e8ad36425b16da8b18504837b48bf1626bf094c6359cbc3319"

  url "https://github.com/fabioderiu/sortwise/releases/download/v#{version}/Sortwise.app.zip"
  name "Sortwise"
  desc "AI-powered file organizer for macOS — menu bar app"
  homepage "https://github.com/fabioderiu/sortwise"

  app "Sortwise.app"

  zap trash: [
    "~/.config/sortwise",
  ]
end
