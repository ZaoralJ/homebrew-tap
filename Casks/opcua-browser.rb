cask "opcua-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "a9ec14e99cbacc5db945f2044c2c61ca7a25324a288699e53dc0612b11f83da1",
         intel: "2ad9db10a0cf0a579e9cda6cb0580f35927abc436c1aa4d4dbaf9ede8c26a7ca"

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
