cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.22.1"
  sha256 arm:   "901e813008f42a6a40753a2926056eb6e3899d0f73670027da8ca2706e5efc6e",
         intel: "7e9fa45dc503a9fd84600f0a85d12db84e4e87d9bccaa0a11b73321a70dd5b5f"

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
