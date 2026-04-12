class Kov < Formula
  desc "Indestructible AI coding in your terminal"
  homepage "https://trykov.dev"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/up1512001/kov/releases/download/v0.1.1/kov_0.1.1_darwin_arm64.tar.gz"
      sha256 "d507b41bcaffa575019db20a61c15e6c0685181eaa781f8a41678ea847711785"
    end
    on_intel do
      url "https://github.com/up1512001/kov/releases/download/v0.1.1/kov_0.1.1_darwin_amd64.tar.gz"
      sha256 "17606524c970adb001c87ad586bf8407781d692a564d3b2f8ac89304b52b8ffd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/up1512001/kov/releases/download/v0.1.1/kov_0.1.1_linux_arm64.tar.gz"
      sha256 "661eae99885156280dcbc97c2e1414bd1ee18254c7cd52ed46872760522b4b05"
    end
    on_intel do
      url "https://github.com/up1512001/kov/releases/download/v0.1.1/kov_0.1.1_linux_amd64.tar.gz"
      sha256 "20522c70570221b63af03ca0d9c33f1fa4add8ad58df49409ec304e57a6ed29f"
    end
  end

  def install
    bin.install "kov"
  end

  test do
    system "#{bin}/kov", "version"
  end
end
