class Nvimpager < Formula
  desc "Use nvim as a pager"
  homepage "https://github.com/lucc/nvimpager"
  url "https://github.com/lucc/nvimpager/archive/v0.5.1.tar.gz"
  sha256 "3dbe704f5368fe132853bee8c042d425310bd5676abd1ffb362fa9c55cc3f8ae"
  head "https://github.com/nevd/nvimpager.git"
  depends_on "pandoc" => :build
  depends_on "neovim"
  depends_on "gnu-sed"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
