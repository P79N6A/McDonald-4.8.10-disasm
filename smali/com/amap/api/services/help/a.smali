.class Lcom/amap/api/services/help/a;
.super Landroid/os/Handler;
.source "Inputtips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/help/Inputtips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/help/Inputtips;


# direct methods
.method constructor <init>(Lcom/amap/api/services/help/Inputtips;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amap/api/services/help/a;->a:Lcom/amap/api/services/help/Inputtips;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amap/api/services/help/a;->a:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v0}, Lcom/amap/api/services/help/Inputtips;->b(Lcom/amap/api/services/help/Inputtips;)Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/help/a;->a:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v1}, Lcom/amap/api/services/help/Inputtips;->b(Lcom/amap/api/services/help/Inputtips;)Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/help/Inputtips$InputtipsListener;->onGetInputtips(Ljava/util/List;I)V

    goto :goto_0
.end method
