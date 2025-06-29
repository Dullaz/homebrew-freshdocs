class Freshdocs < Formula
  desc "Keep your documentation as fresh as your code"
  homepage "https://github.com/Dullaz/freshdocs"
  version "v1.4.3"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.3/freshdocs-v1.4.3-darwin-arm64.tar.gz"
      sha256 "2ae7686dc40c9a8a5cdfd88febb7c59b1cb926b568608c622055e0d16209bfde"
    else
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.3/freshdocs-v1.4.3-darwin-amd64.tar.gz"
      sha256 "cd4cdf2b292b7f03e8948242359507859f657b8324f6f0c2840923c91b86f4c3"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.3/freshdocs-v1.4.3-linux-arm64.tar.gz"
      sha256 "0a59de4fb628c817cc488e874c139b35195266737a3705e37ff811ad75ac1b5e"
    else
      url "https://github.com/Dullaz/freshdocs/releases/download/v1.4.3/freshdocs-v1.4.3-linux-amd64.tar.gz"
      sha256 "7788475108c11ad04f7f020d389d64d4ec958f15e09ac234e770dd5ffd6f0004"
    end
  end
  
  def install
    bin.install "freshdocs"
  end
  
  test do
    system "#{bin}/freshdocs", "--version"
  end
end
