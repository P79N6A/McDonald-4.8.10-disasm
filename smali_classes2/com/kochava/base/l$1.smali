.class Lcom/kochava/base/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/base/l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/kochava/base/l;


# direct methods
.method constructor <init>(Lcom/kochava/base/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kochava/base/l$1;->c:Lcom/kochava/base/l;

    iput-object p2, p0, Lcom/kochava/base/l$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/kochava/base/l$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/l$1;->c:Lcom/kochava/base/l;

    iget-object v0, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->f:Lcom/kochava/base/AttributionUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/l$1;->c:Lcom/kochava/base/l;

    iget-object v0, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->f:Lcom/kochava/base/AttributionUpdateListener;

    iget-object v1, p0, Lcom/kochava/base/l$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/kochava/base/AttributionUpdateListener;->onAttributionUpdated(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/l$1;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kochava/base/l$1;->c:Lcom/kochava/base/l;

    iget-object v0, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->e:Lcom/kochava/base/AttributionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kochava/base/l$1;->c:Lcom/kochava/base/l;

    iget-object v0, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/h;

    iget-object v0, v0, Lcom/kochava/base/h;->e:Lcom/kochava/base/AttributionListener;

    iget-object v1, p0, Lcom/kochava/base/l$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/kochava/base/AttributionListener;->onAttributionReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TGA"

    const-string v2, "run"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Exception in Host App"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v6, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
