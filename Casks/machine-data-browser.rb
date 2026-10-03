cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "4532fbedd35a0f0cd8a2a1d69b9084be5fc4cd65330cae79c72b2ed02659a356",
         intel: "b741ea4575caba85362e61a0a7bfcb1c896bfee411d2221ac78540f6d45101e1"

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
