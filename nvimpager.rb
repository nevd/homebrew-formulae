class Nvimpager < Formula
  desc "Use nViM as PAGER"
  homepage "https://github.com/lucc/nvimpager"
  url "https://github.com/lucc/nvimpager/archive/v0.4.1.tar.gz"
  sha256 "06cf401a8c8a3100e41e9dd0af77b72d14a57e686779c61d6c1efc3301827437"
  head "https://github.com/lucc/nvimpager.git"

  option "with-pandoc", "Use pandoc to build and install man pages"
  depends_on "pandoc" => [:build, :optional]

  def install
    system "make", "install", "PREFIX=#{prefix}"
    system "make", "docs" if build.with? "pandoc"
  end

  def caveats; <<~EOS
    To use nvimpager as your default pager, add `export PAGER=nvimpager` to your
    shell configuration.
  EOS
  end

  test do
    (testpath/"test.txt").write <<~EOS
      This is test
    EOS

    assert_match(/This is test/, shell_output("#{bin}/nvimcat test.txt"))
  end
end
