.class Lcom/threatmetrix/TrustDefender/j;
.super Lcom/threatmetrix/TrustDefender/at;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;

.field private static final h:Ljava/lang/reflect/Method;

.field private static final i:Ljava/lang/reflect/Method;

.field private static final j:Ljava/lang/reflect/Method;


# instance fields
.field private k:Landroid/view/Display;

.field private l:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    const-class v0, Lcom/threatmetrix/TrustDefender/j;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->a:Ljava/lang/String;

    .line 37
    const-string v0, "android.graphics.Point"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/j;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->b:Ljava/lang/Class;

    .line 38
    const-string v0, "android.view.WindowManager"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/j;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->c:Ljava/lang/Class;

    .line 40
    const-class v0, Landroid/view/Display;

    const-string v1, "getWidth"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->d:Ljava/lang/reflect/Method;

    .line 41
    const-class v0, Landroid/view/Display;

    const-string v1, "getHeight"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->e:Ljava/lang/reflect/Method;

    .line 42
    sget-object v0, Lcom/threatmetrix/TrustDefender/j;->c:Ljava/lang/Class;

    const-string v1, "getDefaultDisplay"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->j:Ljava/lang/reflect/Method;

    .line 44
    sget-object v0, Lcom/threatmetrix/TrustDefender/j;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 46
    const-class v0, Landroid/view/Display;

    const-string v1, "getSize"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Point;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->f:Ljava/lang/reflect/Method;

    .line 47
    const-class v0, Landroid/view/Display;

    const-string v1, "getRealSize"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Point;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->g:Ljava/lang/reflect/Method;

    .line 48
    const-class v0, Landroid/view/Display;

    const-string v1, "getRawWidth"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Point;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->h:Ljava/lang/reflect/Method;

    .line 49
    const-class v0, Landroid/view/Display;

    const-string v1, "getRawHeight"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Point;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->i:Ljava/lang/reflect/Method;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->i:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->h:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->g:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/threatmetrix/TrustDefender/j;->f:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/at;-><init>()V

    .line 59
    sget-object v2, Lcom/threatmetrix/TrustDefender/j;->j:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 63
    :try_start_0
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, "windowService":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    .line 66
    check-cast v1, Landroid/view/WindowManager;

    .end local v1    # "windowService":Ljava/lang/Object;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/j;->k:Landroid/view/Display;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :cond_0
    :goto_0
    sget-object v2, Lcom/threatmetrix/TrustDefender/j;->b:Ljava/lang/Class;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/threatmetrix/TrustDefender/j;->g:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/j;->k:Landroid/view/Display;

    sget-object v5, Lcom/threatmetrix/TrustDefender/j;->g:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-eqz v4, :cond_1

    :goto_1
    iput-object v2, p0, Lcom/threatmetrix/TrustDefender/j;->l:Landroid/graphics/Point;

    .line 79
    return-void

    .line 71
    :catch_0
    move-exception v2

    sget-object v2, Lcom/threatmetrix/TrustDefender/j;->a:Ljava/lang/String;

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/threatmetrix/TrustDefender/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v2, v3

    .line 78
    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 89
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->k:Landroid/view/Display;

    if-nez v3, :cond_1

    move v2, v4

    .line 114
    :cond_0
    :goto_0
    return v2

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->l:Landroid/graphics/Point;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->l:Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 95
    :cond_2
    sget-object v3, Lcom/threatmetrix/TrustDefender/j;->h:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->k:Landroid/view/Display;

    sget-object v5, Lcom/threatmetrix/TrustDefender/j;->h:Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    .local v2, "width":I
    :goto_1
    if-nez v2, :cond_0

    .line 99
    sget-object v3, Lcom/threatmetrix/TrustDefender/j;->f:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_4

    .line 101
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 103
    .local v0, "point":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->k:Landroid/view/Display;

    sget-object v5, Lcom/threatmetrix/TrustDefender/j;->f:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v3, v5, v6}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .end local v0    # "point":Landroid/graphics/Point;
    .end local v2    # "width":I
    :cond_3
    move v2, v4

    .line 95
    goto :goto_1

    .line 106
    .restart local v2    # "width":I
    :cond_4
    sget-object v3, Lcom/threatmetrix/TrustDefender/j;->d:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_5

    .line 108
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->k:Landroid/view/Display;

    sget-object v5, Lcom/threatmetrix/TrustDefender/j;->d:Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 109
    .local v1, "ret":Ljava/lang/Integer;
    if-eqz v1, :cond_5

    .line 110
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 113
    .end local v1    # "ret":Ljava/lang/Integer;
    :cond_5
    sget-object v3, Lcom/threatmetrix/TrustDefender/j;->a:Ljava/lang/String;

    move v2, v4

    .line 114
    goto :goto_0
.end method

.method public final b()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->k:Landroid/view/Display;

    if-nez v3, :cond_1

    move v0, v4

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->l:Landroid/graphics/Point;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->l:Landroid/graphics/Point;

    iget v0, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 131
    :cond_2
    sget-object v3, Lcom/threatmetrix/TrustDefender/j;->i:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->k:Landroid/view/Display;

    sget-object v5, Lcom/threatmetrix/TrustDefender/j;->i:Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    .local v0, "height":I
    :goto_1
    if-nez v0, :cond_0

    .line 135
    sget-object v3, Lcom/threatmetrix/TrustDefender/j;->f:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_4

    .line 137
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 139
    .local v1, "point":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->k:Landroid/view/Display;

    sget-object v5, Lcom/threatmetrix/TrustDefender/j;->f:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v3, v5, v6}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .end local v0    # "height":I
    .end local v1    # "point":Landroid/graphics/Point;
    :cond_3
    move v0, v4

    .line 131
    goto :goto_1

    .line 142
    .restart local v0    # "height":I
    :cond_4
    sget-object v3, Lcom/threatmetrix/TrustDefender/j;->e:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_5

    .line 144
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/j;->k:Landroid/view/Display;

    sget-object v5, Lcom/threatmetrix/TrustDefender/j;->e:Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/threatmetrix/TrustDefender/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 145
    .local v2, "ret":Ljava/lang/Integer;
    if-eqz v2, :cond_5

    .line 146
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 149
    .end local v2    # "ret":Ljava/lang/Integer;
    :cond_5
    sget-object v3, Lcom/threatmetrix/TrustDefender/j;->a:Ljava/lang/String;

    move v0, v4

    .line 150
    goto :goto_0
.end method
