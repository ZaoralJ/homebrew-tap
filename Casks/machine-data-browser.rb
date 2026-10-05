cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.23.1"
  sha256 arm:   "a694a58ed29cfa3b51ede098f2022fb88a39c88e0a07ec09ea8849be469435ec",
         intel: "8799f104fe220d93f3d15cd17530e156bf5e77143f1b1bc326cf09bfe5ba61d3"

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
