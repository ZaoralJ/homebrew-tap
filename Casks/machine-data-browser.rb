cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "a1e29fb409993d2b48f1196a1ce0f88a76d8d0b048c59a061d97838e7626a497",
         intel: "fdb8a372574d5db037c7de078c71bf0466991e9e2cc435c03c41a9cc2be519fa"

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
