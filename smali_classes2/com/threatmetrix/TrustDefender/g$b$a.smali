.class final Lcom/threatmetrix/TrustDefender/g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:I

.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b$a;->a:Ljava/lang/String;

    .line 203
    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b$a;->b:Ljava/lang/String;

    .line 204
    const/4 v0, -0x1

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    .line 210
    const-string v0, "android.os.Build$VERSION"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 213
    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b$a;->d:Ljava/lang/Class;

    const-string v1, "RELEASE"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b$a;->a:Ljava/lang/String;

    .line 217
    :cond_0
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$a;->d:Ljava/lang/Class;

    const-string v1, "SDK_INT"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    .line 221
    :cond_1
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$b$a;->d:Ljava/lang/Class;

    const-string v1, "CODENAME"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 223
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$b$a;->b:Ljava/lang/String;

    .line 225
    :cond_2
    return-void
.end method
