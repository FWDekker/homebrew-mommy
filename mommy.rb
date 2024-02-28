class Mommy < Formula
  desc "mommy's here to support you, in any shell, on any system~ ❤️"
  homepage "https://github.com/FWDekker/mommy"
  url "https://github.com/FWDekker/mommy/archive/v1.5.0.tar.gz"
  sha256 "1124589a49224fd520bdb00ba0da458a3be3a4aa68435ad624b6dbf421583cb2"
  # The 'head' defines the development branch of the recipe
  head "https://github.com/FWDekker/mommy.git", branch: "main"
  license "Unlicense"

  def install
    system("make", "prefix=#{prefix}/", "install")
  end

  test do
    ("#{testpath}/config.sh").write("MOMMY_COMPLIMENTS='horizon'")
    assert_equal("horizon", shell_output("#{bin}/mommy -c #{testpath}/config.sh -s 0").strip)
  end
end
