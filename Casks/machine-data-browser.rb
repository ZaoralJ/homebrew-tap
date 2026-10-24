cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.37.1"
  sha256 arm:   "f41b1ec0ed851205e59d521db7314d629832f9caa8a66449b9cd5ef11c3732bd",
         intel: "fe2415aee7cc7b7f375e54c819e5098f088ace1245f523964c66c94518abfce9"

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
