.class public Lcom/admaster/jice/a/a;
.super Ljava/lang/Object;
.source "EventManager.java"


# static fields
.field private static b:Lcom/admaster/jice/a/a;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/jice/a/a;->b:Lcom/admaster/jice/a/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    .line 41
    const-string v1, "StoreManager context can`t be null!"

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/admaster/jice/a/a;->a:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/admaster/jice/a/a;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/admaster/jice/a/a;->b:Lcom/admaster/jice/a/a;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lcom/admaster/jice/a/x;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/admaster/jice/a/a;->b:Lcom/admaster/jice/a/a;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/admaster/jice/a/a;

    invoke-direct {v0, p0}, Lcom/admaster/jice/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/admaster/jice/a/a;->b:Lcom/admaster/jice/a/a;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Lcom/admaster/jice/a/a;->b:Lcom/admaster/jice/a/a;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/a;->a:Landroid/content/Context;

    const-string v1, "com.admaster.jice.event.failed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/a;->a:Landroid/content/Context;

    const-string v1, "com.admaster.jice.event.normal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/admaster/jice/a/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/admaster/jice/a/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    sget-object v1, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    if-ne p1, v1, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/admaster/jice/a/a;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 108
    :goto_0
    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 111
    :cond_0
    monitor-exit p0

    return-object v0

    .line 105
    :cond_1
    :try_start_1
    sget-object v1, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    if-ne p1, v1, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/admaster/jice/a/a;->b()Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method protected declared-synchronized a(Lcom/admaster/jice/a/b;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 122
    monitor-enter p0

    const/4 v0, 0x0

    .line 123
    :try_start_0
    sget-object v1, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    if-ne p1, v1, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/admaster/jice/a/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 133
    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    :cond_1
    const-string v1, "JiceError"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteEvent success:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   event:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_2
    monitor-exit p0

    return-void

    .line 125
    :cond_3
    :try_start_1
    sget-object v1, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    if-ne p1, v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/admaster/jice/a/a;->b()Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/admaster/jice/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x0

    .line 78
    :try_start_0
    sget-object v1, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    if-ne p1, v1, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/admaster/jice/a/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 89
    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    :cond_1
    const-string v1, "JiceError"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveEvent2Store success:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   event:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  expire:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_2
    monitor-exit p0

    return-void

    .line 80
    :cond_3
    :try_start_1
    sget-object v1, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    if-ne p1, v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/admaster/jice/a/a;->b()Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
