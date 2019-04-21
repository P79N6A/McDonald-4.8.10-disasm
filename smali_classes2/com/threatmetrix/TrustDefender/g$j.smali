.class final Lcom/threatmetrix/TrustDefender/g$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
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

    .line 749
    const-string v0, "android.os.PowerManager"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 750
    sput-object v0, Lcom/threatmetrix/TrustDefender/g$j;->a:Ljava/lang/Class;

    const-string v1, "isInteractive"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$j;->b:Ljava/lang/reflect/Method;

    .line 751
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$j;->a:Ljava/lang/Class;

    const-string v1, "isScreenOn"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$j;->c:Ljava/lang/reflect/Method;

    .line 752
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 756
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$j;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$j;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
