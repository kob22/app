
{:pl => { :i18n => { :plural => { :keys => [:one, :few, :other], :rule => lambda { |n| n == 1 ? :one : [2, 3, 4].include?(n % 10) && ![12, 13, 14].include?(n % 100) && ![22, 23, 24].include?(n % 100) ? :few : :other } } } } }
