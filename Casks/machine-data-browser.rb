cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "2c1f077eef701a864d78122dbdf487ce3b578376ac4a606efe64f0ef2c2f87a9",
         intel: "94a5808381a322feb700a50201c5ca245ac14e16610d3c2e319ada6f4ddfba96"

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
