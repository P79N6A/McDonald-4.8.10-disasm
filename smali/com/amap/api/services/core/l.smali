.class public Lcom/amap/api/services/core/l;
.super Ljava/lang/Object;
.source "ManifestConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/core/l$a;
    }
.end annotation


# static fields
.field public static a:Lcom/amap/api/services/core/ac;

.field private static b:Lcom/amap/api/services/core/l;

.field private static c:Landroid/content/Context;


# instance fields
.field private d:Lcom/amap/api/services/core/l$a;

.field private e:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/amap/api/services/core/m;

    const-string v1, "manifestThread"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/services/core/m;-><init>(Lcom/amap/api/services/core/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/services/core/l;->e:Landroid/os/HandlerThread;

    .line 22
    sput-object p1, Lcom/amap/api/services/core/l;->c:Landroid/content/Context;

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/services/core/c;->a(Z)Lcom/amap/api/services/core/ac;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/core/l;->a:Lcom/amap/api/services/core/ac;

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/l;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/amap/api/services/core/l$a;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/services/core/l$a;-><init>(Lcom/amap/api/services/core/l;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/services/core/l;->d:Lcom/amap/api/services/core/l$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "ManifestConfig"

    const-string v2, "ManifestConfig"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/amap/api/services/core/l;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/services/core/l;)Lcom/amap/api/services/core/l$a;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/amap/api/services/core/l;->d:Lcom/amap/api/services/core/l$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/amap/api/services/core/l;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/amap/api/services/core/l;->b:Lcom/amap/api/services/core/l;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/amap/api/services/core/l;

    invoke-direct {v0, p0}, Lcom/amap/api/services/core/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/services/core/l;->b:Lcom/amap/api/services/core/l;

    .line 37
    :cond_0
    sget-object v0, Lcom/amap/api/services/core/l;->b:Lcom/amap/api/services/core/l;

    return-object v0
.end method
