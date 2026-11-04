cask "gnosis" do
  version "0.34.0"
  sha256 "ffbb71c0d45100e40b45d876e2a7b81097f621eead1b146fe490cfdc3c85c16c"

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
