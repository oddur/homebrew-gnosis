cask "gnosis" do
  version "0.33.0"
  sha256 "7fb82804e81c1b47e4d5d279c31d1e05ab3206708a8a4d3870bc17909a5f2d5c"

  url "https://github.com/oddur/gnosis/releases/download/v#{version}/Gnosis-darwin-arm64-#{version}.zip"
  name "Gnosis"
  desc "AI-guided code review. Understand the story before you read the diff."
  homepage "https://github.com/oddur/gnosis"

  app "Gnosis.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Gnosis.app"]
  end

  zap trash: [
    "~/Library/Application Support/Gnosis",
    "~/Library/Logs/Gnosis",
    "~/Library/Preferences/com.electron.gnosis.plist",
  ]
end
