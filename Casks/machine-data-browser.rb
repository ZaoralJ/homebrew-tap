cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "7428a4b7a93b46ac7eff69c576a0b4d728d96d982e7939b069504ec20164edae",
         intel: "8d0d4fa17bdcde486f65070bb4decb38820e03eeae61cb0471d800fbc0b7a4b3"

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
