.class Lhk/com/aisoft/easyaddrui/eaView$1;
.super Ljava/lang/Object;
.source "eaView.java"

# interfaces
.implements Lhk/com/aisoft/easyaddrui/SysParaCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhk/com/aisoft/easyaddrui/eaView;->loadEAView(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 229
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/eaView$1;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleteLoad()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/eaView$1;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-static {v0}, Lhk/com/aisoft/easyaddrui/eaView;->access$000(Lhk/com/aisoft/easyaddrui/eaView;)V

    .line 233
    return-void
.end method
