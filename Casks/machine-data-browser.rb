cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.37.0"
  sha256 arm:   "01d84c5015f7216816038d97e40d4ff8feb5e74916144360ee475f456f24c03f",
         intel: "7c610d93c5d5489e4a90f1bf73e6e7f1ffc27f01a754148f2a931977f7fd7e94"

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
