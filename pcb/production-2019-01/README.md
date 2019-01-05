# Production files, 2019-01-05

Gerbers and drill files of the produced LED dimmer addon board (KiCad 5.0.1, 2019-01-05).
`output.zip` contains the same 9 files as `output/`.

Verified on 2026-11-24 by re-exporting `../addon-led-dimmer.kicad_pcb` with kicad-cli 10: all 144 F.Cu + 57 B.Cu
tracks and all 48 PTH + 2 NPTH holes match these files. The PCB source in `../` is therefore exactly the board
that was made.

These files were in the first commit and were removed in "Repository cleanup" (f831acf). They are restored
here so the production files of the physical boards stay visible.
