@echo off
echo Running ZombieAvatarRigSetup.ConfigureZombieCharacterAndAnimations...
"C:\Program Files\Unity\Hub\Editor\6000.3.23f1\Editor\Unity.exe" -batchmode -projectPath "%~dp0." -executeMethod ZombieAvatarRigSetup.ConfigureZombieCharacterAndAnimations -quit -logFile "%~dp0zombie_setup.log"
echo Done.
