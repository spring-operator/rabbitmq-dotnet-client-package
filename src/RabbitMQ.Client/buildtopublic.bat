rmdir /S /Q deploy
..\Tools\NuGet\NuGet.exe pack pkg\RabbitMQ.Client.nuspec
mkdir deploy
for /f %%a in ('dir /b /s .\*.nupkg') do call move /Y %%a deploy
for /f %%a in ('dir /b /s .\deploy\*.nupkg') do call ..\Tools\NuGet\NuGet.exe push %%a