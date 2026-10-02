cask "opcua-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "55a6db8e4b7dc27b986e504d9e91f41c30f3a67544e8c232163adcacb46dca87",
         intel: "1b386b66cc8ee42215f14f82202b2e2565a3d75e770a34c3615f721bd5642a03"

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
