.class public Lcom/alipay/sdk/widget/j;
.super Lcom/alipay/sdk/widget/g;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/sdk/widget/WebViewWindow$a;
.implements Lcom/alipay/sdk/widget/WebViewWindow$b;
.implements Lcom/alipay/sdk/widget/WebViewWindow$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/widget/j$a;
    }
.end annotation


# instance fields
.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Lcom/alipay/sdk/widget/WebViewWindow;

.field private y:Lcom/alipay/sdk/widget/u;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/g;-><init>(Landroid/app/Activity;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/widget/j;->t:Z

    .line 44
    const-string v0, "GET"

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->u:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/widget/j;->v:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    .line 55
    new-instance v0, Lcom/alipay/sdk/widget/u;

    invoke-direct {v0}, Lcom/alipay/sdk/widget/u;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    .line 59
    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->c()Z

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/widget/j;)Lcom/alipay/sdk/widget/WebViewWindow;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 342
    invoke-static {p3}, Lcom/alipay/sdk/util/m;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 344
    const-string v3, "title"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const-string v3, "refresh"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 348
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 349
    :cond_2
    const-string v3, "back"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->e()V

    goto :goto_0

    .line 351
    :cond_3
    const-string v3, "exit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 352
    const-string v1, "result"

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    .line 353
    const-string v1, "success"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/j;->a(Z)V

    goto :goto_0

    .line 354
    :cond_4
    const-string v3, "backButton"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 356
    const-string v3, "show"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 357
    iget-object v3, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v3}, Lcom/alipay/sdk/widget/WebViewWindow;->getBackButton()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v2, :cond_5

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 358
    :cond_6
    const-string v3, "refreshButton"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 359
    const-string v3, "show"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 360
    iget-object v3, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v3}, Lcom/alipay/sdk/widget/WebViewWindow;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v2, :cond_7

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 361
    :cond_8
    const-string v0, "pushWindow"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "url"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    const-string/jumbo v0, "url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    const-string v1, "title"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-direct {p0, v0, v1}, Lcom/alipay/sdk/widget/j;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 103
    invoke-static {p1}, Lcom/alipay/sdk/app/j;->a(Z)V

    .line 104
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/widget/j;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/alipay/sdk/widget/j;->v:Z

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 307
    invoke-static {p1}, Lcom/alipay/sdk/util/m;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 309
    const-string v0, "callNativeFunc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const-string v0, "func"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cbId"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "data"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/sdk/widget/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string v0, "onBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->e()V

    goto :goto_0

    .line 313
    :cond_2
    const-string v0, "setTitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "title"

    .line 314
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    const-string v0, "title"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    :cond_3
    const-string v0, "onRefresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 318
    :cond_4
    const-string v0, "showBackButton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "bshow"

    .line 319
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 320
    const-string/jumbo v1, "true"

    const-string v0, "bshow"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 321
    iget-object v1, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v1}, Lcom/alipay/sdk/widget/WebViewWindow;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    goto :goto_1

    .line 322
    :cond_6
    const-string v0, "onExit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    const-string v0, "result"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v1, "true"

    const-string v0, "bsucc"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/j;->a(Z)V

    goto/16 :goto_0

    .line 325
    :cond_7
    const-string v0, "onLoadJs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    const-string v1, "javascript:(function() {\n    if (window.AlipayJSBridge) {\n        return\n    }\n\n    function alipayjsbridgeFunc(url) {\n        var iframe = document.createElement(\"iframe\");\n        iframe.style.width = \"1px\";\n        iframe.style.height = \"1px\";\n        iframe.style.display = \"none\";\n        iframe.src = url;\n        document.body.appendChild(iframe);\n        setTimeout(function() {\n            document.body.removeChild(iframe)\n        }, 100)\n    }\n    window.alipayjsbridgeSetTitle = function(title) {\n        document.title = title;\n        alipayjsbridgeFunc(\"alipayjsbridge://setTitle?title=\" + encodeURIComponent(title))\n    };\n    window.alipayjsbridgeRefresh = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onRefresh?\")\n    };\n    window.alipayjsbridgeBack = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onBack?\")\n    };\n    window.alipayjsbridgeExit = function(bsucc) {\n        alipayjsbridgeFunc(\"alipayjsbridge://onExit?bsucc=\" + bsucc)\n    };\n    window.alipayjsbridgeShowBackButton = function(bshow) {\n        alipayjsbridgeFunc(\"alipayjsbridge://showBackButton?bshow=\" + bshow)\n    };\n    window.AlipayJSBridge = {\n        version: \"2.0\",\n        addListener: addListener,\n        hasListener: hasListener,\n        callListener: callListener,\n        callNativeFunc: callNativeFunc,\n        callBackFromNativeFunc: callBackFromNativeFunc\n    };\n    var uniqueId = 1;\n    var h5JsCallbackMap = {};\n\n    function iframeCall(paramStr) {\n        setTimeout(function() {\n        \tvar iframe = document.createElement(\"iframe\");\n        \tiframe.style.width = \"1px\";\n        \tiframe.style.height = \"1px\";\n        \tiframe.style.display = \"none\";\n        \tiframe.src = \"alipayjsbridge://callNativeFunc?\" + paramStr;\n        \tvar parent = document.body || document.documentElement;\n        \tparent.appendChild(iframe);\n        \tsetTimeout(function() {\n            \tparent.removeChild(iframe)\n        \t}, 0)\n        }, 0)\n    }\n\n    function callNativeFunc(nativeFuncName, data, h5JsCallback) {\n        var h5JsCallbackId = \"\";\n        if (h5JsCallback) {\n            h5JsCallbackId = \"cb_\" + (uniqueId++) + \"_\" + new Date().getTime();\n            h5JsCallbackMap[h5JsCallbackId] = h5JsCallback\n        }\n        var dataStr = \"\";\n        if (data) {\n            dataStr = encodeURIComponent(JSON.stringify(data))\n        }\n        var paramStr = \"func=\" + nativeFuncName + \"&cbId=\" + h5JsCallbackId + \"&data=\" + dataStr;\n        iframeCall(paramStr)\n    }\n\n    function callBackFromNativeFunc(h5JsCallbackId, data) {\n        var h5JsCallback = h5JsCallbackMap[h5JsCallbackId];\n        if (h5JsCallback) {\n            h5JsCallback(data);\n            delete h5JsCallbackMap[callbackId]\n        }\n    }\n    var h5ListenerMap = {};\n\n    function addListener(jsFuncName, jsFunc) {\n        h5ListenerMap[jsFuncName] = jsFunc\n    }\n\n    function hasListener(jsFuncName) {\n        var jsFunc = h5ListenerMap[jsFuncName];\n        if (!jsFunc) {\n            return false\n        }\n        return true\n    }\n\n    function callListener(h5JsFuncName, data, nativeCallbackId) {\n        var responseCallback;\n        if (nativeCallbackId) {\n            responseCallback = function(responseData) {\n                var dataStr = \"\";\n                if (responseData) {\n                    dataStr = encodeURIComponent(JSON.stringify(responseData))\n                }\n                var paramStr = \"func=h5JsFuncCallback\" + \"&cbId=\" + nativeCallbackId + \"&data=\" + dataStr;\n                iframeCall(paramStr)\n            }\n        }\n        var h5JsFunc = h5ListenerMap[h5JsFuncName];\n        if (h5JsFunc) {\n            h5JsFunc(data, responseCallback)\n        } else if (h5JsFuncName == \"h5BackAction\") {\n            if (!window.alipayjsbridgeH5BackAction || !alipayjsbridgeH5BackAction()) {\n                var paramStr = \"func=back\";\n                iframeCall(paramStr)\n            }\n        } else {\n            console.log(\"AlipayJSBridge: no h5JsFunc \" + h5JsFuncName + data)\n        }\n    }\n    var event;\n    if (window.CustomEvent) {\n        event = new CustomEvent(\"alipayjsbridgeready\")\n    } else {\n        event = document.createEvent(\"Event\");\n        event.initEvent(\"alipayjsbridgeready\", true, true)\n    }\n    document.dispatchEvent(event);\n    setTimeout(excuteH5InitFuncs, 0);\n\n    function excuteH5InitFuncs() {\n        if (window.AlipayJSBridgeInitArray) {\n            var h5InitFuncs = window.AlipayJSBridgeInitArray;\n            delete window.AlipayJSBridgeInitArray;\n            for (var i = 0; i < h5InitFuncs.length; i++) {\n                try {\n                    h5InitFuncs[i](AlipayJSBridge)\n                } catch (e) {\n                    setTimeout(function() {\n                        throw e\n                    })\n                }\n            }\n        }\n    }\n})();\n"

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/widget/WebViewWindow;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alipay/sdk/widget/j;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/alipay/sdk/widget/j;->w:Z

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 184
    iget-object v10, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    .line 186
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/widget/WebViewWindow;

    iget-object v2, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/alipay/sdk/widget/WebViewWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    .line 187
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/WebViewWindow;->setChromeProxy(Lcom/alipay/sdk/widget/WebViewWindow$a;)V

    .line 188
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/WebViewWindow;->setWebClientProxy(Lcom/alipay/sdk/widget/WebViewWindow$b;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/WebViewWindow;->setWebEventProxy(Lcom/alipay/sdk/widget/WebViewWindow$c;)V

    .line 190
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/sdk/widget/j;->v:Z

    .line 199
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    invoke-virtual {v0, v10}, Lcom/alipay/sdk/widget/u;->a(Lcom/alipay/sdk/widget/WebViewWindow;)V

    .line 201
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 204
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 205
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 206
    new-instance v2, Lcom/alipay/sdk/widget/m;

    invoke-direct {v2, p0, v10, p1}, Lcom/alipay/sdk/widget/m;-><init>(Lcom/alipay/sdk/widget/j;Lcom/alipay/sdk/widget/WebViewWindow;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 215
    iget-object v2, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v2, v0}, Lcom/alipay/sdk/widget/WebViewWindow;->setAnimation(Landroid/view/animation/Animation;)V

    .line 216
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/widget/j;->addView(Landroid/view/View;)V

    .line 217
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    move v1, v9

    .line 194
    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/widget/WebViewWindow;

    iget-object v1, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/widget/WebViewWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    .line 65
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/WebViewWindow;->setChromeProxy(Lcom/alipay/sdk/widget/WebViewWindow$a;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/WebViewWindow;->setWebClientProxy(Lcom/alipay/sdk/widget/WebViewWindow$b;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/widget/WebViewWindow;->setWebEventProxy(Lcom/alipay/sdk/widget/WebViewWindow$c;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/widget/j;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alipay/sdk/widget/j;->t:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    const-string v1, "javascript:window.AlipayJSBridge.callListener(\'h5BackAction\');"

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/widget/WebViewWindow;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/u;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->f()Z

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/j;->a(Z)V

    goto :goto_0
.end method

.method private f()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 158
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 180
    :goto_0
    return v1

    .line 161
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/sdk/widget/j;->v:Z

    .line 162
    iget-object v9, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    .line 163
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/u;->a()Lcom/alipay/sdk/widget/WebViewWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    .line 164
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 167
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 168
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 169
    new-instance v2, Lcom/alipay/sdk/widget/l;

    invoke-direct {v2, p0, v9}, Lcom/alipay/sdk/widget/l;-><init>(Lcom/alipay/sdk/widget/j;Lcom/alipay/sdk/widget/WebViewWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    invoke-virtual {v9, v0}, Lcom/alipay/sdk/widget/WebViewWindow;->setAnimation(Landroid/view/animation/Animation;)V

    .line 177
    invoke-virtual {p0, v9}, Lcom/alipay/sdk/widget/j;->removeView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {p0, v0}, Lcom/alipay/sdk/widget/j;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->a()V

    .line 119
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->y:Lcom/alipay/sdk/widget/u;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/u;->c()V

    .line 120
    return-void
.end method

.method public a(Lcom/alipay/sdk/widget/WebViewWindow;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->d()V

    .line 371
    return-void
.end method

.method public a(Lcom/alipay/sdk/widget/WebViewWindow;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/alipay/sdk/widget/WebViewWindow;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    const-string v0, "POST"

    iget-object v1, p0, Lcom/alipay/sdk/widget/j;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/sdk/widget/WebViewWindow;->a(Ljava/lang/String;[B)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/widget/WebViewWindow;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 97
    iput-object p2, p0, Lcom/alipay/sdk/widget/j;->u:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/WebViewWindow;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iput-boolean p3, p0, Lcom/alipay/sdk/widget/j;->t:Z

    .line 100
    return-void
.end method

.method public a(Lcom/alipay/sdk/widget/WebViewWindow;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 256
    const-string v0, "net"

    const-string v1, "SSLError"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Lcom/alipay/sdk/widget/WebViewWindow;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    return v4
.end method

.method public a(Lcom/alipay/sdk/widget/WebViewWindow;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 263
    const-string v0, "net"

    const-string v1, "SSLError"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Lcom/alipay/sdk/widget/j;->w:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/widget/j;->w:Z

    .line 293
    :goto_0
    return v3

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/sdk/widget/n;

    invoke-direct {v1, p0, p2}, Lcom/alipay/sdk/widget/n;-><init>(Lcom/alipay/sdk/widget/j;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/sdk/widget/WebViewWindow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    .prologue
    .line 134
    const-string v0, "<head>"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "sdk_result_code:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/alipay/sdk/widget/k;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/k;-><init>(Lcom/alipay/sdk/widget/j;)V

    .line 142
    iget-object v1, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    :cond_0
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/alipay/sdk/widget/WebViewWindow;)V
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p1}, Lcom/alipay/sdk/widget/WebViewWindow;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 376
    invoke-virtual {p1}, Lcom/alipay/sdk/widget/WebViewWindow;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/alipay/sdk/widget/j;->v:Z

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/alipay/sdk/widget/j;->d()V

    .line 127
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/alipay/sdk/widget/WebViewWindow;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    :goto_0
    return v0

    .line 225
    :cond_0
    const-string v1, "alipayjsbridge://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    const-string v0, "alipayjsbridge://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/j;->b(Ljava/lang/String;)V

    .line 242
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const-string v1, "sdklite://h5quit"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/j;->a(Z)V

    goto :goto_1

    .line 230
    :cond_2
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/alipay/sdk/widget/j;->x:Lcom/alipay/sdk/widget/WebViewWindow;

    invoke-virtual {v0, p2}, Lcom/alipay/sdk/widget/WebViewWindow;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :cond_4
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 235
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/alipay/sdk/widget/j;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string v1, "biz"

    invoke-static {v1, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public c(Lcom/alipay/sdk/widget/WebViewWindow;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 247
    const-string v0, "javascript:window.prompt(\'<head>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');(function() {\n    if (window.AlipayJSBridge) {\n        return\n    }\n\n    function alipayjsbridgeFunc(url) {\n        var iframe = document.createElement(\"iframe\");\n        iframe.style.width = \"1px\";\n        iframe.style.height = \"1px\";\n        iframe.style.display = \"none\";\n        iframe.src = url;\n        document.body.appendChild(iframe);\n        setTimeout(function() {\n            document.body.removeChild(iframe)\n        }, 100)\n    }\n    window.alipayjsbridgeSetTitle = function(title) {\n        document.title = title;\n        alipayjsbridgeFunc(\"alipayjsbridge://setTitle?title=\" + encodeURIComponent(title))\n    };\n    window.alipayjsbridgeRefresh = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onRefresh?\")\n    };\n    window.alipayjsbridgeBack = function() {\n        alipayjsbridgeFunc(\"alipayjsbridge://onBack?\")\n    };\n    window.alipayjsbridgeExit = function(bsucc) {\n        alipayjsbridgeFunc(\"alipayjsbridge://onExit?bsucc=\" + bsucc)\n    };\n    window.alipayjsbridgeShowBackButton = function(bshow) {\n        alipayjsbridgeFunc(\"alipayjsbridge://showBackButton?bshow=\" + bshow)\n    };\n    window.AlipayJSBridge = {\n        version: \"2.0\",\n        addListener: addListener,\n        hasListener: hasListener,\n        callListener: callListener,\n        callNativeFunc: callNativeFunc,\n        callBackFromNativeFunc: callBackFromNativeFunc\n    };\n    var uniqueId = 1;\n    var h5JsCallbackMap = {};\n\n    function iframeCall(paramStr) {\n        setTimeout(function() {\n        \tvar iframe = document.createElement(\"iframe\");\n        \tiframe.style.width = \"1px\";\n        \tiframe.style.height = \"1px\";\n        \tiframe.style.display = \"none\";\n        \tiframe.src = \"alipayjsbridge://callNativeFunc?\" + paramStr;\n        \tvar parent = document.body || document.documentElement;\n        \tparent.appendChild(iframe);\n        \tsetTimeout(function() {\n            \tparent.removeChild(iframe)\n        \t}, 0)\n        }, 0)\n    }\n\n    function callNativeFunc(nativeFuncName, data, h5JsCallback) {\n        var h5JsCallbackId = \"\";\n        if (h5JsCallback) {\n            h5JsCallbackId = \"cb_\" + (uniqueId++) + \"_\" + new Date().getTime();\n            h5JsCallbackMap[h5JsCallbackId] = h5JsCallback\n        }\n        var dataStr = \"\";\n        if (data) {\n            dataStr = encodeURIComponent(JSON.stringify(data))\n        }\n        var paramStr = \"func=\" + nativeFuncName + \"&cbId=\" + h5JsCallbackId + \"&data=\" + dataStr;\n        iframeCall(paramStr)\n    }\n\n    function callBackFromNativeFunc(h5JsCallbackId, data) {\n        var h5JsCallback = h5JsCallbackMap[h5JsCallbackId];\n        if (h5JsCallback) {\n            h5JsCallback(data);\n            delete h5JsCallbackMap[callbackId]\n        }\n    }\n    var h5ListenerMap = {};\n\n    function addListener(jsFuncName, jsFunc) {\n        h5ListenerMap[jsFuncName] = jsFunc\n    }\n\n    function hasListener(jsFuncName) {\n        var jsFunc = h5ListenerMap[jsFuncName];\n        if (!jsFunc) {\n            return false\n        }\n        return true\n    }\n\n    function callListener(h5JsFuncName, data, nativeCallbackId) {\n        var responseCallback;\n        if (nativeCallbackId) {\n            responseCallback = function(responseData) {\n                var dataStr = \"\";\n                if (responseData) {\n                    dataStr = encodeURIComponent(JSON.stringify(responseData))\n                }\n                var paramStr = \"func=h5JsFuncCallback\" + \"&cbId=\" + nativeCallbackId + \"&data=\" + dataStr;\n                iframeCall(paramStr)\n            }\n        }\n        var h5JsFunc = h5ListenerMap[h5JsFuncName];\n        if (h5JsFunc) {\n            h5JsFunc(data, responseCallback)\n        } else if (h5JsFuncName == \"h5BackAction\") {\n            if (!window.alipayjsbridgeH5BackAction || !alipayjsbridgeH5BackAction()) {\n                var paramStr = \"func=back\";\n                iframeCall(paramStr)\n            }\n        } else {\n            console.log(\"AlipayJSBridge: no h5JsFunc \" + h5JsFuncName + data)\n        }\n    }\n    var event;\n    if (window.CustomEvent) {\n        event = new CustomEvent(\"alipayjsbridgeready\")\n    } else {\n        event = document.createEvent(\"Event\");\n        event.initEvent(\"alipayjsbridgeready\", true, true)\n    }\n    document.dispatchEvent(event);\n    setTimeout(excuteH5InitFuncs, 0);\n\n    function excuteH5InitFuncs() {\n        if (window.AlipayJSBridgeInitArray) {\n            var h5InitFuncs = window.AlipayJSBridgeInitArray;\n            delete window.AlipayJSBridgeInitArray;\n            for (var i = 0; i < h5InitFuncs.length; i++) {\n                try {\n                    h5InitFuncs[i](AlipayJSBridge)\n                } catch (e) {\n                    setTimeout(function() {\n                        throw e\n                    })\n                }\n            }\n        }\n    }\n})();\n;window.AlipayJSBridge.callListener(\'h5PageFinished\');"

    invoke-virtual {p1, v0}, Lcom/alipay/sdk/widget/WebViewWindow;->a(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Lcom/alipay/sdk/widget/WebViewWindow;->getRefreshButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alipay/sdk/widget/j;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/sdk/widget/g;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
