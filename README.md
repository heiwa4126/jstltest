# jstltest

Eclipseもmavenも使わないで、
JSPでEL式とJSTLを動かすサンプル
Tomcat 9 + JAVA 8でテスト。


# 作業

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


# 参考

[JSTL (1.2) のインストール手順 - IT入門書籍 スッキリシリーズ](https://sukkiri.jp/technologies/libraries/jstl/jstl_install.html)