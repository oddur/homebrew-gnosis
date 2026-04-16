cask "gnosis" do
  version "0.19.1"
  sha256 "0b505fe91fc8870377ed7e287f6d04c207ba8313032e1f4866836830f5e32aab"

  url "https://github.com/oddur/gnosis/releases/download/v#{version}/Gnosis-darwin-arm64-#{version}.zip"
  name "Gnosis"
  desc "AI-guided code review. Understand the story before you read the diff."
  homepage "https://github.com/oddur/gnosis"

  app "Gnosis.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Gnosis.app"]
  end

  zap trash: [
    "~/Library/Application Support/Gnosis",
    "~/Library/Logs/Gnosis",
    "~/Library/Preferences/com.electron.gnosis.plist",
  ]
end
