class Nvimpager < Formula
  desc "Use nvim as a pager"
  homepage "https://github.com/lucc/nvimpager"
  url "https://github.com/nevd/nvimpager/archive/0.5.1.tar.gz"
  sha256 "0f2fafc065e480112f34836a1d5e77312d399713330603b611f2ce806faf1b67"
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
