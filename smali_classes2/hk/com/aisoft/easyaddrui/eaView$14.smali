.class Lhk/com/aisoft/easyaddrui/eaView$14;
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
    .line 548
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/eaView$14;->this$0:Lhk/com/aisoft/easyaddrui/eaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 550
    invoke-static {}, Lhk/com/aisoft/easyaddrui/ResponseTrigger;->getGPSResult()V

    .line 551
    return-void
.end method
