.class final Lcom/kochava/base/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kochava/base/b;
.implements Lcom/kochava/base/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kochava/base/a$b;,
        Lcom/kochava/base/a$c;,
        Lcom/kochava/base/a$a;
    }
.end annotation


# instance fields
.field final a:Lcom/kochava/base/h;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Lcom/kochava/base/n;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final c:Lcom/kochava/base/s;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final d:Lcom/kochava/base/o;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final e:Lcom/kochava/base/l;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final f:Lcom/kochava/base/q;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final g:Lcom/kochava/base/a$c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final h:Lcom/kochava/base/g;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lcom/kochava/base/a$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private j:Lcom/kochava/base/e;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kochava/base/AttributionListener;Lcom/kochava/base/AttributionUpdateListener;Lcom/kochava/base/ConsentStatusChangeListener;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/kochava/base/AttributionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/kochava/base/AttributionUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/kochava/base/ConsentStatusChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kochava/base/a;->j:Lcom/kochava/base/e;

    const-string v2, "Controller"

    const/4 v3, 0x4

    const-string v4, "CTR"

    const-string v5, "Controller"

    const/4 v2, 0x6

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extensionDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appGuid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "partnerName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attributionListener: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p6, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "custom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/kochava/base/a$a;

    move-object v3, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p10

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/kochava/base/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/kochava/base/a;->i:Lcom/kochava/base/a$a;

    new-instance v2, Lcom/kochava/base/h;

    move-object v3, p1

    move-object v4, p0

    move-object v5, p0

    move-object/from16 v6, p9

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p11

    invoke-direct/range {v2 .. v10}, Lcom/kochava/base/h;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/kochava/base/b;Lorg/json/JSONObject;Lcom/kochava/base/AttributionListener;Lcom/kochava/base/AttributionUpdateListener;Lcom/kochava/base/ConsentStatusChangeListener;Z)V

    iput-object v2, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    new-instance v2, Lcom/kochava/base/a$c;

    iget-object v3, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-direct {v2, v3, p0}, Lcom/kochava/base/a$c;-><init>(Lcom/kochava/base/h;Lcom/kochava/base/b;)V

    iput-object v2, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/a$c;

    new-instance v2, Lcom/kochava/base/n;

    iget-object v3, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-direct {v2, v3}, Lcom/kochava/base/n;-><init>(Lcom/kochava/base/h;)V

    iput-object v2, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/n;

    new-instance v2, Lcom/kochava/base/s;

    iget-object v3, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-direct {v2, v3}, Lcom/kochava/base/s;-><init>(Lcom/kochava/base/h;)V

    iput-object v2, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/s;

    new-instance v2, Lcom/kochava/base/o;

    iget-object v3, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-direct {v2, v3}, Lcom/kochava/base/o;-><init>(Lcom/kochava/base/h;)V

    iput-object v2, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/o;

    new-instance v2, Lcom/kochava/base/l;

    iget-object v3, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-direct {v2, v3}, Lcom/kochava/base/l;-><init>(Lcom/kochava/base/h;)V

    iput-object v2, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/l;

    new-instance v2, Lcom/kochava/base/q;

    iget-object v3, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-direct {v2, v3}, Lcom/kochava/base/q;-><init>(Lcom/kochava/base/h;)V

    iput-object v2, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/q;

    iget-object v2, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v2, v2, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "sdk_version"

    invoke-virtual {v2, v3, p2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/kochava/base/a;->i:Lcom/kochava/base/a$a;

    iget-object v3, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-virtual {v2, v3}, Lcom/kochava/base/a$a;->a(Lcom/kochava/base/h;)V

    new-instance v2, Lcom/kochava/base/g;

    iget-object v3, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v4, v4, Lcom/kochava/base/h;->j:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, p0}, Lcom/kochava/base/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/kochava/base/f;)V

    iput-object v2, p0, Lcom/kochava/base/a;->h:Lcom/kochava/base/g;

    iget-object v2, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-boolean v2, v2, Lcom/kochava/base/h;->o:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/kochava/base/a;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/kochava/base/a;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v2, v2, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->c(Z)V

    :cond_1
    iget-object v2, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v3, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v3, v3, Lcom/kochava/base/h;->h:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, p1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->j:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->l:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_4
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->m:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_5
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->b()V

    :cond_6
    iget-object v0, p0, Lcom/kochava/base/a;->h:Lcom/kochava/base/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/kochava/base/a;->h:Lcom/kochava/base/g;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/kochava/base/a;->h:Lcom/kochava/base/g;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0
