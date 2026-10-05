cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "c86b481a3556cfbbd0497d36a57087e1fe69321919057828ba49b73b0d7cce9f",
         intel: "ae7803cd6c52c814a6489fddef67f87c576175159906741dd66ffaba12ad2e25"

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
