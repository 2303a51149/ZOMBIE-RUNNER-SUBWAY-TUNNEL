@echo off
"C:\Program Files\Unity\Hub\Editor\6000.3.23f1\Editor\Unity.exe" -batchmode -projectPath "%~dp0." -executeMethod WindowsBuildScript.BuildWindows -quit -logFile "%~dp0build_textured.log"
