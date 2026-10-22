cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.34.0"
  sha256 arm:   "fa6fbb47f28f9c231d251ac97d0f3a0b59ce5b6b22e6a31b711bcb4e64fc8c2b",
         intel: "f825010fd73ebac92d92de846140f346f9bd60cce3e67174be6e5f0d100b6fb6"

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
