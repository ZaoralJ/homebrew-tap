cask "opcua-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "304cb66cfff246e7e27ca6dc071dfdb4d12fc6ae351e8aa83a26b562ab59dfe4",
         intel: "7c971d01f31190b39508e963705f168fabfc54bbaf3052ce3c36ce42370bdf03"

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
