.class Lcom/kochava/base/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/base/g;


# direct methods
.method constructor <init>(Lcom/kochava/base/g;)V
    .locals 0

    iput-object p1, p0, Lcom/kochava/base/g$1;->a:Lcom/kochava/base/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x4

    const-string v1, "SMO"

    const-string v2, "goInactive"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/g$1;->a:Lcom/kochava/base/g;

    invoke-static {v0, v4}, Lcom/kochava/base/g;->a(Lcom/kochava/base/g;Z)Z

    iget-object v0, p0, Lcom/kochava/base/g$1;->a:Lcom/kochava/base/g;

    invoke-static {v0}, Lcom/kochava/base/g;->a(Lcom/kochava/base/g;)Lcom/kochava/base/f;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/kochava/base/f;->c(Z)V

    return-void
.end method
