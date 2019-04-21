.class Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$6;
.super Ljava/lang/Object;
.source "OrderCheckinFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;
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
        "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$6;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
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

    .line 585
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 586
    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    .line 587
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$6;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setTotalizeResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 588
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$6;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$500(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 591
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$6;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$6;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->onBackPressed()V

    goto :goto_0
.end method

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

    .line 582
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$6;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
