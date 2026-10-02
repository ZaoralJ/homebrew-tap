cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "e4d7dca3c749bb4e504127512159b7e21636fd50101889ed119e7bdc87bf27c5",
         intel: "6679c82de62a37a01902934891d9e629a408673235dc27e4d2122b6881b96bf7"

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

  caveats <<~EOS
    Machine Data Browser is not notarized by Apple. If macOS refuses to open it, run once:
      xattr -dr com.apple.quarantine "/Applications/Machine Data Browser.app"
    or allow it in System Settings > Privacy & Security.
  EOS
end
