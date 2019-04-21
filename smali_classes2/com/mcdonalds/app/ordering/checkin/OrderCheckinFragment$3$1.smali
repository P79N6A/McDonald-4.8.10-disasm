.class Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3$1;
.super Ljava/lang/Object;
.source "OrderCheckinFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3$1;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isRegularPaymentFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$100(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3$1;->this$1:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$3;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->preparePaymentAndCheckin()V

    goto :goto_0
.end method
