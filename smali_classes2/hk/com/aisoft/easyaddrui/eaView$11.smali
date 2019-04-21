.class Lhk/com/aisoft/easyaddrui/eaView$11;
.super Ljava/lang/Object;
.source "eaView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 527
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/eaView$11;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 529
    const-string v0, "Action"

    const-string v1, "Auto Trigger Search"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-object v0, Lhk/com/aisoft/easyaddrui/eaView;->lbLoading:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    invoke-static {}, Lhk/com/aisoft/easyaddrui/ResponseTrigger;->btnSearchPressAction()V

    .line 533
    return-void
.end method
