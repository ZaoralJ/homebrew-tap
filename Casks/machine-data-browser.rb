cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.38.0"
  sha256 arm:   "e1a307dcfb4d16f6d5848d345b4ee8aab912a0e2d69d442d07a14b71e3116b9f",
         intel: "f94f1eee8034be07be9822a3de4afa72af444b86e59cc00b1fdb37800ceb8956"

  url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/MachineDataBrowser-#{version}-osx-#{arch}.zip"
  name "Machine Data Browser"
  desc "Browse, monitor and record machine data over OPC UA, EtherNet/IP and MQTT"
  homepage "https://github.com/ZaoralJ/MachineDataBrowser"

  depends_on macos: :monterey

  # Per-user install: writing to /Applications makes brew ask for sudo.
  app "Machine Data Browser.app", target: "~/Applications/Machine Data Browser.app"

  zap trash: [
    "~/Library/Application Support/MachineDataBrowser",
    "~/Library/Application Support/OpcUaBrowser",
  ]
end
