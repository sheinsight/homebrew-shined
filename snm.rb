# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-34"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-34/snm-macos-x86_64.zip"
    sha256 "a6eb4c3b3ceed2df2d0e4bff124b10293d3cfa2775bd861b7d0a5f3afb39f9e1"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-34/snm-macos-arm.zip"
    sha256 "ec5ea3c68e86d308826ec02c73107383db9a23ca901487c45fd3b59e9f8bebca"
  end
  

  license "MIT"

  # depends_on "cmake" => :build

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "snm","pnpx","pnpm","npx","npm","node"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test snm`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # system "false"
    system "#{bin}/snm", "--version"
  end
end
