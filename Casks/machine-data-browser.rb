cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.39.0"
  sha256 arm:   "f5b92ab3b2c1b22cf9b86ab88702592fb51e4432f7ff2113e27c858cc4f78152",
         intel: "633b14dd686b858c97f02bb8b621e6e5e316cf5f2ced05c1eaf84f7f9501a349"

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
