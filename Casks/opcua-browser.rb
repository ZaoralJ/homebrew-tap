cask "opcua-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "fc70148e84b34dfaf740801c737954fd70d6aaad8dd33dea45506f514bd57bb1",
         intel: "20eabc223620e9097b13b18568f02082bd07377e80352d17d83a2d46a953a308"

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
