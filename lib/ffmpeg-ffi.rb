require "ffmpeg-ffi/version"
require 'ffmpeg-ffi/c'

module FFmpegFFI
  autoload :Dictionary, 'ffmpeg-ffi/dictionary'
  autoload :DictionaryEntry, 'ffmpeg-ffi/dictionary_entry'
  autoload :Error, 'ffmpeg-ffi/error'
  autoload :FormatContext, 'ffmpeg-ffi/format_context'
  autoload :InputFormat, 'ffmpeg-ffi/input_format'
  autoload :Program, 'ffmpeg-ffi/program'
  autoload :Stream, 'ffmpeg-ffi/stream'

  LOG_QUIET = -8
  LOG_PANIC = 0
  LOG_FATAL = 8
  LOG_ERROR = 16
  LOG_WARNING = 24
  LOG_INFO = 32
  LOG_VERBOSE = 40
  LOG_DEBUG = 48

  def self.log_level
    C::AVUtil.av_log_get_level
  end

  def self.log_level=(level)
    C::AVUtil.av_log_set_level(level)
  end
end
