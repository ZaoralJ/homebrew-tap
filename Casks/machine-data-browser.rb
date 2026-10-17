cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.29.3"
  sha256 arm:   "1f8d7ca4dbfa8656c5d15d1fb46f2b5a9d4a98104f0d2d3700b8f307735850ed",
         intel: "f54ba87b6b2c0ea6629c2b5c2aa0a9fb9f33be541bf2dd4525df7bfd73cbd9b4"

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
