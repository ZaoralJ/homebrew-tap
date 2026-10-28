cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.40.0"
  sha256 arm:   "4abbd79c89e2106f13ce5d4a2974cfe39dad8228642f0a9731668cfbc21e77c8",
         intel: "be7f8be63e7e8ac24cf332fa45d7036235849b5ce4bfc65123f4230b32ea2bd2"

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
