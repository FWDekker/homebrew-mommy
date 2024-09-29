class Mommy < Formula
  desc "mommy's here to support you, in any shell, on any system~ ❤️"
  homepage "https://github.com/FWDekker/mommy"
  url "https://github.com/FWDekker/mommy/archive/v1.5.1.tar.gz"
  sha256 "7e484f4ed6227621336b3c1fe2e840456e1705801e2666cc43d9c1e301931249"
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
