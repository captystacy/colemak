^j::send {Down}

XButton2::
{
  Loop
  {
    send {WheelUp}
    if !GetKeyState("XButton2", "P")
    {
    break
    }				
    Sleep 150 ; чем меньше число, тем выше скорость прокрутки
  }
}

XButton1::
{
  Loop
  {
    send {WheelDown}
    if !GetKeyState("XButton1", "P")
    {
    break
    }				
    Sleep 150				
  }
}

return
