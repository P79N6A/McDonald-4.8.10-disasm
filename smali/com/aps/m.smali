.class public Lcom/aps/m;
.super Ljava/lang/Object;
.source "LocFilter.java"


# static fields
.field private static a:Lcom/aps/m;


# instance fields
.field private b:Lcom/aps/c;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/aps/m;->a:Lcom/aps/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 16
    iput-wide v2, p0, Lcom/aps/m;->c:J

    .line 17
    iput-wide v2, p0, Lcom/aps/m;->d:J

    .line 21
    return-void
.end method

.method public static declared-synchronized a()Lcom/aps/m;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/aps/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aps/m;->a:Lcom/aps/m;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/aps/m;

    invoke-direct {v0}, Lcom/aps/m;-><init>()V

    sput-object v0, Lcom/aps/m;->a:Lcom/aps/m;

    .line 27
    :cond_0
    sget-object v0, Lcom/aps/m;->a:Lcom/aps/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/aps/c;)Lcom/aps/c;
    .locals 12

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-static {v0}, Lcom/aps/v;->a(Lcom/aps/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/aps/v;->a(Lcom/aps/c;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    :cond_0
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    .line 62
    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 63
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_1
    :goto_0
    monitor-exit p0

    return-object p1

    .line 64
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/aps/c;->j()J

    move-result-wide v0

    iget-object v2, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-virtual {v2}, Lcom/aps/c;->j()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/aps/c;->i()F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 69
    :cond_3
    invoke-virtual {p1}, Lcom/aps/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    .line 73
    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 74
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {p1}, Lcom/aps/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-virtual {v1}, Lcom/aps/c;->e()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 81
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    .line 82
    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 83
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto :goto_0

    .line 84
    :cond_5
    sget-boolean v0, Lcom/aps/g;->l:Z

    if-nez v0, :cond_6

    .line 89
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    .line 90
    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 91
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto :goto_0

    .line 92
    :cond_6
    invoke-virtual {p1}, Lcom/aps/c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-virtual {v1}, Lcom/aps/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 97
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    .line 98
    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 99
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto :goto_0

    .line 101
    :cond_7
    iget-object v0, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-static {p1, v0}, Lcom/aps/v;->a(Lcom/aps/c;Lcom/aps/c;)F

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    invoke-virtual {v1}, Lcom/aps/c;->i()F

    move-result v1

    .line 103
    invoke-virtual {p1}, Lcom/aps/c;->i()F

    move-result v2

    .line 104
    sub-float v3, v2, v1

    .line 105
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v4

    .line 106
    iget-wide v6, p0, Lcom/aps/m;->c:J

    sub-long v6, v4, v6

    .line 109
    const/high16 v8, 0x42ca0000    # 101.0f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_8

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-gtz v8, :cond_9

    :cond_8
    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_c

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-lez v8, :cond_c

    .line 111
    :cond_9
    iget-wide v0, p0, Lcom/aps/m;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 112
    iput-wide v4, p0, Lcom/aps/m;->d:J

    .line 125
    :cond_a
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    .line 113
    :cond_b
    iget-wide v0, p0, Lcom/aps/m;->d:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 114
    iput-wide v4, p0, Lcom/aps/m;->c:J

    .line 115
    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/m;->d:J

    .line 120
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    .line 126
    :cond_c
    const/high16 v8, 0x42c80000    # 100.0f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_d

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_d

    .line 129
    iput-wide v4, p0, Lcom/aps/m;->c:J

    .line 130
    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/m;->d:J

    .line 132
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    .line 133
    :cond_d
    const v8, 0x43958000    # 299.0f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_e

    .line 134
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/aps/m;->d:J

    .line 142
    :cond_e
    const/high16 v8, 0x41a00000    # 20.0f

    cmpg-float v8, v0, v8

    if-gez v8, :cond_11

    float-to-double v8, v0

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v8, v10

    if-lez v0, :cond_11

    .line 143
    const/high16 v0, -0x3c6a0000    # -300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_f

    .line 150
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    .line 152
    :cond_f
    div-float v0, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    .line 156
    iput-wide v4, p0, Lcom/aps/m;->c:J

    .line 157
    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 158
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    .line 164
    :cond_10
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    .line 174
    :cond_11
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_13

    .line 178
    const-wide/16 v0, 0x7530

    cmp-long v0, v6, v0

    if-ltz v0, :cond_12

    .line 181
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    .line 182
    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 183
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    .line 189
    :cond_12
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    goto/16 :goto_0

    .line 194
    :cond_13
    invoke-static {}, Lcom/aps/v;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    .line 195
    iput-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 196
    iget-object p1, p0, Lcom/aps/m;->b:Lcom/aps/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/aps/m;->b:Lcom/aps/c;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/m;->c:J

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/m;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
