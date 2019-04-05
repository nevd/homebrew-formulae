class Nvimpager < Formula
  desc "Use nvim as a pager"
  homepage "https://github.com/lucc/nvimpager"
  url "https://github.com/lucc/nvimpager/archive/v0.6.tar.gz"
  sha256 "0415a57ae53d20a9ecdc5d85c22a2847319631f31d9c5b09fe22506183148c46"
  head "https://github.com/nevd/nvimpager.git"
  depends_on "pandoc" => :build
  depends_on "neovim"
  depends_on "lua"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
