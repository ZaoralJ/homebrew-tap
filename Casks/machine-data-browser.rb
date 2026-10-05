cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.26.0"
  sha256 arm:   "2bf3987d541600342795d624de2316531be47bd98534b2960a17cfd3f288edff",
         intel: "fe2d38d48af75838d7b057e07dcadeb05205ea4e57c943d52393f19f84615b0a"

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
