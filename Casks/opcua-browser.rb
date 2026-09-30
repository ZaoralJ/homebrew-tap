cask "opcua-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "578731555a3f6ef988b76ae0d762c570528d9a181b59ae4a3e88c0a88b5fe8ff",
         intel: "856e1583c5d21efb881701c483faa8535e2868aff26440ba9242c0e5f2a7e694"

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
