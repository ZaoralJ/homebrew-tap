cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.16.1"
  sha256 arm:   "4fff5cf472d5ee008ce009e5e08783ad38a101cdde1f8ed4b4144eb626a0b14c",
         intel: "37db4821c06e1e6c4fa7515adef2bdb02a53589dd4789ab6315442b14d5271b3"

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
