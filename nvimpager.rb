class Nvimpager < Formula
  desc "Use nvim as a pager"
  homepage "https://github.com/lucc/nvimpager"
  url "https://github.com/lucc/nvimpager/archive/v0.5.1.tar.gz"
  sha256 "df887db010daf7d72b83c31d045004f8"
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
