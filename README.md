# jstltest

Eclipseもmavenも使わないで、
JSPでEL式とJSTLを動かすサンプル。

Tomcat 9 + JAVA 8でテスト。


# 配置

tomcatのwebappsの下にgit cloneして

```sh
WEB-INF/tools/get_jstl_jar.sh
```
で準備完了。

Tomcatを再起動して
```sh
WEB-INF/tools/curl_test.sh
```
で動作確認。


# メモ

web.xmlに
`<el-ignored>false</el-ignored>`
を書く方法はどうやってもダメだった。

JSTLの変数は、デフォルトではPageContextスコープattributeとして設定される。

> ELが変数を参照する場合， PageContext.findAttribute("変数名") により値が参照されます

引用: [Standard TaglibsによるJSTLの利用](http://www.visards.co.jp/java/jstl/jstl05.html)

どうやら全部のスコープ(ページスコープ、リクエストスコープ、セッションスコープ、アプリケーションスコープ)を横断してさがしてくれるらしい。

```java
String s = "test";
```
とかは、JSPのクラス(`org.apache.jsp.jstl_jsp`)中でローカル変数になる。

# 参考

[JSTL (1.2) のインストール手順 - IT入門書籍 スッキリシリーズ](https://sukkiri.jp/technologies/libraries/jstl/jstl_install.html)
