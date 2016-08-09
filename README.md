1 mvn clean install

2 mvn archetype:generate -B -U -DarchetypeGroupId=com.shurrik -DarchetypeArtifactId=baseboot -DarchetypeRepository=local -DarchetypeVersion=1.0-SNAPSHOT -DgroupId=com.shurrik -DartifactId=demo -Dversion=0.0.1-SNAPSHOT -Dpackage=com.shurrik -Dproject_name=demo -Dcorp=shurrik

3 cd demo

4 initDB.bat

5 startup.bat
