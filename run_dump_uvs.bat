@echo off
"C:\Program Files\Unity\Hub\Editor\6000.3.23f1\Editor\Unity.exe" -batchmode -projectPath "%~dp0." -executeMethod UVLayoutDumper.DumpUVs -quit -logFile "%~dp0uv_dump.log"
