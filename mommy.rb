class Mommy < Formula
  desc "mommy's here to support you, in any shell, on any unix system~ ❤️"
  homepage "https://github.com/FWDekker/mommy"
  url "asdf"
  sha256 "asdf"
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
