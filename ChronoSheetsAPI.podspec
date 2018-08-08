Pod::Spec.new do |s|
  s.name = 'ChronoSheetsAPI'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '1.0.0'
  s.source = { :git => 'git@github.com:swagger-api/swagger-mustache.git', :tag => 'v1.0.0' }
  s.authors = 'Lachlan Pearce'
  s.license = 
  s.homepage = 'http://tsheets.xyz/api'
  s.summary = 'Swift4 API Client for ChronoSheets'
  s.description = 'Swift4 API Client for ChronoSheets'
  s.documentation_url = 'http://tsheets.xyz/api'
  s.source_files = 'ChronoSheetsAPI/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.5.0'
end
