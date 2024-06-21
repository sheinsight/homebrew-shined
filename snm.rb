# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-38"
  if Hardware::CPU.intel?
    
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-42/snm-macos-x86_64.zip"
    sha256 "01fcac7d8fa7591ec285f72703f2ebefd7264fd932694ba3c098bcc3f9cd0bb3"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-42/snm-macos-arm.zip"
    sha256 "8e1e15e0e8a97a92bf4e124101f6078d3c204ac20bee079e396c9cb469aefa06"
  end
  

  license "MIT"

  # depends_on "cmake" => :build

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "snm","pnpx","pnpm","npx","npm","yarn","node"
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
