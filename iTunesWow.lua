function iTunes(command)
  os.execute(
    interp(
      'osascript -e \'tell application "iTunes" to ${command}\'',
      { command = command }
    )
  )
end

function interp(s, tab)
  return (s:gsub('($%b{})', function(w) return tab[w:sub(3, -2)] or w end))
end
