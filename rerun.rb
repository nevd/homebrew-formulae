class Rerun < Formula
  desc "Script repetetive shell commands over and over again"
  homepage "https://github.com/mandarg/rerun/"
  url "https://github.com/mandarg/rerun/archive/v0.1.0.tar.gz"
  sha256 "c9518b01a9fa2410efae3716a9af4afe3e6e8066a16af01858867869a727f664"
  head "https://github.com/mandarg/rerun.git"
  bottle :unneeded
  depends_on "python@2" => :recommended
  def install
    bin.install "rerun"
  end
  test do
    system "false"
  end
end
