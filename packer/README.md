packer build stage_build.json

packer build -var "USER=o.sagan" stage_build.json
packer build -var "USER=o.sagan" stage_build.json | tee build.log

./packer.sh o.sagan i.chepikov a.zhdanov 
