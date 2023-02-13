clear()
print('Running')
-- assign logical name to macro keyboard
lmc_assign_keyboard('MACROS');
print(MACROS)
-- define callback for whole device
lmc_set_handler('MACROS',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  print('Key: ' .. button)
  if     (button == string.byte('C')) then
         clear()


  end
end)