.end method

.method final a(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget v0, v0, Lcom/kochava/base/h;->r:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x4

    const-string v1, "CTR"

    const-string v2, "setOperatingM"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Rejecting same as current"

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    const-string v1, "CTR"

    const-string v2, "setOperatingM"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget v4, v4, Lcom/kochava/base/h;->r:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iput p1, v0, Lcom/kochava/base/h;->r:I

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget v0, v0, Lcom/kochava/base/h;->r:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x5

    const-string v1, "CTR"

    const-string v2, "sendEvent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "payload"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "eventName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eventData"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "receiptJson"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "receiptSignature"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uri"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/a$c;

    new-instance v2, Lcom/kochava/base/a$b;

    const-string v3, "sendEvent"

    invoke-direct {v2, v3, v0}, Lcom/kochava/base/a$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/kochava/base/a$c;->a(Lcom/kochava/base/a$b;)V

    return-void
.end method

.method final a(Landroid/net/Uri;ILcom/kochava/base/DeepLinkListener;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/kochava/base/DeepLinkListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/a;->j:Lcom/kochava/base/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/a;->j:Lcom/kochava/base/e;

    invoke-virtual {v0}, Lcom/kochava/base/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/a;->j:Lcom/kochava/base/e;

    :cond_0
    new-instance v0, Lcom/kochava/base/e;

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/kochava/base/e;-><init>(Landroid/net/Uri;ILcom/kochava/base/h;Lcom/kochava/base/DeepLinkListener;)V

    iput-object v0, p0, Lcom/kochava/base/a;->j:Lcom/kochava/base/e;

    return-void
.end method

.method final a(Lcom/kochava/base/Tracker$IdentityLink;)V
    .locals 4
    .param p1    # Lcom/kochava/base/Tracker$IdentityLink;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "identityLink"

    iget-object v2, p1, Lcom/kochava/base/Tracker$IdentityLink;->a:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/kochava/base/d;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/a$c;

    new-instance v2, Lcom/kochava/base/a$b;

    const-string v3, "setIdentityLink"

    invoke-direct {v2, v3, v0}, Lcom/kochava/base/a$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/kochava/base/a$c;->a(Lcom/kochava/base/a$b;)V

    return-void
.end method

.method final a(Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "enable"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/a$c;

    new-instance v2, Lcom/kochava/base/a$b;

    const-string v3, "setPushToken"

    invoke-direct {v2, v3, v0}, Lcom/kochava/base/a$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/kochava/base/a$c;->a(Lcom/kochava/base/a$b;)V

    return-void
.end method

.method final a(Z)V
    .locals 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appLimitAdTracking"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/a$c;

    new-instance v2, Lcom/kochava/base/a$b;

    const-string v3, "setAppLimitAdTracking"

    invoke-direct {v2, v3, v0}, Lcom/kochava/base/a$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/kochava/base/a$c;->a(Lcom/kochava/base/a$b;)V

    return-void
.end method

.method final b()I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget v0, v0, Lcom/kochava/base/h;->r:I

    return v0
.end method

.method final b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, p1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method final b(Z)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-boolean v0, v0, Lcom/kochava/base/h;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "CTR"

    const-string v2, "setConsentGra"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "Consent system disabled: Ignoring"

    aput-object v4, v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kochava/base/d;->a(Lorg/json/JSONObject;Z)V

    const-string v1, "should_prompt"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "consent_last_prompt"

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v9}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "consent"

    invoke-virtual {v1, v2, v0, v9}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v9}, Lcom/kochava/base/d;->c(Z)V

    iget-object v0, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/o;

    invoke-virtual {v0}, Lcom/kochava/base/o;->j()V

    iget-object v0, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/s;

    invoke-virtual {v0}, Lcom/kochava/base/s;->j()V

    iget-object v0, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/q;

    invoke-virtual {v0}, Lcom/kochava/base/q;->j()V

    iget-object v0, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/l;

    invoke-virtual {v0}, Lcom/kochava/base/l;->j()V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "blacklist"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/n;

    invoke-virtual {v0}, Lcom/kochava/base/n;->j()V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "init_last_sent"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v9}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_1
    iget-object v0, p0, Lcom/kochava/base/a;->i:Lcom/kochava/base/a$a;

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-virtual {v0, v1}, Lcom/kochava/base/a$a;->a(Lcom/kochava/base/h;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;J)V

    :goto_1
    iget-object v0, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/a$c;

    invoke-virtual {v0}, Lcom/kochava/base/a$c;->a()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/n;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/o;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/s;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/q;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/l;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v8}, Lcom/kochava/base/d;->a(Z)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v8}, Lcom/kochava/base/d;->c(Z)V

    goto :goto_1
