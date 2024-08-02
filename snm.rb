class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-115"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-115/x86_64-apple-darwin.tar.gz"
    sha256 "7ef884279c72cfd875937c7d028acbc0d4d348dc56ee098bacbfb4c8638d14e1"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-115/aarch64-apple-darwin.tar.gz"
    sha256 "43467de103295cac13b4457a099d84dea7ce5aa99fd0e837bf062d03338bcd47"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
