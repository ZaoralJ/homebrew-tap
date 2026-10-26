class Mdbrowser < Formula
  desc "Browse, read and monitor machine data over OPC UA, EtherNet/IP (Logix) and MQTT"
  homepage "https://zaoralj.github.io/MachineDataBrowser/"
  version "0.37.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-osx-arm64.tar.gz"
      sha256 "337cbc0a1d7b7eaaa6bd5291f3c3bb1e0710778bfce6c8d3b8530f1c333f9543"
    end
    on_intel do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-osx-x64.tar.gz"
      sha256 "692b9606b15611c0874d22abc7717f30bc96f91581e92392817ab38cd80b1018"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-linux-arm64.tar.gz"
      sha256 "3f169fc36bcd23e30ac56a7f7839d9f76febad8793f434b74a5ed5e1bec57c75"
    end
    on_intel do
      url "https://github.com/ZaoralJ/MachineDataBrowser/releases/download/v#{version}/mdbrowser-#{version}-linux-x64.tar.gz"
      sha256 "cf8d24d52bf8315da0c188c50bac78757b5f9f56d3d040d281df7d4a999f414c"
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