.end method

.method final c()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-boolean v0, v0, Lcom/kochava/base/h;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "CTR"

    const-string v2, "getConsentDes"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Consent system disabled: Ignoring"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 10
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "session_tracking"

    invoke-virtual {v1, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v2, v2, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "initial_data"

    invoke-virtual {v2, v4}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v2, v2, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v4, "initial_ever_sent"

    invoke-virtual {v2, v4}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/kochava/base/h;->s:J

    iget-object v9, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    new-instance v0, Lcom/kochava/base/k;

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    const/4 v2, 0x2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/kochava/base/k;-><init>(Lcom/kochava/base/h;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0, v8}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v8

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    new-instance v0, Lcom/kochava/base/k;

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    const/4 v2, 0x3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/kochava/base/k;-><init>(Lcom/kochava/base/h;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0, v8}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;Z)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;J)V

    goto :goto_1
.end method

.method public final d()Z
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-boolean v1, v1, Lcom/kochava/base/h;->o:Z

    if-nez v1, :cond_0

    const/4 v1, 0x3

    const-string v2, "CTR"

    const-string v3, "isConsentRequ"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Consent system disabled: Ignoring"

    aput-object v5, v4, v0

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "required"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final e()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-boolean v1, v1, Lcom/kochava/base/h;->o:Z

    if-nez v1, :cond_0

    const/4 v1, 0x3

    const-string v2, "CTR"

    const-string v3, "isConsentGran"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Consent system disabled: Ignoring"

    aput-object v5, v4, v0

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "consent"

    invoke-virtual {p0, v1}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_GRANTED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()J
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-boolean v2, v2, Lcom/kochava/base/h;->o:Z

    if-nez v2, :cond_0

    const/4 v2, 0x3

    const-string v3, "CTR"

    const-string v4, "getConsentTim"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Consent system disabled: Ignoring"

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-wide v0

    :cond_0
    const-string v2, "consent"

    invoke-virtual {p0, v2}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_RESPONSE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-boolean v0, v0, Lcom/kochava/base/h;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "CTR"

    const-string v2, "getConsentPro"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Consent system disabled: Ignoring"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "prompt_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final h()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-boolean v1, v1, Lcom/kochava/base/h;->o:Z

    if-nez v1, :cond_0

    const/4 v1, 0x3

    const-string v2, "CTR"

    const-string v3, "isConsentShou"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Consent system disabled: Ignoring"

    aput-object v5, v4, v0

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "consent"

    invoke-virtual {p0, v1}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "should_prompt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    goto :goto_0
.end method

