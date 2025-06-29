class Freshdocs < Formula
  desc "Keep your documentation as fresh as your code"
  homepage "https://github.com/Dullaz/freshdocs"
  version "v1.4.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.2/freshdocs-v1.4.2-darwin-arm64.tar.gz"
      sha256 "ab7aac8f4f43926be8254d6945bd2c1a6f8621a46a15d6ff3b733bc3882fa466"
    else
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.2/freshdocs-v1.4.2-darwin-amd64.tar.gz"
      sha256 "dd17fd7d356c45775430acff52c704f673c85d7b71e08a88a7877ac1804ef735"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.2/freshdocs-v1.4.2-linux-arm64.tar.gz"
      sha256 "f6d58145c9b3c362f85f70655a5ee64cbc7ba340b38799d7c90d295894480750"
    else
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.2/freshdocs-v1.4.2-linux-amd64.tar.gz"
      sha256 "51b7ec79779267b7c569213cdf726eb90917a1a4f7947773e9ef5389247f7e75"
    end
  end
  
  def install
    bin.install "freshdocs"
  end
  
  test do
    system "#{bin}/freshdocs", "--version"
  end
end
