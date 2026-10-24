cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.36.2"
  sha256 arm:   "28f4ecbb7351b0136a5b3c852bc2447291b5020ba40976a33003db0cd609a6e5",
         intel: "27fcf88ee5254d2fbcfcf27cbee7f66c9c859980fb6cf9a45581d45ad6998db7"

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
