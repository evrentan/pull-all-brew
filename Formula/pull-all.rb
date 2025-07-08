class PullAll < Formula
    desc "Bash script to pull all git repos in a directory"
    homepage "https://github.com/evrentan/pull-all"
    url "https://github.com/evrentan/pull-all/archive/refs/tags/v1.2.0.tar.gz"
    sha256 "c4417857a11eb18c694ea26dcd2c005d082bf70103621b59fd962503e1dcd21b"
    license "MIT"
  
    def install
      bin.install "pull-all.sh" => "pull-all"
    end
  
    test do
      assert_match "Usage", shell_output("#{bin}/pull-all help")
    end
  end
