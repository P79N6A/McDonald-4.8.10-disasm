.class public Lcom/admaster/square/utils/s;
.super Ljava/lang/Object;
.source "UdidInfoUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/square/utils/s;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v1}, Lcom/admaster/square/api/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    sget-object v2, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v2}, Lcom/admaster/square/api/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 116
    sget-object v2, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v2}, Lcom/admaster/square/api/n;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    sget-object v2, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v2}, Lcom/admaster/square/api/n;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 322
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    if-nez v1, :cond_0

    .line 323
    invoke-static {p0, p1}, Lcom/admaster/square/utils/s;->a(ILandroid/content/Context;)V

    .line 325
    :cond_0
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    if-nez v1, :cond_2

    .line 346
    :cond_1
    :goto_0
    return-object v0

    .line 328
    :cond_2
    const-string v1, "mac"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    sget-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v0}, Lcom/admaster/square/api/n;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_3
    const-string v1, "imsi"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 331
    sget-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v0}, Lcom/admaster/square/api/n;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_4
    const-string v1, "imei"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 333
    sget-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v0}, Lcom/admaster/square/api/n;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_5
    const-string v1, "androidID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 335
    sget-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v0}, Lcom/admaster/square/api/n;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_6
    const-string v1, "idfa"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 337
    sget-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v0}, Lcom/admaster/square/api/n;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_7
    const-string v1, "it"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 339
    sget-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v0}, Lcom/admaster/square/api/n;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_8
    const-string v1, "MAC1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 341
    sget-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v0}, Lcom/admaster/square/api/n;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_9
    const-string v1, "device_md5"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    sget-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v0}, Lcom/admaster/square/api/n;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 432
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    invoke-static {p0}, Lcom/admaster/square/utils/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 434
    invoke-static {p0}, Lcom/admaster/square/utils/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    invoke-static {p0}, Lcom/admaster/square/utils/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 436
    sget-object v2, Lcom/admaster/square/utils/h;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 439
    :goto_0
    return-object v0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 819
    :try_start_0
    const-string v1, "sp_store"

    const-string v2, "sp_json"

    invoke-static {p0, v1, v2}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 821
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 822
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 823
    invoke-static {v1, p0}, Lcom/admaster/square/utils/s;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 825
    :cond_0
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    if-eqz v1, :cond_1

    .line 826
    const-string v1, "mac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 827
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v1}, Lcom/admaster/square/api/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 848
    :cond_1
    :goto_0
    return-object v0

    .line 828
    :cond_2
    const-string v1, "imsi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 829
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v1}, Lcom/admaster/square/api/n;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 830
    :cond_3
    const-string v1, "imei"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 831
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v1}, Lcom/admaster/square/api/n;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 832
    :cond_4
    const-string v1, "androidID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 833
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v1}, Lcom/admaster/square/api/n;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 834
    :cond_5
    const-string v1, "idfa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 835
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v1}, Lcom/admaster/square/api/n;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 836
    :cond_6
    const-string v1, "it"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 837
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v1}, Lcom/admaster/square/api/n;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 838
    :cond_7
    const-string v1, "device_md5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 839
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v1}, Lcom/admaster/square/api/n;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 840
    :cond_8
    const-string v1, "MAC1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 841
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v1}, Lcom/admaster/square/api/n;->h()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 845
    :catch_0
    move-exception v1

    .line 846
    sput-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 34
    .line 40
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p0, p1}, Lcom/admaster/square/utils/s;->a(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/admaster/square/utils/s;->a(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 46
    invoke-static {p0, p1}, Lcom/admaster/square/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    .line 59
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 60
    const-string v5, "mac"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 62
    invoke-static {p0}, Lcom/admaster/square/utils/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 92
    const-string v5, "it"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    if-eqz v5, :cond_1

    .line 93
    sget-object v5, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v5, v0}, Lcom/admaster/square/api/n;->a(Ljava/lang/String;)V

    .line 95
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 96
    invoke-static {v0}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/admaster/square/utils/s;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 99
    invoke-static {v0}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/admaster/square/utils/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 102
    invoke-static {v0}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_4
    :goto_2
    return-object v0

    :cond_5
    move-object v3, v2

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    .line 52
    goto :goto_0

    :cond_6
    move-object v2, v0

    move-object v3, v1

    .line 55
    goto :goto_0

    :cond_7
    move-object v2, v1

    move-object v3, v1

    move-object v0, v4

    .line 56
    goto :goto_0

    .line 63
    :cond_8
    const-string v5, "imei"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 65
    invoke-static {p0}, Lcom/admaster/square/utils/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 66
    :cond_9
    const-string v5, "imsi"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 68
    invoke-static {p0}, Lcom/admaster/square/utils/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 69
    :cond_a
    const-string v5, "androidID"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 71
    invoke-static {p0}, Lcom/admaster/square/utils/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 72
    :cond_b
    const-string v5, "idfa"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 74
    sget-object v0, Lcom/admaster/square/utils/h;->i:Ljava/lang/String;

    goto/16 :goto_1

    .line 75
    :cond_c
    const-string v5, "it"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 77
    const/4 v0, 0x0

    aget-object v0, p2, v0

    goto/16 :goto_1

    .line 79
    :cond_d
    const-string v5, "device_md5"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 80
    invoke-static {p0}, Lcom/admaster/square/utils/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 81
    :cond_e
    const-string v5, "MAC1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-static {p0}, Lcom/admaster/square/a/a;->a(Landroid/content/Context;)Lcom/admaster/square/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admaster/square/a/a;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 87
    :cond_f
    invoke-static {v0}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 106
    goto :goto_2
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 755
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    new-array v1, v0, [B

    .line 759
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 760
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 761
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 762
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_0
    return-object v0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 767
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 470
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 475
    :goto_0
    if-nez p0, :cond_2

    .line 477
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    invoke-static {p3}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {v1}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    :cond_0
    :goto_1
    return-object v0

    .line 473
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_2
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 484
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 486
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static a(ILandroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 451
    .line 452
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 453
    :try_start_0
    invoke-static {}, Lcom/admaster/square/utils/s;->d()Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 459
    invoke-static {v0, p1}, Lcom/admaster/square/utils/s;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 465
    :cond_0
    :goto_1
    return-void

    .line 454
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 455
    invoke-static {}, Lcom/admaster/square/utils/s;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    sput-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 493
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    :try_start_1
    invoke-static {p0, p1}, Lcom/admaster/square/utils/s;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {}, Lcom/admaster/square/utils/s;->d()Ljava/lang/String;

    move-result-object v1

    .line 501
    const/4 v2, 0x0

    invoke-static {v2, v1, p2, v0}, Lcom/admaster/square/utils/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 503
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/s;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 509
    :cond_0
    :goto_1
    :try_start_2
    invoke-static {p0, p1}, Lcom/admaster/square/utils/s;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {}, Lcom/admaster/square/utils/s;->c()Ljava/lang/String;

    move-result-object v1

    .line 511
    const/4 v2, 0x0

    invoke-static {v2, v1, p2, v0}, Lcom/admaster/square/utils/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 513
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/admaster/square/utils/s;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 524
    :cond_1
    :goto_3
    return-void

    .line 503
    :cond_2
    :try_start_3
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_0

    .line 513
    :cond_3
    :try_start_4
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_2

    .line 521
    :catch_0
    move-exception v0

    goto :goto_3

    .line 515
    :catch_1
    move-exception v0

    goto :goto_3

    .line 505
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/admaster/square/utils/s;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/admaster/square/utils/s;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    :try_start_0
    const-string v1, "sp_store"

    const-string v2, "sp_json"

    invoke-static {p0, v1, v2}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 784
    const/4 v2, 0x0

    invoke-static {v0}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, p3, v0}, Lcom/admaster/square/utils/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 785
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    const-string v1, "sp_store"

    const-string v2, "sp_json"

    .line 789
    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-static {p0, v1, v2, v0}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    goto :goto_0

    .line 789
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 214
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 216
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 707
    :try_start_0
    invoke-static {}, Lcom/admaster/square/utils/s;->d()Ljava/lang/String;

    move-result-object v0

    .line 708
    const/4 v1, 0x1

    invoke-static {v1, v0, p0, p1}, Lcom/admaster/square/utils/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/s;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :catch_0
    move-exception v0

    goto :goto_0

    .line 712
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 351
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 352
    new-instance v0, Lcom/admaster/square/api/n;

    invoke-direct {v0}, Lcom/admaster/square/api/n;-><init>()V

    sput-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    .line 353
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 355
    :try_start_1
    const-string v0, "imsi"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    :goto_0
    :try_start_2
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-static {v0}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/n;->d(Ljava/lang/String;)V

    .line 360
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 362
    :try_start_3
    const-string v0, "imei"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 366
    :goto_1
    :try_start_4
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-static {v0}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/n;->c(Ljava/lang/String;)V

    .line 368
    const-string v0, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 370
    :try_start_5
    const-string v0, "androidID"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 374
    :goto_2
    :try_start_6
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-static {v0}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/n;->e(Ljava/lang/String;)V

    .line 376
    const-string v0, ""
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 378
    :try_start_7
    const-string v0, "it"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 382
    :goto_3
    :try_start_8
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-static {v0}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/n;->a(Ljava/lang/String;)V

    .line 384
    const-string v0, ""
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 386
    :try_start_9
    const-string v0, "idfa"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 390
    :goto_4
    :try_start_a
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-static {v0}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/n;->f(Ljava/lang/String;)V

    .line 392
    const-string v0, ""
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 394
    :try_start_b
    const-string v0, "mac"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 398
    :goto_5
    :try_start_c
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-static {v0}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/n;->b(Ljava/lang/String;)V

    .line 400
    const-string v0, ""
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 402
    :try_start_d
    const-string v0, "MAC1"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 406
    :goto_6
    :try_start_e
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-static {v0}, Lcom/admaster/square/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/n;->h(Ljava/lang/String;)V

    .line 407
    const-string v0, ""
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 409
    :try_start_f
    const-string v0, "device_md5"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 413
    :goto_7
    :try_start_10
    invoke-static {}, Lcom/admaster/square/utils/s;->a()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 415
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    .line 428
    :cond_0
    :goto_8
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    const-string v0, ""

    goto/16 :goto_0

    .line 363
    :catch_1
    move-exception v0

    .line 364
    const-string v0, ""

    goto/16 :goto_1

    .line 371
    :catch_2
    move-exception v0

    .line 372
    const-string v0, ""

    goto :goto_2

    .line 379
    :catch_3
    move-exception v0

    .line 380
    const-string v0, ""

    goto :goto_3

    .line 387
    :catch_4
    move-exception v0

    .line 388
    const-string v0, ""

    goto :goto_4

    .line 395
    :catch_5
    move-exception v0

    .line 396
    const-string v0, ""

    goto :goto_5

    .line 403
    :catch_6
    move-exception v0

    .line 404
    const-string v0, ""

    goto :goto_6

    .line 410
    :catch_7
    move-exception v0

    .line 411
    const-string v0, ""

    goto :goto_7

    .line 418
    :cond_1
    sget-object v1, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    invoke-virtual {v1, v0}, Lcom/admaster/square/api/n;->g(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_8

    .line 424
    :catch_8
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    sput-object v3, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;

    goto :goto_8

    .line 421
    :cond_2
    const/4 v0, 0x0

    :try_start_11
    sput-object v0, Lcom/admaster/square/utils/h;->g:Lcom/admaster/square/api/n;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_8
.end method

.method public static b()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 620
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 624
    if-eqz v4, :cond_0

    move v3, v1

    .line 627
    :goto_1
    array-length v0, v4

    if-ge v3, v0, :cond_0

    .line 628
    aget-object v0, v4, v3

    .line 630
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 631
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 632
    if-eqz v5, :cond_2

    move v2, v1

    .line 633
    :goto_2
    array-length v0, v5

    if-lt v2, v0, :cond_3

    .line 627
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 634
    :cond_3
    aget-object v6, v5, v2

    .line 635
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 636
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 637
    if-eqz v7, :cond_4

    move v0, v1

    .line 638
    :goto_3
    array-length v8, v7

    if-lt v0, v8, :cond_6

    .line 647
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/admaster/square/utils/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 648
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 633
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 639
    :cond_6
    aget-object v8, v7, v0

    .line 640
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 641
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/admaster/square/utils/h;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 642
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 656
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 860
    const/4 v1, 0x6

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "dev_mac"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "imei"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "imsi"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "it"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    .line 861
    const-string v3, "androidID"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "androidIDFA"

    aput-object v3, v2, v1

    .line 862
    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "mac"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "imei"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "imsi"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "it"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    .line 863
    const-string v4, "androidID"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    const-string v4, "idfa"

    aput-object v4, v3, v1

    move v1, v0

    .line 864
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_0

    .line 868
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "m2id"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "ch"

    aput-object v5, v4, v1

    move v1, v0

    .line 869
    :goto_1
    array-length v5, v4

    if-lt v1, v5, :cond_1

    .line 872
    const-string v1, "sp_isActive"

    const-string v4, "is_install"

    invoke-static {p0, v1, v4}, Lcom/admaster/square/utils/s;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_2
    array-length v1, v2

    if-lt v0, v1, :cond_2

    .line 877
    invoke-static {}, Lcom/admaster/square/utils/s;->b()V

    .line 881
    :goto_3
    return-void

    .line 865
    :cond_0
    const-string v4, "adm_convimobi_sp_"

    aget-object v5, v2, v1

    aget-object v6, v3, v1

    invoke-static {p0, v4, v5, v6}, Lcom/admaster/square/utils/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    :cond_1
    const-string v5, "sp_isActive"

    aget-object v6, v4, v1

    aget-object v7, v4, v1

    invoke-static {p0, v5, v6, v7}, Lcom/admaster/square/utils/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 875
    :cond_2
    aget-object v1, v2, v0

    aget-object v4, v3, v0

    invoke-static {p0, v1, v4}, Lcom/admaster/square/utils/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 878
    :catch_0
    move-exception v0

    .line 879
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 145
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 146
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/admaster/square/utils/h;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/admaster/square/utils/s;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move v1, v0

    .line 150
    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_1

    .line 160
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 161
    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_3

    .line 178
    :cond_0
    :goto_2
    return-void

    .line 151
    :cond_1
    aget-object v4, v3, v1

    .line 152
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 154
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/admaster/square/utils/h;->b:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 150
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_3
    aget-object v4, v3, v0

    .line 163
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 164
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 165
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 166
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/admaster/square/utils/h;->b:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/admaster/square/utils/s;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    sget v6, Lcom/admaster/square/utils/h;->d:I

    if-ge v5, v6, :cond_0

    .line 170
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 719
    :try_start_0
    invoke-static {}, Lcom/admaster/square/utils/s;->c()Ljava/lang/String;

    move-result-object v0

    .line 720
    const/4 v1, 0x1

    invoke-static {v1, v0, p1, p2}, Lcom/admaster/square/utils/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 721
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/admaster/square/utils/s;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    goto :goto_0

    .line 724
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 796
    invoke-static {p0, p1, p2}, Lcom/admaster/square/utils/s;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-static {p2}, Lcom/admaster/square/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 798
    invoke-static {p0, p1, v1}, Lcom/admaster/square/utils/s;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    const-string v1, "sp_store"

    invoke-static {p0, v1, p3, v0}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 669
    :try_start_0
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 673
    if-eqz v2, :cond_0

    move v1, v0

    .line 675
    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_3

    .line 685
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 686
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 687
    aget-object v3, v2, v0

    .line 688
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 689
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 690
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 691
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/admaster/square/utils/h;->b:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/admaster/square/utils/s;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    sget v5, Lcom/admaster/square/utils/h;->d:I

    if-ge v4, v5, :cond_0

    .line 695
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 676
    :cond_3
    aget-object v3, v2, v1

    .line 677
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 678
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 679
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/admaster/square/utils/h;->b:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 681
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 701
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 258
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    const/4 v0, 0x0

    .line 285
    :cond_0
    :goto_0
    return-object v0

    .line 263
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/admaster/square/utils/h;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    invoke-static {v0}, Lcom/admaster/square/utils/s;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 270
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 271
    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    .line 272
    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 273
    aget-object v4, v2, v1

    .line 274
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 275
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 276
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/admaster/square/utils/h;->b:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/admaster/square/utils/s;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v0, ""

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 182
    :try_start_0
    sget-object v1, Lcom/admaster/square/utils/s;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 183
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 184
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 185
    const/16 v2, 0x40

    new-array v4, v2, [Landroid/hardware/Sensor;

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 187
    :cond_0
    :goto_0
    move-object v0, v2

    check-cast v0, Ljava/util/Iterator;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    array-length v1, v4

    if-lt v3, v1, :cond_3

    .line 200
    check-cast v2, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/admaster/square/utils/s;->a:Ljava/lang/String;

    .line 202
    :cond_1
    sget-object v1, Lcom/admaster/square/utils/s;->a:Ljava/lang/String;

    .line 204
    :goto_2
    return-object v1

    .line 188
    :cond_2
    move-object v0, v2

    check-cast v0, Ljava/util/Iterator;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 189
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    array-length v5, v4

    if-ge v3, v5, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ltz v3, :cond_0

    .line 190
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    aput-object v1, v4, v3

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    const/4 v1, 0x0

    goto :goto_2

    .line 194
    :cond_3
    aget-object v1, v4, v3

    if-nez v1, :cond_4

    .line 193
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 196
    :cond_4
    move-object v0, v2

    check-cast v0, Ljava/lang/StringBuffer;

    move-object v1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v5, v4, v3

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 197
    aget-object v5, v4, v3

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v5, v4, v3

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getVersion()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 198
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 235
    const-string v0, ""

    .line 237
    :try_start_0
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    const/4 v0, 0x0

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 240
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/admaster/square/utils/h;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/admaster/square/utils/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    invoke-static {p0}, Lcom/admaster/square/utils/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 806
    .line 807
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/admaster/square/utils/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 808
    invoke-static {p0, p1, p2}, Lcom/admaster/square/utils/s;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    if-eqz v0, :cond_0

    .line 810
    const-string v1, "sp_store"

    invoke-static {p0, v1, p2, v0}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 532
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-object v1

    .line 535
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 537
    if-eqz v3, :cond_4

    .line 538
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_1
    array-length v4, v3

    if-lt v2, v4, :cond_2

    :cond_1
    :goto_2
    move-object v1, v0

    .line 555
    goto :goto_0

    .line 539
    :cond_2
    aget-object v4, v3, v2

    .line 540
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 541
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/sdcard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 542
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/admaster/square/utils/h;->b:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 543
    invoke-static {v0}, Lcom/admaster/square/utils/s;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 538
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 551
    :catch_0
    move-exception v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 566
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 611
    :cond_0
    :goto_0
    return-object v0

    .line 570
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 571
    if-nez v5, :cond_2

    move-object v0, v1

    .line 572
    goto :goto_0

    .line 574
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/admaster/square/utils/h;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/admaster/square/utils/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v2, v3

    move-object v0, v1

    .line 575
    :goto_1
    array-length v4, v5

    if-ge v2, v4, :cond_0

    .line 576
    aget-object v4, v5, v2

    .line 578
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "/sdcard"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 579
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 581
    invoke-static {v7}, Lcom/admaster/square/utils/s;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 588
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 589
    if-eqz v7, :cond_4

    move v4, v3

    .line 590
    :goto_2
    array-length v8, v7

    if-lt v4, v8, :cond_5

    .line 575
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 591
    :cond_5
    aget-object v8, v7, v4

    .line 592
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 593
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 595
    invoke-static {v9}, Lcom/admaster/square/utils/s;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    .line 590
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 609
    :catch_0
    move-exception v0

    .line 610
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 611
    goto/16 :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 897
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 898
    return-void
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 128
    :try_start_0
    const-string v0, "sp_store"

    const-string v1, "sp_json"

    invoke-static {p0, v0, v1}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    invoke-static {v1, v0, p1, p2}, Lcom/admaster/square/utils/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v1, "sp_store"

    const-string v2, "sp_json"

    .line 134
    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {p0, v1, v2, v0}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0

    .line 134
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    .line 885
    invoke-static {p0, p1, p2}, Lcom/admaster/square/utils/i;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    return-object v0
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 890
    .line 891
    invoke-static {p0, p1, p2}, Lcom/admaster/square/utils/i;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    return-object v0
.end method
