class Mommy < Formula
  desc "mommy's here to support you, in any shell, on any unix system~ ❤️"
  homepage "https://github.com/FWDekker/mommy"
  url "https://github.com/FWDekker/mommy/archive/v1.2.1.tar.gz"
  sha256 "c9439aa95d96253ac620daa2e41365555780e582a86b72ab1cfe31b1967bdfa3"
  license "Unlicense"

  def install
    ENV["PREFIX"] = "#{prefix}"
    system("./build.sh", "install")
  end

  test do
    ("#{testpath}/config.sh").write("MOMMY_COMPLIMENTS='horizon'")

    assert_equal("horizon", shell_output("#{bin}/mommy -c #{testpath}/config.sh -s 0").strip)
  end
end
