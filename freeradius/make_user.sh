
#!/bin/bash

for i in {0..999};do
  printf "username%05d Cleartext-Password := \"password%05d\"\n" "${i}" "${i}"
done


