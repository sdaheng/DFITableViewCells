Pod::Spec.new do |s|
  s.name         = "DFITableViewCells"
  s.version      = "0.0.1"
  s.summary      = "DFITableViewCells."

  s.description  = <<-DESC
			A description of DFITableViewCells.
                   DESC

  s.homepage     = "https://github.com/sdaheng/DFITableViewCells.git"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "sdaheng" => "shidaheng@gamil.com" }

  s.platform     = :ios

  # s.ios.deployment_target = "5.0"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/sdaheng/DFITableViewCells.git", :tag => "0.0.1" }

  s.source_files  = "DFITableViewCells/*.{h,m}", 'DFITableViewCells/ConcreteCells/'

  s.public_header_files = "DFITableViewCells/DFITableViewCells.h", 'DFITableViewCells/ConcreteCells/DFIConcreteTableViewCells.h'

  s.requires_arc = true

  s.dependency 'Masonry'
end
