require "streeem/version"

module Streeem
  def self.do
    stdin_sync = $stdin.sync
    stdout_sync = $stdout.sync

    $stdin.sync = true
    $stdout.sync = true

    if block_given?
      $stdin.each {|line|
        $stdout.write "#{yield(line.strip)}\n"
      }
    end

    $stdin.sync = stdin_sync
    $stdout.sync = stdout_sync
  end
end
