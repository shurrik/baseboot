mysql -uroot -proot ${artifactId}<output\sql\create.sql --default-character-set=utf8
mysql -uroot -proot ${artifactId}<output\sql\resource.sql --default-character-set=utf8
@echo init success!
pause