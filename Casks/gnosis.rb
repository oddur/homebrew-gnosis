cask "gnosis" do
  version "0.13.0"
  sha256 "b5a513cb2b5fa5e7c39dd9a26ebb328591bf85f38b78677e626e6740417f9217"

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
