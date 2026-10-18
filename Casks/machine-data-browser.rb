cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.32.1"
  sha256 arm:   "417ee47c395052db0f80408a3e1ca21816271dffd6e65b646baf93ed0579e93a",
         intel: "b36e00cc829bd502bba97c2854cc2fafe9b4085c9841bf0e052f290d39b414a7"

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
