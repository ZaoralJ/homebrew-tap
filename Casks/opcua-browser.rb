cask "opcua-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "16dea05e25a8a64c89c8f2a2a06f559547eb74264d4d9338697582dd9f908da9",
         intel: "7c215df0baa891a9b6f9ab61813db75de1471219f720964ed5016a4775e93cfa"

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
