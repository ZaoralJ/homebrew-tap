cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "5af8a8fa005de1e657224d1a7bcafa7e0d3b08dc37c29b41a99d970be7dcfc66",
         intel: "0bf545d964f63c74c20d5f38376dd666f694475da1c3e1c7ee3f168989f091dc"

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
