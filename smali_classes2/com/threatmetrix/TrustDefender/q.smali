.class Lcom/threatmetrix/TrustDefender/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/threatmetrix/TrustDefender/q;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/q;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v4, 0x10

    .line 39
    sget-object v5, Lcom/threatmetrix/TrustDefender/g$c;->a:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v4

    .line 44
    :cond_1
    sget v5, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v6, Lcom/threatmetrix/TrustDefender/g$b$b;->d:I

    if-lt v5, v6, :cond_2

    .line 48
    :try_start_0
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 49
    .local v3, "policyService":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v5, v3, Landroid/app/admin/DevicePolicyManager;

    if-eqz v5, :cond_0

    .line 54
    move-object v0, v3

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    move-object v1, v0

    .line 55
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 59
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "policyService":Ljava/lang/Object;
    :catch_0
    move-exception v5

    sget-object v5, Lcom/threatmetrix/TrustDefender/q;->a:Ljava/lang/String;

    goto :goto_0

    .line 62
    :catch_1
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/threatmetrix/TrustDefender/q;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method
