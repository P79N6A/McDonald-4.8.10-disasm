.class Lcom/amap/api/services/core/br$a;
.super Landroid/os/Handler;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/core/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 537
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 531
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 532
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/amap/api/services/core/br$1;)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/amap/api/services/core/br$a;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 541
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 542
    packed-switch v0, :pswitch_data_0

    .line 561
    :goto_0
    return-void

    .line 544
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/core/bv;

    .line 545
    iget-object v0, v0, Lcom/amap/api/services/core/bv;->b:Lcom/amap/api/services/core/bt;

    .line 546
    invoke-interface {v0}, Lcom/amap/api/services/core/bt;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 549
    :pswitch_1
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/core/bv;

    .line 550
    iget-object v1, v0, Lcom/amap/api/services/core/bv;->b:Lcom/amap/api/services/core/bt;

    .line 551
    iget-object v0, v0, Lcom/amap/api/services/core/bv;->a:Lcom/amap/api/services/core/u;

    invoke-interface {v1, v0}, Lcom/amap/api/services/core/bt;->a(Lcom/amap/api/services/core/u;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
