cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.41.0"
  sha256 arm:   "dbd527bf8737a7b6e0628e44764bf03fa372ebb21cf6e4d8e5e096800b1d37fd",
         intel: "7e1df5a815ddac90447735cf234d755f466adea4ea91adb0a04938a086da2ca0"

  url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/MachineDataBrowser-#{version}-osx-#{arch}.zip"
  name "Machine Data Browser"
  desc "Browse, monitor and record machine data over OPC UA, EtherNet/IP and MQTT"
  homepage "https://github.com/ZaoralJ/MachineDataBrowser"

  depends_on macos: :monterey

  # Per-user install: writing to /Applications makes brew ask for sudo.
  app "Machine Data Browser.app", target: "~/Applications/Machine Data Browser.app"

  zap trash: [
    "~/Library/Application Support/MachineDataBrowser",
    "~/Library/Application Support/OpcUaBrowser",
  ]
end
