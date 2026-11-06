@echo off
"C:\Program Files\Unity\Hub\Editor\6000.3.23f1\Editor\Unity.exe" -batchmode -projectPath "%~dp0." -executeMethod HumanCharacterTextureGenerator.GenerateAllHumanTextures -quit -logFile "%~dp0human_texture_gen.log"
