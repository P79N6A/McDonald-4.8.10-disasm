.class final Lcom/threatmetrix/TrustDefender/g$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
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

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 348
    const-string v0, "android.content.SharedPreferences"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$e;->b:Ljava/lang/Class;

    .line 349
    const-string v0, "android.content.SharedPreferences$Editor"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$e;->a:Ljava/lang/Class;

    .line 351
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->b:Ljava/lang/Class;

    const-string v1, "getInt"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$e;->d:Ljava/lang/reflect/Method;

    .line 352
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->b:Ljava/lang/Class;

    const-string v1, "getLong"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$e;->e:Ljava/lang/reflect/Method;

    .line 353
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->b:Ljava/lang/Class;

    const-string v1, "getString"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$e;->c:Ljava/lang/reflect/Method;

    .line 355
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->a:Ljava/lang/Class;

    const-string v1, "putInt"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$e;->h:Ljava/lang/reflect/Method;

    .line 356
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->a:Ljava/lang/Class;

    const-string v1, "putLong"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$e;->g:Ljava/lang/reflect/Method;

    .line 357
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->a:Ljava/lang/Class;

    const-string v1, "putString"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$e;->f:Ljava/lang/reflect/Method;

    .line 358
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->a:Ljava/lang/Class;

    const-string v1, "apply"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$e;->i:Ljava/lang/reflect/Method;

    .line 359
    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->b:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->e:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->h:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->g:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->f:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$e;->i:Ljava/lang/reflect/Method;

    return-object v0
.end method
