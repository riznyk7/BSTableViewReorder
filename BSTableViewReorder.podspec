#
# Be sure to run `pod lib lint BSTableViewReorder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "BSTableViewReorder"
  s.version          = "1.2.1"
  s.summary          = "hello, this is simple extension for UITableView."

  s.description      = "Use BSTableViewReorderEverywhere you need drag and drop your cell at any touch point. It works with multiply sections. Customize your snapshot"

  s.homepage         = "https://github.com/kunass2/BSTableViewReorder"
  s.license          = 'MIT'
  s.author           = { "Bartłomiej Semańczyk" => "bartekss2@icloud.com" }
  s.source           = { :git => "https://github.com/kunass2/BSTableViewReorder.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

end
