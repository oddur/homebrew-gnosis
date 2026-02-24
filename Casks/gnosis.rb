cask "gnosis" do
  version "0.14.0"
  sha256 "a72fe0b5276a77f093ce45fc13b074b8e1144080eccc73428c1a246e1ea04453"

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
