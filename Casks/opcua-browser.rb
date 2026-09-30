cask "opcua-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "da002470ef55b8eb5395787d4d915a8bd9da6cc9873a8832b651754d75583d13",
         intel: "715f929cf92dcc3270c4aab825912d526edb10a0a95f538d232ed39003bd55ee"

  url "https://github.com/ZaoralJ/OpcUaBrowser/releases/download/v#{version}/OpcUaBrowser-#{version}-osx-#{arch}.zip"
  name "OPC UA Browser"
  desc "OPC UA client to browse, monitor and record servers"
  homepage "https://github.com/ZaoralJ/OpcUaBrowser"

  depends_on macos: :monterey

  app "OPC UA Browser.app"

  zap trash: "~/Library/Application Support/OpcUaBrowser"

  caveats <<~EOS
    OPC UA Browser is not notarized by Apple. If macOS refuses to open it, run once:
      xattr -dr com.apple.quarantine "/Applications/OPC UA Browser.app"
    or allow it in System Settings > Privacy & Security.
  EOS
end
