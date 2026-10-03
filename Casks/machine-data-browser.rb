cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "337c4770d9c6c2e1620fc1986e2980f918b9012895bb5f953dfcc7ee06985aaa",
         intel: "67a7aedbbde5a0d09707e2c721dd35ba86a7bfd6f8be1460f2770dd3b3ed04b3"

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
