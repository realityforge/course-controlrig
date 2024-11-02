@echo off
SETLOCAL

rem Vendored assets from trainer

CALL :get_artifact Content/TutorialContent/AlternateMonsterMesh/4LegMonsterSkeletalMesh.uasset https://github.com/realityforge/course-controlrig/releases/download/InitialVendor/4LegMonsterSkeletalMesh.uasset
CALL :get_artifact Content/TutorialContent/AlternateMonsterMesh/backup4Leg.uasset https://github.com/realityforge/course-controlrig/releases/download/InitialVendor/backup4Leg.uasset
CALL :get_artifact Content/TutorialContent/SkeletalMesh/TutorialScorpionMesh.uasset https://github.com/realityforge/course-controlrig/releases/download/InitialVendor/TutorialScorpionMesh.uasset

GOTO :exit

:get_artifact
set "local_file=%1"
set "url=%2"
if not exist "%local_file%" curl -L --output "%local_file%" "%url%"
if NOT ["%errorlevel%"]==["0"] (
    pause
    exit /b %errorlevel%
)
exit /b 0

:exit
exit /b
