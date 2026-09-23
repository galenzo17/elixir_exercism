defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 and not legacy? -> :trace
      level == 1 and legacy? or level == 1 and not legacy? -> :debug
      level == 2 and legacy? or level == 2 and not legacy? -> :info
      level == 3 and legacy? or level == 3 and not legacy? -> :warning
      level == 4 and legacy? or level == 4 and not legacy? -> :error
      level == 5 and not legacy? -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)
    cond do
      label in [:error, :fatal] -> :ops
      label == :unknown and legacy? -> :dev1 
      label == :unknown -> :dev2
      true -> false
    end
  end
end
