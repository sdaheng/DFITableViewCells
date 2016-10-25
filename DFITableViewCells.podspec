Pod::Spec.new do |s|
  s.name         = "DFITableViewCells"
  s.version      = "0.0.3"
  s.summary      = "DFITableViewCells."

  s.description  = <<-DESC
			A description of DFITableViewCells.
                   DESC

  s.homepage     = "https://github.com/sdaheng/DFITableViewCells.git"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "sdaheng" => "shidaheng@gamil.com" }

  s.platform     = :ios
  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/sdaheng/DFITableViewCells.git", :tag => "0.0.3" }

  s.source_files  = "DFITableViewCells/**/*.{h,m}"

  s.public_header_files = ["DFITableViewCells/DFITableViewCells.h",
			   "DFITableViewCells/DFITableViewCellConfigure.h",
			   "DFITableViewCells/DFITableViewCellOption.h",
			   "DFITableViewCells/DFITableViewCellViewModel.h",
			   "DFITableViewCells/UITableViewCell+configure.h",
			   "DFITableViewCells/UITableViewCellConfigureProtocol.h",
			   "DFITableViewCells/UITableViewCellActionDelegate.h",
			   "DFITableViewCells/ConcreteCells/DFIConcreteTableViewCells.h",
			   "DFITableViewCells/ConcreteCells/DFIPlainTableViewCell.h",
			   "DFITableViewCells/ConcreteCells/DFIPlainTableViewCellViewModel.h",
			   "DFITableViewCells/ConcreteCells/DFIPlainTableViewCellOption.h",
			   "DFITableViewCells/ConcreteCells/DFITextFieldTableViewCell.h",
			   "DFITableViewCells/ConcreteCells/DFITextFieldTableViewCellViewModel.h",
			   "DFITableViewCells/ConcreteCells/DFITableViewCellOption+DFITextFieldTableViewCellOptionAddition.h",
			   "DFITableViewCells/ConcreteCells/DFITextViewTableViewCell.h",
			   "DFITableViewCells/ConcreteCells/DFITextViewTableViewCellViewModel.h",
			   "DFITableViewCells/ConcreteCells/DFIButtonTableViewCell.h",
			   "DFITableViewCells/ConcreteCells/DFIButtonTableViewCellViewModel.h",
			   "DFITableViewCells/ConcreteCells/DFISegmentedTableViewCell.h",
			   "DFITableViewCells/ConcreteCells/DFISegmentedTableViewCellViewModel.h"]

  s.requires_arc = true

  s.dependency 'Masonry'
end
