cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.37.2"
  sha256 arm:   "7a83d2e5c7de8f42b109e991826e13c2968fc408ed454506325de900842a2814",
         intel: "392aacecf8c0226be0438292f3f34faac0d740ba5eb75b48eba177ac83496126"

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
