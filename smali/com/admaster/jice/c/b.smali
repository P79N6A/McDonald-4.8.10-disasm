.class public Lcom/admaster/jice/c/b;
.super Ljava/lang/Object;
.source "DeviceInfoApi.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 56
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 59
    :try_start_0
    const-string v0, "mac"

    const-string v2, "mac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/admaster/jice/c/f;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    const-string v0, "mac1"

    const-string v2, "mac1"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/admaster/jice/c/f;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    const-string v0, "imei"

    const-string v2, "imei"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/admaster/jice/c/f;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    const-string v0, "androidID"

    const-string v2, "androidID"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/admaster/jice/c/f;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    const-string v0, "imsi"

    const-string v2, "imsi"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/admaster/jice/c/f;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    const-string v0, "idfa"

    const-string v2, "idfa"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/admaster/jice/c/f;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    const-string v0, "ap_mac"

    invoke-static {p0}, Lcom/admaster/jice/c/c;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    const-string v0, "ap_name"

    invoke-static {p0}, Lcom/admaster/jice/c/c;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    const-string v0, "model"

    invoke-static {}, Lcom/admaster/jice/c/c;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    const-string v0, "brand"

    invoke-static {}, Lcom/admaster/jice/c/c;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    const-string v0, "os"

    const-string v2, "android"

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    const-string v0, "osv"

    invoke-static {}, Lcom/admaster/jice/c/c;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    const-string v0, "net"

    invoke-static {p0}, Lcom/admaster/jice/c/c;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    const-string v0, "screenpix"

    invoke-static {p0}, Lcom/admaster/jice/c/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    const-string v0, "mcc"

    invoke-static {p0}, Lcom/admaster/jice/c/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    const-string v0, "mnc"

    invoke-static {p0}, Lcom/admaster/jice/c/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    const-string v0, "package_name"

    invoke-static {p0}, Lcom/admaster/jice/c/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    const-string v0, "appv"

    invoke-static {p0}, Lcom/admaster/jice/c/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    const-string v0, "cid"

    invoke-static {p0}, Lcom/admaster/jice/c/c;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    const-string v0, "is_root"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/admaster/jice/c/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/admaster/jice/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string p2, ""

    .line 91
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method
