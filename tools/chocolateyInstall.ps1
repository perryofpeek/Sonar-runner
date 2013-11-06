try {
  $version = "2.3"	
  $url = "http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/$version/sonar-runner-dist-$version.zip"
  $packagename = "sonar-runner-dist-$version"
  $unzipLocation = "c:\Sonarqube"
  Install-ChocolateyZipPackage $packageName $url $unzipLocation  
  Install-ChocolateyPath "$unzipLocation\sonar-runner-$Version\bin" 'Machine'
  Write-ChocolateySuccess $packagename
} catch {
  Write-ChocolateyFailure $packagename $($_.Exception.Message)
  throw
}
