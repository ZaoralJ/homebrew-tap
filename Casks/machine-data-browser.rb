cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.21.2"
  sha256 arm:   "4801a41446910cf244267da828d0ae593d620cbe29f425348724542bc4317ef7",
         intel: "3763ffb5cf3f50fecac4aa3dd9713dccf744d76b374343f192beac5716abe277"

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
