cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "9d288bad416e087e914e0acfa38c8f994234ed3c5d0c01ce2aa902094f0f8d2c",
         intel: "23d49a73456b830b68a5f58b86113b0aacff56e8a86aaa0839f2eedef2d4396b"

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
