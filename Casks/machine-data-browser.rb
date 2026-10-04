cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "80292a1833d80de167c4966004dea7023a70e5f89d861efb36ab8cb20ad85f5b",
         intel: "0e818e4583992102e368c1ae793838e4cc16783811d36a0e29d39d7525363b3b"

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
