cask "sortwise" do
  version "0.1.0"
  sha256 ""

  url "https://github.com/fabioderiu/sortwise/releases/download/v#{version}/Sortwise.app.zip"
  name "Sortwise"
  desc "AI-powered file organizer for macOS — menu bar app"
  homepage "https://github.com/fabioderiu/sortwise"

  app "Sortwise.app"

  zap trash: [
    "~/.config/sortwise",
  ]
end
