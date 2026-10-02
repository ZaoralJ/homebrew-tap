cask "machine-data-browser" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "e0756d372e579b781418902fa93e153d8aaab62e03e362eca226d8700744dd61",
         intel: "7ab373f3cb5c21d02eba86c51a7232ec1269f91d1a94875f4524d5f4bed25eed"

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
