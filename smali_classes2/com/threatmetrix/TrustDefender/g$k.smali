.class final Lcom/threatmetrix/TrustDefender/g$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
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

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 79
    const-string v0, "android.provider.Settings$Secure"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    sput-object v0, Lcom/threatmetrix/TrustDefender/g$k;->a:Ljava/lang/Class;

    const-string v1, "getString"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$k;->b:Ljava/lang/reflect/Method;

    .line 81
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$k;->a:Ljava/lang/Class;

    const-string v1, "ANDROID_ID"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$k;->c:Ljava/lang/reflect/Field;

    .line 82
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$k;->a:Ljava/lang/Class;

    const-string v1, "ALLOW_MOCK_LOCATION"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$k;->d:Ljava/lang/reflect/Field;

    .line 83
    return-void
.end method

.method static a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 88
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/threatmetrix/TrustDefender/ai;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/threatmetrix/TrustDefender/g$k;->b:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v1

    .line 94
    :cond_1
    :try_start_0
    const-string v2, "ANDROID_ID"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/threatmetrix/TrustDefender/g$k;->c:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2

    .line 96
    const-string v2, "android_id"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_2
    const-string v2, "ALLOW_MOCK_LOCATION"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/threatmetrix/TrustDefender/g$k;->d:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 100
    const-string v2, "mock_location"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
