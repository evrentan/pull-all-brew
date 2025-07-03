class PullAll < Formula
    desc "Bash script to pull all git repos in a directory"
    homepage "https://github.com/evrentan/pull-all"
    url "https://github.com/evrentan/pull-all/archive/refs/tags/v1.1.0.tar.gz"
    sha256 "4b741bd25b22ab6e0b6985257fdcc45d7769cf0b6d332812c512aff86c0796d0"
    license "MIT"
  
    def install
      bin.install "pull-all.sh" => "pull-all"
    end
  
    test do
      assert_match "Usage", shell_output("#{bin}/pull-all help")
    end
  end
