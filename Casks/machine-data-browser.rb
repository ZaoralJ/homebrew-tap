cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "8cac14499cda7300c5c0b51940a0fe2041ebac1470e9e2b23b785219e29f3a49",
         intel: "d069235ddc3f3e41547b714f091e597042ee19ce42d8589364ebcb6be282e5d0"

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
