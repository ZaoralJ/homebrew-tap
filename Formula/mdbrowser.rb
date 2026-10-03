class Mdbrowser < Formula
  desc "Browse, read and monitor machine data over OPC UA, EtherNet/IP (Logix) and MQTT"
  homepage "https://zaoralj.github.io/MachineDataBrowser/"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-osx-arm64.tar.gz"
      sha256 "37850b45bb2f9ab9ff438b1fb674aaa3840b2da645b97bd9119e514110910cc4"
    end
    on_intel do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-osx-x64.tar.gz"
      sha256 "f935442909bd1f90227a1562bea43677a5516abc68d94aa664e8e44e6f54eba7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-linux-arm64.tar.gz"
      sha256 "6adad4b3d17c517c51579fa82946006de735a9a6ca82dd44a28ab333aab2c3ab"
    end
    on_intel do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-linux-x64.tar.gz"
      sha256 "c08db4a0addc498cd76257c0b5aab3062f4ebb95f5cdb32fe2e3a16733387bde"
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
