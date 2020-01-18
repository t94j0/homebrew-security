class Satellite < Formula
  desc "easy-to-use payload hosting"
  homepage "https://github.com/t94j0/satellite"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/t94j0/satellite/releases/v0.0.1/satellite_0.0.1_darwin_amd64.tar.gz"
    sha256 "908a812de28572dc112ec3d2fa2830dde23004aeefce34ea7cfc7426c99c4dec"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/t94j0/satellite/releases/v0.0.1/satellite_0.0.1_linux_amd64.tar.gz"
      sha256 "022527babc88eb5b7f5499432fd2e2ec5b2475164d079f728724a2f82d7db8d9"
    end
  end

  def install
    bin.install "satellite"
  end
end
