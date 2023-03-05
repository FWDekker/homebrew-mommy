class Mommy < Formula
  desc "mommy's here to support you, in any shell, on any unix system~ ❤️"
  homepage "https://github.com/FWDekker/mommy"
  url "https://github.com/FWDekker/mommy/archive/v1.2.1.tar.gz"
  sha256 "c9439aa95d96253ac620daa2e41365555780e582a86b72ab1cfe31b1967bdfa3"
  head "https://github.com/FWDekker/mommy.git", branch: "dev"
  license "Unlicense"

  def install
    system("make", "prefix=#{prefix}/",
                   "bin_prefix=#{prefix}/bin/",
                   "man_prefix=#{prefix}/share/man/man1/",
                   "fish_prefix=#{prefix}/share/fish/vendor_completions.d/",
                   "zsh_prefix=#{prefix}/share/zsh/site-functions/",
                   "install")
  end

  test do
    ("#{testpath}/config.sh").write("MOMMY_COMPLIMENTS='horizon'")
    assert_equal("horizon", shell_output("#{bin}/mommy -c #{testpath}/config.sh -s 0").strip)
  end
end
