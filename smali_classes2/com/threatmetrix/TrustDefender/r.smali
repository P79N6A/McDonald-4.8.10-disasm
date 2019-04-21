.class Lcom/threatmetrix/TrustDefender/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/threatmetrix/TrustDefender/r;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/r;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 26
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$j;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v2

    .line 31
    :cond_1
    sget v3, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v4, Lcom/threatmetrix/TrustDefender/g$b$b;->m:I

    if-lt v3, v4, :cond_0

    .line 35
    :try_start_0
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "powerService":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/os/PowerManager;

    if-eqz v3, :cond_0

    .line 41
    check-cast v1, Landroid/os/PowerManager;

    .end local v1    # "powerService":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 45
    :catch_0
    move-exception v3

    sget-object v3, Lcom/threatmetrix/TrustDefender/r;->a:Ljava/lang/String;

    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/threatmetrix/TrustDefender/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
