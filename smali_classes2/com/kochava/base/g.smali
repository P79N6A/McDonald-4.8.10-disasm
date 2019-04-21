.class final Lcom/kochava/base/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/kochava/base/f;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private final e:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/kochava/base/f;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kochava/base/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/g;->c:Ljava/lang/ref/WeakReference;

    iput-boolean v5, p0, Lcom/kochava/base/g;->d:Z

    new-instance v0, Lcom/kochava/base/g$1;

    invoke-direct {v0, p0}, Lcom/kochava/base/g$1;-><init>(Lcom/kochava/base/g;)V

    iput-object v0, p0, Lcom/kochava/base/g;->e:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/kochava/base/g;->b:Lcom/kochava/base/f;

    iput-object p2, p0, Lcom/kochava/base/g;->a:Landroid/os/Handler;

    const/4 v0, 0x5

    const-string v1, "SMO"

    const-string v2, "SessionMonito"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :goto_0
    invoke-static {p1}, Lcom/kochava/base/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v6, p0, Lcom/kochava/base/g;->d:Z

    invoke-interface {p3, v6}, Lcom/kochava/base/f;->c(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    const-string v1, "SMO"

    const-string v2, "SessionMonito"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Invalid Application Context"

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kochava/base/g;)Lcom/kochava/base/f;
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/g;->b:Lcom/kochava/base/f;

    return-object v0
.end method

.method static synthetic a(Lcom/kochava/base/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kochava/base/g;->d:Z

    return p1
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/kochava/base/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/g;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/kochava/base/g;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const-string v1, "SMO"

    const-string v2, "goActive"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "goActive"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/kochava/base/g;->d:Z

    iget-object v0, p0, Lcom/kochava/base/g;->b:Lcom/kochava/base/f;

    invoke-interface {v0, v6}, Lcom/kochava/base/f;->c(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/g;->d:Z

    return v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x5

    const-string v1, "SMO"

    const-string v2, "onActivityCre"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x5

    const-string v1, "SMO"

    const-string v2, "onActivityDes"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x5

    const-string v1, "SMO"

    const-string v2, "onActivityPau"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/g;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kochava/base/g;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x5

    const-string v1, "SMO"

    const-string v2, "onActivityRes"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/g;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kochava/base/g;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-direct {p0}, Lcom/kochava/base/g;->b()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v0, 0x5

    const-string v1, "SMO"

    const-string v2, "onActivitySav"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const-string v0, "onActivitySta"

    const/4 v0, 0x5

    const-string v1, "SMO"

    const-string v2, "onActivitySta"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/kochava/base/g;->d:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kochava/base/g;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/kochava/base/g;->b()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "onActivitySto"

    const-string v0, "SMO"

    const-string v1, "onActivitySto"

    new-array v2, v5, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/kochava/base/g;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/kochava/base/g;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/g;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMO"

    const-string v1, "onActivitySto"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "?GoInactive?"

    aput-object v3, v2, v4

    invoke-static {v6, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/g;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kochava/base/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/g;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/g;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x5

    const-string v1, "SMO"

    const-string v2, "onConfigurati"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 4

    const/4 v0, 0x5

    const-string v1, "SMO"

    const-string v2, "onLowMemory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "SMO"

    const-string v1, "onTrimMemory"

    new-array v2, v5, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/kochava/base/g;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/kochava/base/g;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    const-string v0, "SMO"

    const-string v1, "onTrimMemory"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "GoInactive"

    aput-object v3, v2, v4

    invoke-static {v6, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/g;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/g;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/kochava/base/g;->d:Z

    iget-object v0, p0, Lcom/kochava/base/g;->b:Lcom/kochava/base/f;

    invoke-interface {v0, v4}, Lcom/kochava/base/f;->c(Z)V

    :cond_0
    return-void
.end method
