class Mdbrowser < Formula
  desc "Browse, read and monitor machine data over OPC UA, EtherNet/IP (Logix) and MQTT"
  homepage "https://zaoralj.github.io/MachineDataBrowser/"
  version "0.32.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-osx-arm64.tar.gz"
      sha256 "2da3ee9553e0b927ce3b1bf1ab8150db5a157f256c153769dc03dfcbededb69c"
    end
    on_intel do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-osx-x64.tar.gz"
      sha256 "bcffb04565730bea41680d5ba3cbdc1086c12a7ac8b0c1036f8d85f1479faa6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-linux-arm64.tar.gz"
      sha256 "e1ede81b368f62955c35e06eeb589bec5262dd59c0afaaa539bc221e28145bf3"
    end
    on_intel do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-linux-x64.tar.gz"
      sha256 "50f72794148f59c5f17efeeadc0f2b07cb0851bd7dae728beab997c845c7c033"
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
