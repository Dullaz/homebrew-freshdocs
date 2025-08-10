class Freshdocs < Formula
  desc "Keep your documentation as fresh as your code"
  homepage "https://github.com/Dullaz/freshdocs"
  version "v1.5.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.5.1/freshdocs-v1.5.1-darwin-arm64.tar.gz"
      sha256 "f5f4bb0295d0210d61184de8b9d1fc5a2d0203f82934b753354dbe0e0c398a06"
    else
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.5.1/freshdocs-v1.5.1-darwin-amd64.tar.gz"
      sha256 "f92227971aa13c34b56a1da2101ade54d295e042fd95ec4a5d69bdf41aec7e67"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.5.1/freshdocs-v1.5.1-linux-arm64.tar.gz"
      sha256 "f4f678cc00ee06f3f768e83a91d306af88df7711fc3e2841af9e088e34ec0dfd"
    else
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.5.1/freshdocs-v1.5.1-linux-amd64.tar.gz"
      sha256 "408ff9980e0024ffb735f1b17d9aa98e03991d62711efb88e7a8331ed5f50486"
    end
  end
  
  def install
    bin.install "freshdocs"
  end
  
  test do
    system "#{bin}/freshdocs", "--version"
  end
end
