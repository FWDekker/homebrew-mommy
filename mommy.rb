class Mommy < Formula
  desc "mommy's here to support you, in any shell, on any system~ ❤️"
  homepage "https://github.com/FWDekker/mommy"
  url "https://github.com/FWDekker/mommy/archive/v1.4.0.tar.gz"
  sha256 "262329d5640b022932aa7f29016f5aad341bc5a64887cbc34a03936757c85b43"
  # The 'head' defines the development branch of the recipe
  head "https://github.com/FWDekker/mommy.git", branch: "dev"
  license "Unlicense"

  def install
    system("make", "prefix=#{prefix}/", "install")
  end

  test do
    ("#{testpath}/config.sh").write("MOMMY_COMPLIMENTS='horizon'")
    assert_equal("horizon", shell_output("#{bin}/mommy -c #{testpath}/config.sh -s 0").strip)
  end
end
