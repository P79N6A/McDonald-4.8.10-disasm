.class public Lcom/amap/api/services/core/aj;
.super Ljava/lang/Object;
.source "LogDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/services/core/ah;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/amap/api/services/core/ah;

    invoke-direct {v0, p1}, Lcom/amap/api/services/core/ah;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/core/aj;->a:Lcom/amap/api/services/core/ah;

    .line 17
    return-void
.end method

.method private a(I)Lcom/amap/api/services/core/ak;
    .locals 1

    .prologue
    .line 20
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    new-instance v0, Lcom/amap/api/services/core/af;

    invoke-direct {v0}, Lcom/amap/api/services/core/af;-><init>()V

    goto :goto_0

    .line 26
    :pswitch_1
    new-instance v0, Lcom/amap/api/services/core/ai;

    invoke-direct {v0}, Lcom/amap/api/services/core/ai;-><init>()V

    goto :goto_0

    .line 29
    :pswitch_2
    new-instance v0, Lcom/amap/api/services/core/ae;

    invoke-direct {v0}, Lcom/amap/api/services/core/ae;-><init>()V

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/amap/api/services/core/al;Lcom/amap/api/services/core/ak;)V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p2, p1}, Lcom/amap/api/services/core/ak;->a(Lcom/amap/api/services/core/al;)V

    .line 132
    iget-object v0, p0, Lcom/amap/api/services/core/aj;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v0, p2}, Lcom/amap/api/services/core/ah;->a(Lcom/amap/api/services/core/ao;)V

    .line 133
    return-void
.end method

.method private b(Lcom/amap/api/services/core/al;Lcom/amap/api/services/core/ak;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-virtual {p1}, Lcom/amap/api/services/core/al;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/core/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v0, p0, Lcom/amap/api/services/core/aj;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v0, v1, p2}, Lcom/amap/api/services/core/ah;->c(Ljava/lang/String;Lcom/amap/api/services/core/ao;)Ljava/util/List;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 142
    :cond_0
    invoke-virtual {p2, p1}, Lcom/amap/api/services/core/ak;->a(Lcom/amap/api/services/core/al;)V

    .line 143
    iget-object v0, p0, Lcom/amap/api/services/core/aj;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v0, p2}, Lcom/amap/api/services/core/ah;->a(Lcom/amap/api/services/core/ao;)V

    .line 156
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/al;

    .line 146
    invoke-virtual {p1}, Lcom/amap/api/services/core/al;->a()I

    move-result v2

    if-nez v2, :cond_2

    .line 147
    invoke-virtual {v0}, Lcom/amap/api/services/core/al;->d()I

    move-result v2

    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 149
    invoke-virtual {v0, v2}, Lcom/amap/api/services/core/al;->b(I)V

    .line 153
    :goto_1
    invoke-virtual {p2, v0}, Lcom/amap/api/services/core/ak;->a(Lcom/amap/api/services/core/al;)V

    .line 154
    iget-object v0, p0, Lcom/amap/api/services/core/aj;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v0, v1, p2}, Lcom/amap/api/services/core/ah;->b(Ljava/lang/String;Lcom/amap/api/services/core/ao;)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v0, v3}, Lcom/amap/api/services/core/al;->b(I)V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 57
    invoke-static {p1}, Lcom/amap/api/services/core/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {p0, p2}, Lcom/amap/api/services/core/aj;->a(I)Lcom/amap/api/services/core/ak;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/amap/api/services/core/aj;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/services/core/ah;->a(Ljava/lang/String;Lcom/amap/api/services/core/ao;)V

    .line 60
    return-void
.end method


# virtual methods
.method public a(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/al;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/services/core/aj;->a(I)Lcom/amap/api/services/core/ak;

    move-result-object v1

    .line 98
    invoke-static {p1}, Lcom/amap/api/services/core/ak;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/amap/api/services/core/aj;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v3, v2, v1}, Lcom/amap/api/services/core/ah;->c(Ljava/lang/String;Lcom/amap/api/services/core/ao;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v1

    .line 102
    const-string v2, "LogDB"

    const-string v3, "ByState"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/services/core/al;I)V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/services/core/aj;->a(I)Lcom/amap/api/services/core/ak;

    move-result-object v0

    .line 83
    invoke-interface {v0, p1}, Lcom/amap/api/services/core/ao;->a(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p1}, Lcom/amap/api/services/core/al;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/amap/api/services/core/aj;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/services/core/ah;->b(Ljava/lang/String;Lcom/amap/api/services/core/ao;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "LogDB"

    const-string/jumbo v2, "updateLogInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 39
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/core/aj;->c(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 42
    const-string v1, "LogDB"

    const-string v2, "delLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/services/core/al;I)V
    .locals 1

    .prologue
    .line 111
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/services/core/aj;->a(I)Lcom/amap/api/services/core/ak;

    move-result-object v0

    .line 112
    packed-switch p2, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 114
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/amap/api/services/core/aj;->a(Lcom/amap/api/services/core/al;Lcom/amap/api/services/core/ak;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 117
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/amap/api/services/core/aj;->b(Lcom/amap/api/services/core/al;Lcom/amap/api/services/core/ak;)V

    goto :goto_0

    .line 120
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/amap/api/services/core/aj;->b(Lcom/amap/api/services/core/al;Lcom/amap/api/services/core/ak;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 49
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/core/aj;->c(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
