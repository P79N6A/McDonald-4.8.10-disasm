.class final Lcom/kochava/base/h;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/AnyThread;
.end annotation


# instance fields
.field final a:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final d:Lcom/kochava/base/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final e:Lcom/kochava/base/AttributionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final f:Lcom/kochava/base/AttributionUpdateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final g:Lcom/kochava/base/ConsentStatusChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final h:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final i:Lcom/kochava/base/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final j:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final k:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final l:Landroid/os/HandlerThread;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final m:Landroid/os/HandlerThread;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final n:Ljava/lang/String;

.field final o:Z

.field final p:J

.field final q:Z

.field volatile r:I

.field volatile s:J

.field private t:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/kochava/base/b;Lorg/json/JSONObject;Lcom/kochava/base/AttributionListener;Lcom/kochava/base/AttributionUpdateListener;Lcom/kochava/base/ConsentStatusChangeListener;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kochava/base/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/kochava/base/AttributionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/kochava/base/AttributionUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/kochava/base/ConsentStatusChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/kochava/base/h;->b:Ljava/util/List;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EventThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kochava/base/h;->l:Landroid/os/HandlerThread;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ControllerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kochava/base/h;->m:Landroid/os/HandlerThread;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kochava/base/h;->n:Ljava/lang/String;

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kochava/base/h;->p:J

    iput v0, p0, Lcom/kochava/base/h;->r:I

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kochava/base/h;->s:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kochava/base/h;->t:Ljava/lang/Object;

    iput-object p1, p0, Lcom/kochava/base/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/kochava/base/h;->h:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/kochava/base/h;->i:Lcom/kochava/base/b;

    iput-object p4, p0, Lcom/kochava/base/h;->c:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/kochava/base/h;->e:Lcom/kochava/base/AttributionListener;

    iput-object p6, p0, Lcom/kochava/base/h;->f:Lcom/kochava/base/AttributionUpdateListener;

    iput-object p7, p0, Lcom/kochava/base/h;->g:Lcom/kochava/base/ConsentStatusChangeListener;

    iput-boolean p8, p0, Lcom/kochava/base/h;->o:Z

    new-instance v1, Lcom/kochava/base/d;

    invoke-direct {v1, p1, p8}, Lcom/kochava/base/d;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    new-instance v1, Lcom/kochava/base/h$1;

    invoke-direct {v1, p0}, Lcom/kochava/base/h$1;-><init>(Lcom/kochava/base/h;)V

    iget-object v2, p0, Lcom/kochava/base/h;->l:Landroid/os/HandlerThread;

    invoke-virtual {v2, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v2, p0, Lcom/kochava/base/h;->m:Landroid/os/HandlerThread;

    invoke-virtual {v2, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v1, p0, Lcom/kochava/base/h;->l:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/kochava/base/h;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/kochava/base/h;->l:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kochava/base/h;->j:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/kochava/base/h;->m:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "kochava_device_id"

    invoke-virtual {v1, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "kvinit_wait"

    invoke-virtual {v1, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/kochava/base/h;->q:Z

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/h;->j:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final a(Ljava/lang/Runnable;Z)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final a()Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/h;->t:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lcom/kochava/base/h;->t:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/h;->t:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/h;->t:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method final b(Ljava/lang/Runnable;J)V
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kochava/base/h;->t:Ljava/lang/Object;

    iget-object v0, p0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/h;->t:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method
