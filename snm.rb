class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-94"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-94/x86_64-apple-darwin.tar.gz"
    sha256 "7ba29f9757661788fb0490c3b6e7009653ee757b324fc9da524dc6770abff331"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-94/aarch64-apple-darwin.tar.gz"
    sha256 "235768c4c964f9710e3258b7b2b616ed7ca15075128b152fc6995a1f3978c4c9"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
