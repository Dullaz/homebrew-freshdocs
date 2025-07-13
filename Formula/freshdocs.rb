class Freshdocs < Formula
  desc "Keep your documentation as fresh as your code"
  homepage "https://github.com/Dullaz/freshdocs"
  version "v1.5.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.5.0/freshdocs-v1.5.0-darwin-arm64.tar.gz"
      sha256 "6441a989071544ee6fc5eb22c56ca76ed6b1b933f54f354dfb58a3fd0292e624"
    else
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.5.0/freshdocs-v1.5.0-darwin-amd64.tar.gz"
      sha256 "9eb4a41f4a3102c6cc371117eb968f5ad8c5309dc5bae78a73cb267822531736"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.5.0/freshdocs-v1.5.0-linux-arm64.tar.gz"
      sha256 "2c7b59d243f151f7070bf582864f2068ea492c30c415297a41f6982fe69aab4c"
    else
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.5.0/freshdocs-v1.5.0-linux-amd64.tar.gz"
      sha256 "492808598f28d0aad1c537a8ee48c47ab6217b8b42afe32cf7e39becf4969026"
    end
  end
  
  def install
    bin.install "freshdocs"
  end
  
  test do
    system "#{bin}/freshdocs", "--version"
  end
end
