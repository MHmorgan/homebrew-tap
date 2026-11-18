class Reminders < Formula
  desc "Find @Todo-style reminder tags in source code"
  homepage "https://codefloe.com/MHirth/reminders"
  license "MPL-2.0"
  head "https://codefloe.com/MHirth/reminders.git", branch: "main"

  depends_on "go" => :build
  depends_on "just" => :build

  def install
    system "just", "install", bin.to_s
  end

  test do
    (testpath/"a.go").write <<~GO
      package x
      // @Todo @Cleanup this code
    GO
    assert_match "this code", shell_output(bin/"reminders")
  end
end
