set dir=..
xcopy output\model	%dir%\\${artifactId}-domain\src\main\java\\${domain}\\${corp}\\${artifactId}\model /e
xcopy output\dao	    %dir%\\${artifactId}-biz\src\main\java\\${domain}\\${corp}\\${artifactId}\dao /e
xcopy output\service	%dir%\\${artifactId}-biz\src\main\java\\${domain}\\${corp}\\${artifactId}\service /e
xcopy output\mybatis	%dir%\\${artifactId}-biz\src\main\resources\mybatis /e
xcopy output\action	%dir%\\${artifactId}-web\src\main\java\\${domain}\\${corp}\\${artifactId}\action /e
xcopy output\view	    %dir%\\${artifactId}-web\src\main\webapp\WEB-INF\freemarker\views\module /e
PAUSE