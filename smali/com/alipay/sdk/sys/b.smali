.class public Lcom/alipay/sdk/sys/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/alipay/sdk/sys/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static a()Lcom/alipay/sdk/sys/b;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/sdk/sys/b;->a:Lcom/alipay/sdk/sys/b;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/alipay/sdk/sys/b;

    invoke-direct {v0}, Lcom/alipay/sdk/sys/b;-><init>()V

    sput-object v0, Lcom/alipay/sdk/sys/b;->a:Lcom/alipay/sdk/sys/b;

    .line 38
    :cond_0
    sget-object v0, Lcom/alipay/sdk/sys/b;->a:Lcom/alipay/sdk/sys/b;

    return-object v0
.end method

.method public static d()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    const/16 v2, 0xa

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/system/app/Superuser.apk"

    aput-object v2, v3, v1

    const-string v2, "/sbin/su"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/system/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/data/local/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/data/local/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/system/sd/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/system/bin/failsafe/su"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "/data/local/su"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "/su/bin/su"

    aput-object v4, v3, v2

    .line 64
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 65
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    :goto_1
    return v0

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 67
    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/alipay/sdk/data/c;)V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/sys/b;->b:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/sdk/sys/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c()Lcom/alipay/sdk/data/c;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/alipay/sdk/data/c;->b()Lcom/alipay/sdk/data/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    const-string v0, ""

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/alipay/sdk/sys/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    .line 76
    const-string v2, "third"

    const-string v3, "GetUtdidEx"

    invoke-static {v2, v3, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
