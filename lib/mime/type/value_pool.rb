# frozen_string_literal: true

MIME::Type::ValuePool = Hash.new { |h, k|
  begin
    k = k.dup
  rescue TypeError
    k
  else
    k.freeze
  end

  h[k] = k
}
