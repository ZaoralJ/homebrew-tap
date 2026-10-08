cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.27.1"
  sha256 arm:   "067ea656fb92179deaa78c2630065518ca79f1f4cc7fd47007d1ff68cc187af0",
         intel: "c1881a7ff3887afe98ccf47c19da92181c6637a178aa08749f7ab5d657c40ab9"

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
