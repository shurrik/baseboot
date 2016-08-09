mysql -uroot -proot -e "create database ${artifactId};"
mysql -uroot -proot ${artifactId}<sys.sql
@echo init success!
pause