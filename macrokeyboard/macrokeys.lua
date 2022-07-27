clear()
print('Running')
--lmc_assign_keyboard('MACROS');
lmc_device_set_name('MACROS','1E1F41A7')


lmc_set_handler('MACROS',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  print('Key: ' .. button)
  lmc_send_input(131, 0, 0)
  lmc_send_input(button, 0, 0)
  lmc_send_input(button, 0, 2)
  lmc_send_input(131, 0, 2)

  --if     (button == string.byte('A')) then
         --lmc_send_keys("{f12}")
  --elseif (button == string.byte('H')) then
         --lmc_send_input(131, 0, 0)
         --lmc_send_input(72, 0, 0)
         --lmc_send_input(72, 0, 2)
         --lmc_send_input(131, 0, 2)

  --elseif (button == string.byte('G')) then


  --end
end)
