import nimraylib_now

proc UpdateGameWindow() {.cdecl.} =
  beginDrawing:
    clearBackground(RayWhite)
    drawText("Test", 10, 10, 20, Black)

proc main() =
  initWindow(800, 600, "[nim]RaylibNow!") 
  emscriptenSetMainLoop(UpdateGameWindow, 0, 1)
  closeWindow()

when isMainModule: main()