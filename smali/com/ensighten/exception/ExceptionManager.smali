.class public Lcom/ensighten/exception/ExceptionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/l$a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/ensighten/exception/ExceptionManager;->c:Z

    .line 38
    iput-boolean v0, p0, Lcom/ensighten/exception/ExceptionManager;->b:Z

    .line 41
    iput-object p1, p0, Lcom/ensighten/exception/ExceptionManager;->a:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/ensighten/exception/ExceptionManager;Z)Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ensighten/exception/ExceptionManager;->b:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/ensighten/exception/ExceptionManager;->b()V

    .line 112
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 1868
    iget-object v1, v0, Lcom/ensighten/l;->e:Ljava/util/Set;

    monitor-enter v1

    .line 1869
    :try_start_0
    iget-object v0, v0, Lcom/ensighten/l;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1870
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 49
    iget-boolean v0, p0, Lcom/ensighten/exception/ExceptionManager;->c:Z

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/ensighten/Ensighten;->getViewManager()Lcom/ensighten/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/W;->c()Landroid/app/Activity;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 55
    :try_start_0
    invoke-static {v0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 56
    new-instance v0, Lcom/ensighten/n;

    invoke-direct {v0}, Lcom/ensighten/n;-><init>()V

    .line 57
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/exception/ExceptionManager;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-static {}, Lcom/ensighten/i;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "Error enabling crash reporter with error %s."

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ensighten/i;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 1857
    iget-object v1, v0, Lcom/ensighten/l;->e:Ljava/util/Set;

    monitor-enter v1

    .line 1858
    :try_start_1
    iget-object v0, v0, Lcom/ensighten/l;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1859
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
