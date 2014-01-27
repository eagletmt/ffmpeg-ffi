require 'ffmpeg-ffi'

module FFmpeg
  class Stream
    attr_reader :ptr

    def initialize(ptr)
      @ptr = ptr
    end

    def index
      @ptr[:index]
    end

    def id
      @ptr[:id]
    end

    def codec
      CodecContext.new(@ptr[:codec])
    end

    def time_base
      @ptr[:time_base].to_r
    end

    def metadata
      Dictionary.new(@ptr[:metadata])
    end
  end
end
