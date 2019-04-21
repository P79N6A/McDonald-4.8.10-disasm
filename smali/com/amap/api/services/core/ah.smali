.class public Lcom/amap/api/services/core/ah;
.super Ljava/lang/Object;
.source "DBOperation.java"


# instance fields
.field private a:Lcom/amap/api/services/core/ag;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/amap/api/services/core/ag;

    const-string v1, "logdb.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amap/api/services/core/ag;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/amap/api/services/core/ah;->a:Lcom/amap/api/services/core/ag;

    .line 22
    return-void
.end method

.method private a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->a:Lcom/amap/api/services/core/ag;

    invoke-virtual {v0}, Lcom/amap/api/services/core/ag;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->a:Lcom/amap/api/services/core/ag;

    invoke-virtual {v0}, Lcom/amap/api/services/core/ag;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/services/core/ao;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amap/api/services/core/ao",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-interface {p1}, Lcom/amap/api/services/core/ao;->b()Landroid/content/ContentValues;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/amap/api/services/core/ao;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/services/core/ah;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p1}, Lcom/amap/api/services/core/ao;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_4

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 116
    :goto_2
    iput-object v5, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 109
    :cond_4
    :try_start_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v3, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_2
    const-string v1, "DataBase"

    const-string v2, "insertData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 114
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_5

    .line 115
    iget-object v1, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 116
    iput-object v5, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    :cond_5
    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/amap/api/services/core/ao;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amap/api/services/core/ao",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-interface {p2}, Lcom/amap/api/services/core/ao;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/services/core/ah;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/amap/api/services/core/ao;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_4

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 56
    :goto_2
    iput-object v4, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 49
    :cond_4
    :try_start_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :try_start_2
    const-string v1, "DataBase"

    const-string v2, "deleteData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 54
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_5

    .line 55
    iget-object v1, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 56
    iput-object v4, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    :cond_5
    throw v0
.end method

.method public b(Ljava/lang/String;Lcom/amap/api/services/core/ao;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amap/api/services/core/ao",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 63
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/amap/api/services/core/ao;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-interface {p2}, Lcom/amap/api/services/core/ao;->b()Landroid/content/ContentValues;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/services/core/ah;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/amap/api/services/core/ao;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    instance-of v4, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_4

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 84
    :goto_2
    iput-object v5, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 77
    :cond_4
    :try_start_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v2, v1, p1, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :try_start_2
    const-string v1, "DataBase"

    const-string/jumbo v2, "updateData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 82
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_5

    .line 83
    iget-object v1, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 84
    iput-object v5, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 82
    :cond_5
    throw v0
.end method

.method public c(Ljava/lang/String;Lcom/amap/api/services/core/ao;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amap/api/services/core/ao",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 144
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/amap/api/services/core/ah;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/amap/api/services/core/ao;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move-object v0, v8

    .line 175
    :goto_0
    return-object v0

    .line 153
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/amap/api/services/core/ao;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_4

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 156
    :goto_1
    if-nez v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    iput-object v9, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    move-object v0, v8

    .line 159
    goto :goto_0

    .line 153
    :cond_4
    :try_start_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_5
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 162
    invoke-interface {p2, v0}, Lcom/amap/api/services/core/ao;->b(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    :try_start_2
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    .line 170
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    :goto_3
    iput-object v9, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_6
    move-object v0, v8

    .line 175
    goto :goto_0

    .line 164
    :cond_7
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    .line 170
    iget-object v0, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 169
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_8

    .line 170
    iget-object v1, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 171
    iput-object v9, p0, Lcom/amap/api/services/core/ah;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 169
    :cond_8
    throw v0
.end method
