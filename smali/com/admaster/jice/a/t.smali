.class public Lcom/admaster/jice/a/t;
.super Ljava/lang/Object;
.source "JiceTestPushManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/admaster/jice/a/v;

.field private c:Lcom/admaster/jice/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/admaster/jice/d/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/admaster/jice/a/t;->a:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/admaster/jice/a/t;->b:Lcom/admaster/jice/a/v;

    .line 35
    iput-object v0, p0, Lcom/admaster/jice/a/t;->c:Lcom/admaster/jice/d/b;

    .line 38
    iput-object p1, p0, Lcom/admaster/jice/a/t;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/admaster/jice/a/t;->c:Lcom/admaster/jice/d/b;

    .line 40
    new-instance v0, Lcom/admaster/jice/a/v;

    invoke-direct {v0, p0, p3, p4}, Lcom/admaster/jice/a/v;-><init>(Lcom/admaster/jice/a/t;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/admaster/jice/a/t;->b:Lcom/admaster/jice/a/v;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/t;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/admaster/jice/a/t;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    const-class v1, Lcom/admaster/jice/a/t;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "com.admaster.jice.testpushconfig"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    const-string v2, "testconfiglist"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/admaster/jice/a/t;Lcom/admaster/jice/b/d;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/b/d;)V

    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/t;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/admaster/jice/a/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/t;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/admaster/jice/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/admaster/jice/b/d;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 172
    :try_start_0
    invoke-virtual {p1}, Lcom/admaster/jice/b/d;->getPushId()I

    move-result v1

    .line 173
    invoke-virtual {p1}, Lcom/admaster/jice/b/d;->getVertical()Lcom/admaster/jice/b/e;

    move-result-object v2

    .line 174
    invoke-virtual {p1}, Lcom/admaster/jice/b/d;->getHorizontal()Lcom/admaster/jice/b/e;

    move-result-object v3

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  ver:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/admaster/jice/b/e;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/t;->a(Ljava/lang/String;)V

    .line 180
    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {p1, v2}, Lcom/admaster/jice/b/d;->hasCacheImage(Lcom/admaster/jice/b/e;)Z

    move-result v0

    .line 183
    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/admaster/jice/a/u;

    invoke-direct {v0, p0, v2}, Lcom/admaster/jice/a/u;-><init>(Lcom/admaster/jice/a/t;Lcom/admaster/jice/b/e;)V

    invoke-virtual {v0}, Lcom/admaster/jice/a/u;->start()V

    .line 188
    :cond_1
    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {p1, v3}, Lcom/admaster/jice/b/d;->hasCacheImage(Lcom/admaster/jice/b/e;)Z

    move-result v0

    .line 191
    if-nez v0, :cond_2

    .line 192
    new-instance v0, Lcom/admaster/jice/a/u;

    invoke-direct {v0, p0, v3}, Lcom/admaster/jice/a/u;-><init>(Lcom/admaster/jice/a/t;Lcom/admaster/jice/b/e;)V

    invoke-virtual {v0}, Lcom/admaster/jice/a/u;->start()V

    .line 199
    :cond_2
    :goto_1
    return-void

    .line 177
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  hor:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lcom/admaster/jice/b/e;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "JiceSDK.JiceTestPushManager"

    const-string v2, "Test JCMaterial parsing failed."

    invoke-static {v1, v2, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/t;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.admaster.jice.testpushconfig"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    const-string v1, "testconfiglist"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/admaster/jice/a/t;)Lcom/admaster/jice/d/b;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/admaster/jice/a/t;->c:Lcom/admaster/jice/d/b;

    return-object v0
.end method

.method protected static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    const-class v1, Lcom/admaster/jice/a/t;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "com.admaster.jice.testpushconfig"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    const-string v2, "testconfiglist"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit v1

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/admaster/jice/a/t;->b:Lcom/admaster/jice/a/v;

    invoke-virtual {v0}, Lcom/admaster/jice/a/v;->start()V

    .line 56
    return-void
.end method
