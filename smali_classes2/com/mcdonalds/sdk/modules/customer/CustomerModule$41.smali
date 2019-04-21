.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->logout(Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$shouldClearBasketOnLogout:Z


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;ZLcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-boolean p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;->val$shouldClearBasketOnLogout:Z

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Object;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x0

    .line 1658
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 1659
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$800(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1660
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$900(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1661
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$402(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Z)Z

    .line 1663
    const-string v1, "delivery"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 1664
    .local v0, "module":Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->clearModuleCacheData()V

    .line 1666
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->removeSavedLogin()V

    .line 1667
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/network/SessionManager;->clearToken()V

    .line 1668
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;->val$shouldClearBasketOnLogout:Z

    if-eqz v1, :cond_0

    .line 1669
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->deleteCurrentOrderAndAddress()V

    .line 1672
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v1

    const-string v2, "MCD_LOGIN_STATE_CHANGED"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->postNotification(Ljava/lang/String;)V

    .line 1674
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    if-eqz v1, :cond_1

    .line 1675
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$41;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v3, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 1677
    :cond_1
    return-void
.end method
