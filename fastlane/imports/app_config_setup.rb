lane :setup_app_config do
    puts("----> Start Setup app_config.dart")
    file_name = "../../lib/core/configuration/app_config.dart"
    config = eval(ENV['APP_CONFIG'])
    env = ENV['APP_ENV']
    puts("The current env is #{env} #{config}")
    content = File.read(file_name)
    config.each do |key, value|
        regex = /#{key} = .+(?=,)/
        match = content.match(regex)
        if match
            # check if the value is a string, if yes then wrap the new value with ''
            value = "\'#{value}\'" if match[0] =~ /(['"]).+\1/
            new_value = "#{key} = #{value}"
            # puts("Set #{key} to #{value}")
            content = content.gsub(regex, new_value)
        end
    end
    puts("----> End app_config.dart")
end