.method final i()V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-boolean v0, v0, Lcom/kochava/base/h;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "CTR"

    const-string v2, "clearConsentS"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Consent system disabled: Ignoring"

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "should_prompt"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "consent"

    invoke-virtual {v1, v2, v0, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "consent_last_prompt"

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method final j()Lorg/json/JSONArray;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-boolean v0, v0, Lcom/kochava/base/h;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "CTR"

    const-string v2, "getConsentPar"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Consent system disabled: Ignoring"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/kochava/base/Tracker$ConsentPartner;->KEY_PARTNERS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/kochava/base/d;->c(Ljava/lang/Object;Z)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/n;

    invoke-virtual {v0}, Lcom/kochava/base/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/s;

    invoke-virtual {v0}, Lcom/kochava/base/s;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/o;

    invoke-virtual {v0}, Lcom/kochava/base/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->h:Lcom/kochava/base/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/a;->h:Lcom/kochava/base/g;

    invoke-virtual {v0}, Lcom/kochava/base/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final run()V
    .locals 14
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v11, 0x2

    const-wide/16 v12, 0x3e8

    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v0, "Controller"

    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "WAKE"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget v0, v0, Lcom/kochava/base/h;->r:I

    if-eq v0, v8, :cond_0

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget v0, v0, Lcom/kochava/base/h;->r:I

    if-ne v0, v11, :cond_2

    :cond_0
    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "SLEEP: SKIP"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-virtual {v0}, Lcom/kochava/base/h;->b()V

    iget-object v0, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/n;

    invoke-virtual {v0}, Lcom/kochava/base/n;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "kvinit_staleness"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x15180

    invoke-static {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "init_last_sent"

    invoke-virtual {v1, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v2

    div-long/2addr v2, v12

    long-to-int v2, v2

    invoke-static {v1, v2}, Lcom/kochava/base/d;->b(Ljava/lang/Object;I)I

    move-result v1

    const-string v2, "CTR"

    const-string v3, "Controller"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initLastSent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initStaleness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "now: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v6

    div-long/2addr v6, v12

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v10, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v0, v1

    invoke-static {}, Lcom/kochava/base/d;->a()J

    move-result-wide v2

    div-long/2addr v2, v12

    long-to-int v1, v2

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "init_last_sent"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/n;

    invoke-virtual {v0}, Lcom/kochava/base/n;->j()V

    :cond_3
    iget-object v0, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/n;

    invoke-virtual {v0}, Lcom/kochava/base/n;->e()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "INIT"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/n;

    invoke-virtual {v0}, Lcom/kochava/base/n;->g()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/n;

    invoke-virtual {v0}, Lcom/kochava/base/n;->f()V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/n;

    invoke-virtual {v0, v1, v8}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "INIT SKIP"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-boolean v0, v0, Lcom/kochava/base/h;->o:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/kochava/base/a;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/kochava/base/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_6
    iget-object v0, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/a$c;

    invoke-virtual {v0}, Lcom/kochava/base/a$c;->a()V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "push"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v1, "push_token"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, v1, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v2, "push_token_enable"

    invoke-virtual {v1, v2}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/d;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v2, v2, Lcom/kochava/base/h;->d:Lcom/kochava/base/d;

    const-string v3, "push_token_sent"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/kochava/base/d;->a(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    new-instance v3, Lcom/kochava/base/p;

    iget-object v4, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v3, v4, v0, v1, v8}, Lcom/kochava/base/p;-><init>(Lcom/kochava/base/h;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v3, v8}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;Z)V

    :cond_7
    iget-object v0, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/s;

    invoke-virtual {v0}, Lcom/kochava/base/s;->e()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "UPDATE"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/s;

    invoke-virtual {v0}, Lcom/kochava/base/s;->g()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/s;

    invoke-virtual {v0}, Lcom/kochava/base/s;->f()V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/s;

    invoke-virtual {v0, v1, v8}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "UPDATE SKIP"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/o;

    invoke-virtual {v0}, Lcom/kochava/base/o;->e()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "INITIAL"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/o;

    invoke-virtual {v0}, Lcom/kochava/base/o;->g()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/o;

    invoke-virtual {v0}, Lcom/kochava/base/o;->f()V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/o;

    invoke-virtual {v0, v1, v8}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "INITIAL SKIP"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/l;

    invoke-virtual {v0}, Lcom/kochava/base/l;->e()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "GET_ATTRIBUTION"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/l;

    invoke-virtual {v0}, Lcom/kochava/base/l;->g()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/l;

    invoke-virtual {v0}, Lcom/kochava/base/l;->f()V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/l;

    invoke-virtual {v0, v1, v8}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;Z)V

    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/q;

    invoke-virtual {v0}, Lcom/kochava/base/q;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "QUEUE"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/q;

    invoke-virtual {v0}, Lcom/kochava/base/q;->g()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/q;

    invoke-virtual {v0}, Lcom/kochava/base/q;->f()V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/h;

    iget-object v1, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/q;

    invoke-virtual {v0, v1, v9}, Lcom/kochava/base/h;->a(Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "GET_ATTRIBUTION SKIP"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_e
    const-string v0, "CTR"

    const-string v1, "Controller"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "QUEUE SKIP"

    aput-object v3, v2, v9

    invoke-static {v10, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
