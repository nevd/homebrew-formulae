class Nvimpager < Formula
  desc "Use nvim as a pager"
  homepage "https://github.com/lucc/nvimpager"
  url "https://github.com/nevd/nvimpager/archive/0.5.1.tar.gz"
  sha256 "0401d7b382b522035321f6dc653cfa4dfa3cc8f03af03433f6f1b9c759ff082f"
  head "https://github.com/nevd/nvimpager.git"
  depends_on "pandoc" => :build
  depends_on "neovim"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
