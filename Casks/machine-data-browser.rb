cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.35.0"
  sha256 arm:   "17ea051d21e852cbc9241b5f7668923b0890a5138e48c59f85717708b76bc0fe",
         intel: "4b7ecdb3c9d175102b9c788d02a204b0386eadff566e56e05d2132d8e3378b38"

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
end
