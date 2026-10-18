cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.30.0"
  sha256 arm:   "c9341da3dc15e6f645f1bece9fcb4b3dbfc4408e366347a3f2edec4f0ae1608b",
         intel: "548ab306ea3bab3ace3dec6d670449b7b8c3df8c955a4f09906b6eb5163a1c41"

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
