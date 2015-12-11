cd "`dirname "$0"`"

./mogenerator --swift --template-var arc=true -m ../../11_MagicalRecord/Model/Student.xcdatamodeld/Student.xcdatamodel -M ../../11_MagicalRecord/Model/Parent -H ../../11_MagicalRecord/Model/ --template-path ./templates/
