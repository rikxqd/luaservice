require('luaunit')

module("TestSWIG", package.seeall)
TestSWIG = _M

function TestSWIG:test01()
    assert(require"win32ser")
    assert(win32ser)
end

function TestSWIG:test02()
    assert(require"win32ser")
    assert(win32ser)
    assertEquals(type(win32ser), "table")
end

function TestSWIG:test03()
    assert(require"win32ser")
    assert(win32ser)

    -- msgbox.i functions
    --assertEquals(type(win32ser.GetActiveWindow), "func".."tion")
    --assertEquals(type(win32ser.GetDesktopWindow), "func".."tion")
    --assertEquals(type(win32ser.GetForegroundWindow), "func".."tion")
    assertEquals(type(win32ser.MessageBeep), "func".."tion")
    assertEquals(type(win32ser.MessageBox), "func".."tion")
end

function TestSWIG:test04()
    assert(require"win32ser")
    assert(win32ser)

    -- msgbox.i constants
    assertEquals(win32ser.MB_ICONASTERISK, 64)
    assertEquals(win32ser.MB_ICONEXCLAMATION, 0x30)
    assertEquals(win32ser.MB_ICONWARNING, 0x30)
    assertEquals(win32ser.MB_ICONERROR, 16)
    assertEquals(win32ser.MB_ICONHAND, 16)
    assertEquals(win32ser.MB_OK, 0)
    assertEquals(win32ser.MB_ABORTRETRYIGNORE, 2)
    assertEquals(win32ser.MB_DEFBUTTON1, 0)
    assertEquals(win32ser.MB_DEFBUTTON2, 256)
    assertEquals(win32ser.MB_DEFBUTTON3, 512)
    assertEquals(win32ser.MB_DEFBUTTON4, 0x300)
    assertEquals(win32ser.MB_ICONINFORMATION, 64)
    assertEquals(win32ser.MB_ICONSTOP, 16)
    assertEquals(win32ser.MB_OKCANCEL, 1)
    assertEquals(win32ser.MB_RETRYCANCEL, 5)
    assertEquals(win32ser.MB_YESNO, 4)
    assertEquals(win32ser.MB_YESNOCANCEL, 3)
    assertEquals(win32ser.IDOK, 1)
    assertEquals(win32ser.IDCANCEL, 2)
    assertEquals(win32ser.IDABORT, 3)
    assertEquals(win32ser.IDRETRY, 4)
    assertEquals(win32ser.IDIGNORE, 5)
    assertEquals(win32ser.IDYES, 6)
    assertEquals(win32ser.IDNO, 7)
end

local function assertEqualsOrNil(actual, expected)
    if actual == nil then return end
    return assertEquals(actual, expected)
end

function TestSWIG:test05()
    assert(require"win32ser")
    assert(win32ser)

--#if (WINVER >= 0x0500)
    assertEqualsOrNil(win32ser.MB_CANCELTRYCONTINUE, 6)
--#endif
--#if (WINVER >= 0x0400)
    assertEqualsOrNil(win32ser.IDCLOSE, 8)
    assertEqualsOrNil(win32ser.IDHELP, 9)
--#endif
--#if (WINVER >= 0x0500)
    assertEqualsOrNil(win32ser.IDTRYAGAIN, 10)
    assertEqualsOrNil(win32ser.IDCONTINUE, 11)
--#endif
end

local function assertIsFunc(f)
    return assertEquals(type(f),type(assertIsFunc))
end

function TestSWIG:test06()
    assert(require"win32ser")
    assert(win32ser)

    -- sermod.i functions
    assertIsFunc(win32ser.BuildCommDCB)
    assertIsFunc(win32ser.BuildCommDCBAndTimeouts)
    assertIsFunc(win32ser.CommConfigDialog)
    assertIsFunc(win32ser.GetDefaultCommConfig)
    assertIsFunc(win32ser.SetDefaultCommConfig)
    assertIsFunc(win32ser.GetLastError)
    assertIsFunc(win32ser.SetLastError)
    assertIsFunc(win32ser.ErrorMessage)

end

function TestSWIG:test07()
    assert(require"win32ser")
    assert(win32ser)

    -- sermod.i functions
    assertIsFunc(win32ser.OpenPort)
    assertIsFunc(win32ser.ClosePort)
    assertIsFunc(win32ser.ReadPort)
    assertIsFunc(win32ser.WritePort)
end

function TestSWIG:test08()
    assert(require"win32ser")
    assert(win32ser)

    -- sermod.i HPORT methods
    assertIsFunc(win32ser.HPORT_ClearCommBreak)
    assertIsFunc(win32ser.HPORT_ClearCommError)
    assertIsFunc(win32ser.HPORT_EscapeCommFunction)
    assertIsFunc(win32ser.HPORT_GetCommConfig)
    assertIsFunc(win32ser.HPORT_GetCommMask)
    assertIsFunc(win32ser.HPORT_GetCommModemStatus)
    assertIsFunc(win32ser.HPORT_GetCommProperties)
    assertIsFunc(win32ser.HPORT_GetCommState)
    assertIsFunc(win32ser.HPORT_GetCommTimeouts)
    assertIsFunc(win32ser.HPORT_PurgeComm)
    assertIsFunc(win32ser.HPORT_SetCommBreak)
    assertIsFunc(win32ser.HPORT_SetCommConfig)
    assertIsFunc(win32ser.HPORT_SetCommMask)
    assertIsFunc(win32ser.HPORT_SetCommState)
    assertIsFunc(win32ser.HPORT_SetCommTimeouts)
    assertIsFunc(win32ser.HPORT_SetupComm)
    assertIsFunc(win32ser.HPORT_TransmitCommChar)
end

