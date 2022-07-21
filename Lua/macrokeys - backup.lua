clear()
print('Running')
-- assign logical name to macro keyboard
-- lmc_assign_keyboard('MACROS');
lmc_device_set_name('MACROS','1E1F41A7')
-- define callback for whole device

lmc_set_handler('MACROS',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  print('Key: ' .. button)
  if     (button == string.byte('C')) then
         lmc_send_keys("{f12}")
  elseif (button == string.byte('H')) then
         lmc_send_input(131, 0, 0)
         lmc_send_input(72, 0, 0)
         lmc_send_input(72, 0, 2)
         lmc_send_input(131, 0, 2)

  elseif (button == string.byte('G')) then


  end
end)
