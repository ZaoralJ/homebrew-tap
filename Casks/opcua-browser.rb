cask "opcua-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "39a7a8e5278aec5f2dc3375367f1b8c5cd1051433d5c729b94a0ed2f88551b12",
         intel: "6cac13073f97070afe0b0d2aa9053e37262a4fdcdd46d84499447d23f4dd41df"

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
