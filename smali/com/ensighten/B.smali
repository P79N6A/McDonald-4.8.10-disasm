.class public final Lcom/ensighten/B;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 16
    :try_start_0
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "Loaded resource with url %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 18
    :cond_0
    const-string v0, "ensighten://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    const-string v0, "ensighten://"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 20
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 22
    array-length v2, v0

    if-le v2, v3, :cond_9

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 23
    :goto_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 1193
    :try_start_1
    const-string v0, "javascriptInit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1194
    invoke-static {}, Lcom/ensighten/i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1195
    const-string v0, "The javascript ready event has been received."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 1196
    :cond_1
    iget-boolean v0, v2, Lcom/ensighten/h;->g:Z

    if-eqz v0, :cond_7

    .line 1197
    invoke-static {}, Lcom/ensighten/i;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1198
    const-string v0, "First launch detected. Evaluating initial rules and evaluating lifecycle events."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 1199
    :cond_2
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 2149
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v1

    .line 2181
    iget-object v1, v1, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 2422
    iget-object v1, v1, Lcom/ensighten/e;->e:Lorg/json/JSONArray;

    .line 2150
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/ensighten/l;->a(Lorg/json/JSONArray;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2462
    const-string v0, "launch"

    .line 2463
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v1

    .line 2464
    sget-object v3, Lcom/ensighten/h$3;->a:[I

    .line 3473
    iget-object v1, v1, Lcom/ensighten/N;->d:Lcom/ensighten/z;

    .line 4078
    iget-object v1, v1, Lcom/ensighten/z;->e:Lcom/ensighten/z$a;

    .line 2464
    invoke-virtual {v1}, Lcom/ensighten/z$a;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 2475
    :goto_1
    const-string v1, "Bootstrapper.onMobileLaunch(\\\"%s\\\", params);"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2476
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2477
    const-string v1, "Processing lifecycle javascript %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 2478
    :cond_3
    invoke-virtual {v2, v0}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    .line 2479
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 4181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 4438
    iget-boolean v0, v0, Lcom/ensighten/e;->s:Z

    .line 2480
    if-eqz v0, :cond_4

    .line 2481
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5431
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v0

    .line 5432
    const-string v1, "ensightenError"

    invoke-virtual {v0, v1}, Lcom/ensighten/N;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5433
    if-eqz v1, :cond_5

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5434
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 5435
    invoke-virtual {v2, v1}, Lcom/ensighten/h;->a(Lorg/json/JSONObject;)V

    .line 5436
    const-string v1, "ensightenError"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/ensighten/N;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5448
    :cond_5
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getOptimizationManager()Lcom/ensighten/M;

    move-result-object v0

    .line 6159
    iget-boolean v0, v0, Lcom/ensighten/M;->i:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 5448
    if-eqz v0, :cond_6

    .line 5450
    :try_start_4
    const-string v0, "Bootstrapper.onOptimizationStart();"

    invoke-virtual {v2, v0}, Lcom/ensighten/h;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1203
    :cond_6
    :goto_3
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, v2, Lcom/ensighten/h;->g:Z

    .line 1205
    :cond_7
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    .line 6233
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ensighten/X;->l:Z

    .line 1206
    invoke-virtual {v2}, Lcom/ensighten/h;->b()V

    .line 1207
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/ensighten/h;->f:Z

    .line 1208
    invoke-virtual {v2}, Lcom/ensighten/h;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 29
    :cond_8
    :goto_4
    return-void

    .line 22
    :cond_9
    :try_start_6
    const-string v0, ""
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 2466
    :pswitch_0
    :try_start_7
    const-string/jumbo v0, "upgrade"

    goto/16 :goto_1

    .line 2469
    :pswitch_1
    const-string v0, "install"

    goto/16 :goto_1

    .line 5438
    :catch_0
    move-exception v0

    .line 5439
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5440
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 1215
    :catch_1
    move-exception v0

    .line 1216
    :try_start_8
    invoke-static {}, Lcom/ensighten/i;->g()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1217
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 25
    :catch_2
    move-exception v0

    .line 26
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_4

    .line 5451
    :catch_3
    move-exception v0

    .line 5452
    :try_start_9
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5453
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_3

    .line 1209
    :cond_a
    iget-object v0, v2, Lcom/ensighten/h;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1210
    iget-object v0, v2, Lcom/ensighten/h;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 2464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "Finished loading page with url %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 36
    :cond_0
    const-string v0, "ensighten"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lcom/ensighten/Ensighten;->getTagContainerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ensighten/Ensighten;->setWaitingForWebview(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_1
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "Error loading page with url %s. Encountered error code %d because of %s."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getTagContainerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ensighten/Ensighten;->setWaitingForWebview(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_1
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_0
.end method
