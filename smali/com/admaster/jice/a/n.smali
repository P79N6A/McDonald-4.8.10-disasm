.class Lcom/admaster/jice/a/n;
.super Ljava/lang/Thread;
.source "JicePushManager.java"


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/j;

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/admaster/jice/a/j;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 389
    iput-object p1, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/jice/a/n;->b:Lorg/json/JSONObject;

    .line 391
    invoke-static {p1}, Lcom/admaster/jice/a/j;->c(Lcom/admaster/jice/a/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/admaster/jice/d/e;->c(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/a/n;->b:Lorg/json/JSONObject;

    .line 392
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/admaster/jice/a/j;->b(Lcom/admaster/jice/a/j;Z)V

    .line 393
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 398
    const/4 v2, 0x0

    .line 400
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/admaster/jice/a/n;->b:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 403
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/admaster/jice/a/n;->b:Lorg/json/JSONObject;

    .line 405
    :cond_0
    const-string v1, "system"

    iget-object v4, p0, Lcom/admaster/jice/a/n;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    iget-object v1, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-static {v1}, Lcom/admaster/jice/a/j;->c(Lcom/admaster/jice/a/j;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/jice/a/x;->a(Landroid/content/Context;)Lcom/admaster/jice/a/x;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Lcom/admaster/jice/a/x;->b()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 413
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 417
    :goto_0
    const-string v4, "profile"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-static {v1}, Lcom/admaster/jice/a/j;->d(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/d/b;

    move-result-object v1

    invoke-static {}, Lcom/admaster/jice/b/a;->d()Ljava/lang/String;

    move-result-object v4

    instance-of v5, v0, Lorg/json/JSONObject;

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    :goto_2
    invoke-static {}, Lcom/admaster/jice/b/a;->f()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 425
    invoke-virtual {v1, v4, v0, v5}, Lcom/admaster/jice/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)[B

    move-result-object v1

    .line 429
    if-eqz v1, :cond_5

    .line 430
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 433
    :goto_3
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-static {v1, v0}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;Ljava/lang/String;)V

    .line 437
    new-instance v1, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 438
    iget-object v1, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-static {v1}, Lcom/admaster/jice/a/j;->e(Lcom/admaster/jice/a/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 439
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    move v1, v3

    .line 440
    :goto_4
    if-lt v1, v4, :cond_4

    .line 452
    :cond_1
    :goto_5
    iget-object v1, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-static {v1, v3}, Lcom/admaster/jice/a/j;->b(Lcom/admaster/jice/a/j;Z)V

    .line 453
    iget-object v1, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JicePushFinder work finished:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  confilist`len:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-static {v2}, Lcom/admaster/jice/a/j;->e(Lcom/admaster/jice/a/j;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/admaster/jice/a/j;->b(Lcom/admaster/jice/a/j;Ljava/lang/String;)V

    .line 454
    return-void

    .line 415
    :cond_2
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v1

    .line 419
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 420
    iget-object v1, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-static {v1, v3}, Lcom/admaster/jice/a/j;->b(Lcom/admaster/jice/a/j;Z)V

    goto :goto_1

    .line 425
    :cond_3
    :try_start_4
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_2

    .line 441
    :cond_4
    :try_start_5
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 442
    new-instance v6, Lcom/admaster/jice/b/d;

    iget-object v7, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-static {v7}, Lcom/admaster/jice/a/j;->f(Lcom/admaster/jice/a/j;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/admaster/jice/b/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 443
    iget-object v5, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-static {v5}, Lcom/admaster/jice/a/j;->e(Lcom/admaster/jice/a/j;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v5, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-static {v5, v6}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;Lcom/admaster/jice/b/d;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 447
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 448
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 449
    iget-object v1, p0, Lcom/admaster/jice/a/n;->a:Lcom/admaster/jice/a/j;

    invoke-static {v1, v3}, Lcom/admaster/jice/a/j;->b(Lcom/admaster/jice/a/j;Z)V

    goto :goto_5

    .line 447
    :catch_2
    move-exception v1

    goto :goto_6

    :cond_5
    move-object v0, v2

    goto/16 :goto_3
.end method
