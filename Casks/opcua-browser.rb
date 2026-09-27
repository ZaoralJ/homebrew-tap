cask "opcua-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "8fb0f0129d9533b0087427601a985f26e8a68957ad0e60cde143d7209b986f26",
         intel: "a85c2f62e17dba06b0dc15e93a68f25b6d0ad198d5f7fbf6b4d9922296b5569b"

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
