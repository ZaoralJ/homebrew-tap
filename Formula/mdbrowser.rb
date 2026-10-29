class Mdbrowser < Formula
  desc "Browse, read and monitor machine data over OPC UA, EtherNet/IP (Logix) and MQTT"
  homepage "https://zaoralj.github.io/MachineDataBrowser/"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-osx-arm64.tar.gz"
      sha256 "d7a7c2de011c2571a67d1237405fbbfb08bb9f7ceecb4fe4ac192cb17aa03f3f"
    end
    on_intel do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-osx-x64.tar.gz"
      sha256 "a35e8c77ca0b4f2e500d92b7f7a8507cdb9d8695015a6859dd8ec5dc64dcdde8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-linux-arm64.tar.gz"
      sha256 "dd60d230bd6d3a6d42e16f5fe19827e640f69eb22d55bb710faa415c18b5dcfa"
    end
    on_intel do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-linux-x64.tar.gz"
      sha256 "b7acc4bb37cc6a44af51adab8a819d81196584bcbd01957cd385b707f5d9efed"
    end
  end

  def install
    bin.install "mdbrowser"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdbrowser --version")
    assert_match "endpoints", shell_output("#{bin}/mdbrowser --help")
  end
end
