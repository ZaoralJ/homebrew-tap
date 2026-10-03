cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "646c2e225fd97f8f42a1aef0c39c13806da6557a4ddcaa8a875d31f8ba9e363e",
         intel: "dcc5fd50d154c4e35ee3840ddc98942b58bcc965aadc4270e9f7eeb257c2c4ee"

  url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/MachineDataBrowser-#{version}-osx-#{arch}.zip"
  name "Machine Data Browser"
  desc "Browse, monitor and record machine data over OPC UA, EtherNet/IP and MQTT"
  homepage "https://github.com/ZaoralJ/MachineDataBrowser"

  depends_on macos: :monterey

  app "Machine Data Browser.app"

  zap trash: [
    "~/Library/Application Support/MachineDataBrowser",
    "~/Library/Application Support/OpcUaBrowser",
  ]

  caveats <<~EOS
    Machine Data Browser is not notarized by Apple. If macOS refuses to open it, run once:
      xattr -dr com.apple.quarantine "/Applications/Machine Data Browser.app"
    or allow it in System Settings > Privacy & Security.
  EOS
end
