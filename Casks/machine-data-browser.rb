cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.32.0"
  sha256 arm:   "ed26cca1473a64970231a42252a9277f0c2ba5a8b4c584a25bda86342f839bf7",
         intel: "78f81e33f424d306a43ae118651a1af603a25411f55408dea97a8dc9fbc629fa"

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
