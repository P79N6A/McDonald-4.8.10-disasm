.class Lhk/com/aisoft/easyaddrui/eaView$17;
.super Ljava/lang/Object;
.source "eaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 605
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/eaView$17;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 608
    const-string v0, "Action"

    const-string v1, "Press Search Button"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sHandler:Landroid/os/Handler;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 610
    sget-boolean v0, Lhk/com/aisoft/easyaddrui/eaView;->eaNetErr:Z

    if-eqz v0, :cond_1

    .line 611
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sEALang:Ljava/lang/String;

    const-string v1, "zh-HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorC:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 626
    :goto_0
    return-void

    .line 614
    :cond_0
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->lbNetworkErrorE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 617
    :cond_1
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->txtEAKeyword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 618
    const-string v0, "K"

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sListMode:Ljava/lang/String;

    .line 619
    const-string v0, ""

    sput-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sResponse:Ljava/lang/String;

    .line 620
    invoke-static {}, Lhk/com/aisoft/easyaddrui/ResponseTrigger;->btnSearchPressAction()V

    .line 621
    invoke-static {}, Lhk/com/aisoft/easyaddrui/eaView;->access$100()V

    goto :goto_0

    .line 623
    :cond_2
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->sContext:Landroid/content/Context;

    sget-object v1, Lhk/com/aisoft/easyaddrui/eaView;->sSysParameter:Lhk/com/aisoft/easyaddrui/SysParameter;

    sget-object v1, Lhk/com/aisoft/easyaddrui/SysParameter;->msgInComAddr:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
