@echo off
"C:\Program Files\Unity\Hub\Editor\6000.3.23f1\Editor\Unity.exe" -batchmode -projectPath "%~dp0." -executeMethod SubwayRunnerSetup.SetupCompleteScene -quit -logFile "%~dp0setup.log"
"C:\Program Files\Unity\Hub\Editor\6000.3.23f1\Editor\Unity.exe" -batchmode -projectPath "%~dp0." -executeMethod PlayerMovementTestSuite.RunAllTests -quit -logFile "%~dp0test_suite.log"
"C:\Program Files\Unity\Hub\Editor\6000.3.23f1\Editor\Unity.exe" -batchmode -projectPath "%~dp0." -executeMethod SubwayVisualCapture.CaptureCurrentView -quit -logFile "%~dp0capture.log"
