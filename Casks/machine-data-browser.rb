cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.33.0"
  sha256 arm:   "cb3a3ace96476df0b6348b49014222e78048bea548b912cabc451ba550075b00",
         intel: "445efe59ee58babc2dd3c85a02b52a879982127ccb2cf388e3b5acf2027a3fe7"

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
