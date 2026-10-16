cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.29.1"
  sha256 arm:   "efb1f2c2a28cf3e3af24ab9fda97462f0e45a9d75e9bdc52885090feb8c87fbd",
         intel: "ee8d9dfa96ff4cd05e1aafb9c1d464796fe3c907dae8e66836be5e343c366a0a"

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
