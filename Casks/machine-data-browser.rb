cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.21.1"
  sha256 arm:   "99b7a4e044d8f6c2e6f1d0c5c9981e082d2f14d66c7ab12bd2ee47436086f1c9",
         intel: "dae6663ec42bfb15e50ae518861627959bb23522681953f34e978dcaddcbd3bd"

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
