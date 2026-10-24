cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.36.1"
  sha256 arm:   "36314d61cc51863c815b081f4c98b6b002ebf335b6eca43663cf367e081fe398",
         intel: "64b71e40f09f85b2e025aa4cac05852cba864158764afdf50d821ee5c7f6a429"

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
