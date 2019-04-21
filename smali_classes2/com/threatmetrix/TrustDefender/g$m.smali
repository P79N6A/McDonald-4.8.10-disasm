.class final Lcom/threatmetrix/TrustDefender/g$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    const-string v0, "android.os.SystemClock"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    sput-object v0, Lcom/threatmetrix/TrustDefender/g$m;->a:Ljava/lang/Class;

    const-string v1, "uptimeMillis"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$m;->b:Ljava/lang/reflect/Method;

    .line 35
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$m;->a:Ljava/lang/Class;

    const-string v1, "elapsedRealtime"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$m;->c:Ljava/lang/reflect/Method;

    .line 36
    return-void
.end method

.method static a()J
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$m;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 47
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static b()J
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$m;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 59
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
