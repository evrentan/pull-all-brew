class PullAll < Formula
    desc "Bash script to pull all git repos in a directory"
    homepage "https://github.com/evrentan/pull-all"
    url "https://github.com/evrentan/pull-all/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "a5b6ebfbc19e6560c42c2a95a39e9a84d6366839283987b33384946366790d35"
    license "MIT"
  
    def install
      bin.install "pull-all.sh" => "pull-all"
    end
  
    test do
      assert_match "Usage", shell_output("#{bin}/pull-all help")
    end
  end
