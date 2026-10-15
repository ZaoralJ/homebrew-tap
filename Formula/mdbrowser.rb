class Mdbrowser < Formula
  desc "Browse, read and monitor machine data over OPC UA, EtherNet/IP (Logix) and MQTT"
  homepage "https://zaoralj.github.io/MachineDataBrowser/"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-osx-arm64.tar.gz"
      sha256 "bca10cea4496fb952325660c9d8744ef72898f5578b081e31a3100b68fe9b3fb"
    end
    on_intel do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-osx-x64.tar.gz"
      sha256 "fab8195b58a75b270e37e39e038f766c9ee76b8e28eefb7f411357d52e362b30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-linux-arm64.tar.gz"
      sha256 "3df7a8afc70e1187e36f056e44b7e74d7b38bd96abb837f1597a3ad6717c08e1"
    end
    on_intel do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-linux-x64.tar.gz"
      sha256 "770db7799b3db0b9c6bc59c9bd8a0d9c0af2106c014391feea96314f76925255"
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
