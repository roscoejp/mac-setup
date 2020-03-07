on run {input, parameters}

    set inputVolume to input volume of (get volume settings)
    if inputVolume = 0 then
        set inputVolume to 100
        set displayNotification to "Microphone Unmuted"
    else
        set inputVolume to 0
        set displayNotification to "Microphone Muted"
    end if
    set volume input volume inputVolume

    display notification displayNotification
    delay 1

    return input
end run
