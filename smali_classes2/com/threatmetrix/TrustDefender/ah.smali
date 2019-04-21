.class Lcom/threatmetrix/TrustDefender/ah;
.super Lcom/threatmetrix/TrustDefender/at;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;

.field private static final h:Ljava/lang/String;


# instance fields
.field private final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    const-class v0, Lcom/threatmetrix/TrustDefender/ah;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ah;->h:Ljava/lang/String;

    .line 27
    const-string v0, "android.os.StatFs"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/ah;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/threatmetrix/TrustDefender/ah;->a:Ljava/lang/Class;

    const-string v1, "getBlockSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ah;->b:Ljava/lang/reflect/Method;

    .line 29
    sget-object v0, Lcom/threatmetrix/TrustDefender/ah;->a:Ljava/lang/Class;

    const-string v1, "getBlockSizeLong"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ah;->c:Ljava/lang/reflect/Method;

    .line 30
    sget-object v0, Lcom/threatmetrix/TrustDefender/ah;->a:Ljava/lang/Class;

    const-string v1, "getAvailableBlocks"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ah;->d:Ljava/lang/reflect/Method;

    .line 31
    sget-object v0, Lcom/threatmetrix/TrustDefender/ah;->a:Ljava/lang/Class;

    const-string v1, "getAvailableBlocksLong"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ah;->e:Ljava/lang/reflect/Method;

    .line 32
    sget-object v0, Lcom/threatmetrix/TrustDefender/ah;->a:Ljava/lang/Class;

    const-string v1, "getBlockCount"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ah;->f:Ljava/lang/reflect/Method;

    .line 33
    sget-object v0, Lcom/threatmetrix/TrustDefender/ah;->a:Ljava/lang/Class;

    const-string v1, "getBlockCountLong"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/ah;->g:Ljava/lang/reflect/Method;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/at;-><init>()V

    .line 38
    sget-object v0, Lcom/threatmetrix/TrustDefender/ah;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ah;->i:Ljava/lang/Object;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/threatmetrix/TrustDefender/ah;->a:Ljava/lang/Class;

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ah;->i:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50
    sget-object v1, Lcom/threatmetrix/TrustDefender/ah;->g:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ah;->i:Ljava/lang/Object;

    sget-object v2, Lcom/threatmetrix/TrustDefender/ah;->g:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 53
    .local v0, "ret":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 64
    .end local v0    # "ret":Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 57
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefender/ah;->f:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ah;->i:Ljava/lang/Object;

    sget-object v2, Lcom/threatmetrix/TrustDefender/ah;->f:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 60
    .local v0, "ret":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0

    .line 64
    .end local v0    # "ret":Ljava/lang/Integer;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    sget-object v1, Lcom/threatmetrix/TrustDefender/ah;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ah;->i:Ljava/lang/Object;

    sget-object v2, Lcom/threatmetrix/TrustDefender/ah;->c:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 72
    .local v0, "ret":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 83
    .end local v0    # "ret":Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 76
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefender/ah;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ah;->i:Ljava/lang/Object;

    sget-object v2, Lcom/threatmetrix/TrustDefender/ah;->b:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 79
    .local v0, "ret":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0

    .line 83
    .end local v0    # "ret":Ljava/lang/Integer;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final c()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    sget-object v1, Lcom/threatmetrix/TrustDefender/ah;->e:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ah;->i:Ljava/lang/Object;

    sget-object v2, Lcom/threatmetrix/TrustDefender/ah;->e:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 91
    .local v0, "ret":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 102
    .end local v0    # "ret":Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 95
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefender/ah;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/ah;->i:Ljava/lang/Object;

    sget-object v2, Lcom/threatmetrix/TrustDefender/ah;->d:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/threatmetrix/TrustDefender/ah;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 98
    .local v0, "ret":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0

    .line 102
    .end local v0    # "ret":Ljava/lang/Integer;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
