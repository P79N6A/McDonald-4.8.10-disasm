.class Lhk/com/aisoft/easyaddrui/eaView$15;
.super Ljava/lang/Object;
.source "eaView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhk/com/aisoft/easyaddrui/eaView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhk/com/aisoft/easyaddrui/eaView;


# direct methods
.method constructor <init>(Lhk/com/aisoft/easyaddrui/eaView;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/eaView$15;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 557
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 560
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 564
    sget-boolean v0, Lhk/com/aisoft/easyaddrui/eaView;->eaNetErr:Z

    if-eqz v0, :cond_2

    .line 565
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v1, "zh-HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorC:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 571
    :cond_2
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sAddressReturn:Lhk/com/aisoft/easyaddrui/AddressReturn;

    iget-object v0, v0, Lhk/com/aisoft/easyaddrui/AddressReturn;->sCode:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 573
    sget-boolean v0, Lhk/com/aisoft/easyaddrui/eaView;->sSkipAutoSearch:Z

    if-nez v0, :cond_3

    .line 574
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbLoading:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sRunnable:Ljava/lang/Runnable;

    sget-object v2, Lhk/com/aisoft/easyaddrui/eaView;->sEAAutoSearch:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 578
    :cond_3
    sput-boolean v2, Lhk/com/aisoft/easyaddrui/eaView;->sSkipAutoSearch:Z

    goto :goto_0
.end method
