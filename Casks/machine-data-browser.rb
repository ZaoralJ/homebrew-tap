cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.22.0"
  sha256 arm:   "ed7279a5c962368413c4bdc8233683e5df7c981e78eb3519a72b7bd6b511004c",
         intel: "a441c41fc8b3cdd6ebfbf5f6abcb2c21ba509163a96964f667500a8b4116e0b5"

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
