cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "03f50bd45f04d040ff6aadfb2420190289e9a75f27e20f7170b5419c0cdb5763",
         intel: "2850ee70c3c52b11a389f703492144839a2266971b7012ccb4e68e423dceb2ed"

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
