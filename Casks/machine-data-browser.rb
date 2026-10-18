cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.31.0"
  sha256 arm:   "35757cafdc88eb084ec7b8fe46a5991a37032ab18022b30f8d37ce8f598667f1",
         intel: "0dccd4cdf7e9836f20bf033126dc0df5438d1b39becc5acefc060a465cdd1919"

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
