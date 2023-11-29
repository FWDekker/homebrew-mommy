class Mommy < Formula
  desc "mommy's here to support you, in any shell, on any system~ ❤️"
  homepage "https://github.com/FWDekker/mommy"
  url "https://github.com/FWDekker/mommy/archive/v1.2.6.tar.gz"
  sha256 "7659c4ff975af6de44f55003501eeaa7f1bba42cc7b0d96ef4abda5835a1244a"
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
