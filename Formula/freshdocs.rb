class Freshdocs < Formula
  desc "Keep your documentation as fresh as your code"
  homepage "https://github.com/Dullaz/freshdocs"
  version "v1.4.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.1/freshdocs-v1.4.1-darwin-arm64.tar.gz"
      sha256 "673bb5f67c4835f729a4ca785158303430dc8b6027a73bff20e68be9c7dc0a4c"
    else
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.1/freshdocs-v1.4.1-darwin-amd64.tar.gz"
      sha256 "d3d5eb9c3c59468a46fca2d845e46af5b00b5f72aae85eb9a5be344b03cea634"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.1/freshdocs-v1.4.1-linux-arm64.tar.gz"
      sha256 "2dd281be9102b2bc78bac2fef79433c3e37c6677537c51919a004ef941552ac7"
    else
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.1/freshdocs-v1.4.1-linux-amd64.tar.gz"
      sha256 "cf3dffba068be3338dcb70928b396f291c6c44aea081374fe8e501e182fb6e0f"
    end
  end
  
  def install
    bin.install "freshdocs"
  end
  
  test do
    system "#{bin}/freshdocs", "--version"
  end
end
