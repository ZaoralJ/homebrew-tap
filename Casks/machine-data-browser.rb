cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.27.2"
  sha256 arm:   "14db85d6f8741846ae8a80faf6ccff50490a8b67bc5cad54c63a005e4a20d9b8",
         intel: "157c1b34306cdd9060e9a460656710acd500fde9883ecd7053e8184a2bff6d45"

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
