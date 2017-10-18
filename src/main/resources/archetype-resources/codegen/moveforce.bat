set dir=..
xcopy output\model	%dir%\demo-domain\src\main\java\com\crv\demo\model /e /y
xcopy output\dao	    %dir%\demo-biz\src\main\java\com\crv\demo\dao /e /y
xcopy output\service	%dir%\demo-biz\src\main\java\com\crv\demo\service /e /y
xcopy output\mybatis	%dir%\demo-biz\src\main\resources\mybatis /e /y
xcopy output\action	%dir%\demo-web\src\main\java\com\crv\demo\action /e /y
xcopy output\view	    %dir%\demo-web\src\main\webapp\WEB-INF\freemarker\views\module /e /y
