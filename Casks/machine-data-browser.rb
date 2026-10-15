cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.29.0"
  sha256 arm:   "4ba304b4991ccb65687d45622c3d63b5f859a4c897f8cad6efdbc4b67ba31e60",
         intel: "1c79f0f4e2fc261a005730d0c39d362cd43feda8b6bec44de0c3eb4f92366b77"

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
