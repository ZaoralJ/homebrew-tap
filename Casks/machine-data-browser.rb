cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.28.0"
  sha256 arm:   "dab01eff92d5eb8c1384a58a444b2c58d51f96952e4dbaa75a09ce74048a743f",
         intel: "847912ed8f0150733c6ab9f8d65ab41600c799e1b9f3c5c59b31e9ab4e0d7f43"

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
