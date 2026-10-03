cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "8c2ec303b4d8d7dbf7831f141d229861c7200a7d7203a12dffdf25929ec15375",
         intel: "7ecbc5bc05501453921f8cfb0f432d6cfcaa0d3523d335fee1285eeecfe1e3a0"

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
