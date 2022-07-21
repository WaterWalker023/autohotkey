lmc_device_set_name('macroboard','1E1F41A7')
lmc_print_devices()

lmc_set_handler('macroboard', function(button,direction)
  if (direction == 1) then return end
  if (button == 13) then
    lmc_send_keys('^{ENTER}', 50)

    elseif (button == 97) then
    lmc_send_keys('^{NUM1}', 50)

    elseif (button == 98) then
    lmc_send_keys('^{NUM2}', 50)

    elseif (button == 99) then
    lmc_send_keys('^{NUM3}', 50)

    elseif (button == 100) then
    lmc_send_keys('^{NUM4}', 50)

    elseif (button == 101) then
    lmc_send_keys('^{NUM5}', 50)

    elseif (button == 102) then
    lmc_send_keys('^{NUM6}', 50)

    elseif (button == 103) then
    lmc_send_keys('^{NUM7}', 50)

    elseif (button == 104) then
    lmc_send_keys('^{NUM8}', 50)

    elseif (button == 105) then
    lmc_send_keys('^{NUM9}', 50)

    elseif (button == 111) then
    lmc_send_keys('^{NUMDIVIDE}', 50)

    elseif (button == 106) then
    lmc_send_keys('^{NUMMULTIPLY}', 50)

    elseif (button == 109) then
    lmc_send_keys('^{NUMMINUS}', 50)

    elseif (button == 107) then
    lmc_send_keys('^{NUMPLUS}', 50)

    elseif (button == 8) then
    lmc_send_keys('^{BACKSPACE}', 50)

    elseif (button == 110) then
    lmc_send_keys('^{NUMDECIMAL}', 50)

    elseif (button == 96) then
    lmc_send_keys('^{NUM0}', 50)
  end
end
)
