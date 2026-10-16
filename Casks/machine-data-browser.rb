cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.29.2"
  sha256 arm:   "d45377b6350f3214996a87c53720bc8bd1abe271bf3d04cbc6f7e30470f1470e",
         intel: "3061124574e09cd41d79d6d6b7d06b224f4431c2b8702d35b4055ea0f0efd7e0"

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
