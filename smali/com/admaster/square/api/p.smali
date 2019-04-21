.class public Lcom/admaster/square/api/p;
.super Ljava/lang/Object;
.source "SendMessageThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/admaster/square/api/p;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/admaster/square/api/p;->b:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/admaster/square/api/p;->c:Ljava/util/concurrent/Semaphore;

    .line 30
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Lcom/admaster/square/utils/b;->a()Lcom/admaster/square/utils/b;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/admaster/square/utils/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/admaster/square/api/p;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/admaster/square/api/p;->a:Ljava/lang/String;

    invoke-static {v0, v2, p1}, Lcom/admaster/square/utils/i;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admaster/square/utils/l;

    .line 104
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/admaster/square/utils/l;->c()J

    move-result-wide v2

    .line 110
    invoke-static {v2, v3}, Lcom/admaster/square/utils/a;->a(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/admaster/square/utils/l;->d()I

    move-result v2

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_0

    .line 113
    :cond_2
    sget-object v2, Lcom/admaster/square/utils/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/admaster/square/utils/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/admaster/square/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "admaster request json result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    .line 118
    if-eqz v1, :cond_3

    const-string v2, "200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    iget-object v0, p0, Lcom/admaster/square/api/p;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/admaster/square/api/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/admaster/square/api/p;->b:Landroid/content/Context;

    invoke-virtual {p0, v1, v0, p1}, Lcom/admaster/square/api/p;->a(Landroid/content/Context;Lcom/admaster/square/utils/l;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/admaster/square/api/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/admaster/square/utils/i;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/admaster/square/api/p;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 40
    iget-object v1, p0, Lcom/admaster/square/api/p;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/admaster/square/api/p;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    const/4 v1, 0x0

    .line 44
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 45
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/admaster/square/utils/h;->n:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/admaster/square/utils/h;->n:I

    div-int/2addr v2, v3

    move v3, v2

    .line 47
    :goto_0
    sget v2, Lcom/admaster/square/utils/h;->n:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    mul-int v5, v3, v2

    .line 48
    if-lez v3, :cond_0

    if-lez v5, :cond_0

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 49
    :goto_1
    if-lt v1, v3, :cond_2

    .line 79
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/admaster/square/api/p;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_2
    monitor-exit p0

    return-void

    .line 46
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/admaster/square/utils/h;->n:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_0

    .line 50
    :cond_2
    const/4 v2, 0x1

    if-gt v3, v2, :cond_4

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v0, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    :goto_3
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v6, Lcom/admaster/square/utils/h;->n:I

    if-lt v0, v6, :cond_3

    .line 67
    sget v0, Lcom/admaster/square/utils/h;->o:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 69
    :cond_3
    invoke-virtual {p0, v2}, Lcom/admaster/square/api/p;->a(Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    .line 55
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v5, v2, :cond_6

    .line 56
    add-int/lit8 v0, v1, 0x1

    sget v2, Lcom/admaster/square/utils/h;->n:I

    mul-int/2addr v0, v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_5

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    .line 58
    sget v0, Lcom/admaster/square/utils/h;->n:I

    mul-int/2addr v0, v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v0, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    :try_start_6
    iget-object v0, p0, Lcom/admaster/square/api/p;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 60
    :cond_5
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    sget v0, Lcom/admaster/square/utils/h;->n:I

    mul-int/2addr v0, v1

    .line 61
    add-int/lit8 v6, v1, 0x1

    sget v7, Lcom/admaster/square/utils/h;->n:I

    mul-int/2addr v6, v7

    .line 60
    invoke-virtual {v4, v0, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    :try_start_8
    iget-object v1, p0, Lcom/admaster/square/api/p;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 80
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :cond_6
    move-object v2, v0

    goto :goto_3
.end method

.method public a(Landroid/content/Context;Lcom/admaster/square/utils/l;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 141
    invoke-virtual {p2}, Lcom/admaster/square/utils/l;->b()J

    move-result-wide v2

    .line 142
    invoke-virtual {p2}, Lcom/admaster/square/utils/l;->c()J

    move-result-wide v4

    .line 145
    invoke-static {v2, v3}, Lcom/admaster/square/utils/a;->b(J)Z

    move-result v2

    .line 146
    invoke-static {v4, v5}, Lcom/admaster/square/utils/a;->a(J)Z

    move-result v3

    .line 147
    if-nez v2, :cond_1

    .line 148
    iget-object v0, p0, Lcom/admaster/square/api/p;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lcom/admaster/square/api/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    if-nez v3, :cond_2

    .line 153
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/admaster/square/utils/l;->a(I)V

    .line 154
    invoke-virtual {p2, v0, v1}, Lcom/admaster/square/utils/l;->b(J)V

    .line 156
    iget-object v0, p0, Lcom/admaster/square/api/p;->a:Ljava/lang/String;

    invoke-static {p1, v0, p3, p2}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p2}, Lcom/admaster/square/utils/l;->d()I

    move-result v2

    .line 160
    const/16 v3, 0x1e

    if-gt v2, v3, :cond_0

    .line 161
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/admaster/square/utils/l;->a(I)V

    .line 162
    invoke-virtual {p2, v0, v1}, Lcom/admaster/square/utils/l;->b(J)V

    .line 164
    iget-object v0, p0, Lcom/admaster/square/api/p;->a:Ljava/lang/String;

    invoke-static {p1, v0, p3, p2}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    return-void

    .line 86
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/admaster/square/api/p;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/admaster/square/utils/o;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    :try_start_0
    invoke-direct {p0, v0}, Lcom/admaster/square/api/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/admaster/square/api/p;->a()V

    .line 35
    return-void
.end method
