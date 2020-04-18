# idp_image_try_1
Just for a test on a docker toolbox worker


Spre deosebire de imaginea din repository-ul idp_image_try_2, aici singura diferenta apare in docker-compose-visualize.yml, si anume aceea ca am inlocuit path-ul de pe host cu path-ul unui volum (pe care il creasem eu anterior, e vorba de my_vol_4). In aceasta imagine, path-ul dat de docker volume inspect my_vol_4 (de la sectiunea mount) se leaga la acelasi path din interiorul containerului, adica /data. Deci, in aceasta imagine avem binding-ul /mnt/sda1/var/lib/docker/volumes/my_vol_4/_data:/data .

Avantajul este evident: imaginea se foloseste de un volum, deci informatia din binding este PERSISTENTA. (in idp_image_try_2 nu era -- vezi si README.md de acolo)
