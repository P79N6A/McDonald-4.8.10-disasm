.class final Lcom/threatmetrix/TrustDefender/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field static final a:I

.field static final b:I

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Field;

.field private static i:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 466
    const-string v0, "android.content.pm.PackageManager"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$d;->e:Ljava/lang/Class;

    .line 467
    const-string v0, "android.content.pm.PackageInfo"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$d;->f:Ljava/lang/Class;

    .line 468
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$d;->e:Ljava/lang/Class;

    const-string v1, "checkPermission"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$d;->g:Ljava/lang/reflect/Method;

    .line 469
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$d;->f:Ljava/lang/Class;

    const-string v1, "versionCode"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$d;->h:Ljava/lang/reflect/Field;

    .line 470
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$d;->f:Ljava/lang/Class;

    const-string v1, "versionName"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$d;->i:Ljava/lang/reflect/Field;

    .line 472
    const-string v0, "android.content.pm.ApplicationInfo"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$d;->c:Ljava/lang/Class;

    .line 473
    const-string v0, "android.content.pm.PackageItemInfo"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$d;->d:Ljava/lang/Class;

    .line 475
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$d;->e:Ljava/lang/Class;

    .line 477
    sput v5, Lcom/threatmetrix/TrustDefender/g$d;->a:I

    .line 483
    const/16 v0, 0x80

    sput v0, Lcom/threatmetrix/TrustDefender/g$d;->b:I

    .line 485
    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$d;->f:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$d;->e:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$d;->h:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$d;->i:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$d;->g:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$d;->c:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$d;->d:Ljava/lang/Class;

    return-object v0
.end method
