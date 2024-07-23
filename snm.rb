class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-102"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-102/x86_64-apple-darwin.tar.gz"
    sha256 "842ffbdf6d7d32e94ab219c639f659be9d9ca2f385b23f12ca46d2c012b8f098"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-102/aarch64-apple-darwin.tar.gz"
    sha256 "ff75ca1fa541064beeda360ceecb4e4d4645389a98727463b76ab3d243b54319"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
