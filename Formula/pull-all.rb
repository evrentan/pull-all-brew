class PullAll < Formula
    desc "Bash script to pull all git repos in a directory"
    homepage "https://github.com/evrentan/pull-all"
    url "https://github.com/evrentan/pull-all/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "5fdca5d215781ec9f3474fc16cde8b5094ccb9023817cdcd5974858c39e0f77c"
    license "MIT"
  
    def install
      bin.install "pull-all.sh" => "pull-all"
    end
  
    test do
      assert_match "Usage", shell_output("#{bin}/pull-all help")
    end
  end
