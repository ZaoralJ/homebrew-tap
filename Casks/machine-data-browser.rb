cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "ce059386c7ab0ac0bc6d6074a5d98dd8c59442331aa493007efdacbb254ac5fe",
         intel: "6824bf887ec960c911f135fb0bdeddeaae4396130393cc87319260cf314064df"

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
