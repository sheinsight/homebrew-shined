class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-98"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-98/x86_64-apple-darwin.tar.gz"
    sha256 "b8d3fb3bb32e346fa87b6bf300d7e0a0f647eca4ad32798ebe3e9200304ccf8c"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-98/aarch64-apple-darwin.tar.gz"
    sha256 "7e0b2d1b4c76ac9ec6ca3900b01368e8c6722b67c27ec9bd981e719a11161594"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
