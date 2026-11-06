@echo off
echo ======================================================================
echo 1. RUNNING SCENE SETUP AND ASSET BAKE...
echo ======================================================================
"C:\Program Files\Unity\Hub\Editor\6000.3.23f1\Editor\Unity.exe" -batchmode -projectPath "%~dp0." -executeMethod SubwayRunnerSetup.SetupCompleteScene -quit -logFile "%~dp0setup.log"
echo Setup finished with exit code %ERRORLEVEL%

echo ======================================================================
echo 2. RUNNING AUTOMATED UNIT AND INTEGRATION TESTS...
echo ======================================================================
"C:\Program Files\Unity\Hub\Editor\6000.3.23f1\Editor\Unity.exe" -batchmode -projectPath "%~dp0." -executeMethod PlayerMovementTestSuite.RunAllTests -quit -logFile "%~dp0test_suite.log"
echo Tests finished with exit code %ERRORLEVEL%

echo ======================================================================
echo 3. CAPTURING HIGH-RES VISUAL QA SCREENSHOT...
echo ======================================================================
"C:\Program Files\Unity\Hub\Editor\6000.3.23f1\Editor\Unity.exe" -batchmode -projectPath "%~dp0." -executeMethod SubwayVisualCapture.CaptureCurrentView -quit -logFile "%~dp0capture.log"
echo Capture finished with exit code %ERRORLEVEL%

echo ======================================================================
echo 4. BUILDING WINDOWS 64-BIT STANDALONE PLAYER...
echo ======================================================================
"C:\Program Files\Unity\Hub\Editor\6000.3.23f1\Editor\Unity.exe" -batchmode -projectPath "%~dp0." -executeMethod WindowsBuildScript.BuildWindows -quit -logFile "%~dp0build.log"
echo Build finished with exit code %ERRORLEVEL%

echo ======================================================================
echo ALL PIPELINE STAGES COMPLETED.
echo ======================================================================
