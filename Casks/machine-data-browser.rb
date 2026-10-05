cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.23.2"
  sha256 arm:   "be419ede581dfc7e76cf1751ffc148ef0c095b232ac24b0b96677a3de33059fc",
         intel: "144711bf5810474cc2612c9f6aeac49ba43ffa38e272e7745604a4279e21c0db"

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
