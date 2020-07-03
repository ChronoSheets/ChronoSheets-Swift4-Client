Pod::Spec.new do |s|
  s.name = 'ChronoSheetsAPI'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '1.0.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'vv1' }
  s.authors = 'Lachlan Pearce'
  s.license = 
  s.homepage = 'http://tsheets.xyz/api'
  s.summary = 'Swift4 API Client for ChronoSheets'
  s.description = 'ChronoSheets is a flexible timesheet solution for small to medium businesses, it is free for small teams of up to 5 and there are iOS and Android apps available. Use the ChronoSheets API to create your own custom integrations. Before starting, sign up for a ChronoSheets account at http://tsheets.xyz/signup.'
  s.documentation_url = 'http://tsheets.xyz/api'
  s.source_files = 'ChronoSheetsAPI/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.9.0'
end
