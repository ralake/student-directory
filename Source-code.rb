def source_code
	code = File.open(__FILE__).readlines
	puts code
end

source_code