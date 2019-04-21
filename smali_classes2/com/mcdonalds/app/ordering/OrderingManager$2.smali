.class Lcom/mcdonalds/app/ordering/OrderingManager$2;
.super Ljava/lang/Object;
.source "OrderingManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/OrderingManager;->checkIn(Lcom/mcdonalds/sdk/modules/models/Order;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/OrderingManager;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$order:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/OrderingManager;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/OrderingManager;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/OrderingManager$2;->this$0:Lcom/mcdonalds/app/ordering/OrderingManager;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/OrderingManager$2;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/OrderingManager$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

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

    .line 327
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isDuplicateOrderCheckinFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "CHECKIN_TIMER"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->deleteObjectFromCache(Ljava/lang/String;)Z

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderingManager$2;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->setCheckinResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 331
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/OrderingManager$2;->this$0:Lcom/mcdonalds/app/ordering/OrderingManager;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/OrderingManager$2;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->access$000(Lcom/mcdonalds/app/ordering/OrderingManager;Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 332
    return-void
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

    .line 324
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/OrderingManager$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
