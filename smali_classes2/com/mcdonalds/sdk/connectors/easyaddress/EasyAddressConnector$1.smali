.class Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$1;
.super Ljava/lang/Object;
.source "EasyAddressConnector.java"

# interfaces
.implements Lhk/com/aisoft/easyaddrui/GetStoreCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;

.field final synthetic val$deliveryTime:Ljava/util/Date;

.field final synthetic val$isNormalOrder:Z

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$1;->this$0:Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$1;->val$deliveryTime:Ljava/util/Date;

    iput-boolean p3, p0, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$1;->val$isNormalOrder:Z

    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStoreReturn(Lhk/com/aisoft/easyaddrui/StoreReturn;)V
    .locals 6
    .param p1, "storeReturn"    # Lhk/com/aisoft/easyaddrui/StoreReturn;

    .prologue
    const/4 v5, 0x0

    .line 54
    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/StoreReturn;->sCode:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const-string v2, "ordering"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 56
    .local v0, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v1, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub1:Ljava/lang/String;

    const-string v3, "[a-zA-Z]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub2:Ljava/lang/String;

    const-string v3, "[a-zA-Z]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub3:Ljava/lang/String;

    const-string v3, "[a-zA-Z]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p1, Lhk/com/aisoft/easyaddrui/StoreReturn;->sHub4:Ljava/lang/String;

    const-string v3, "[a-zA-Z]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$1;->val$deliveryTime:Ljava/util/Date;

    iget-boolean v3, p0, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$1;->val$isNormalOrder:Z

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getStoreFromList(Ljava/util/List;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 65
    .end local v0    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .end local v1    # "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/easyaddress/EasyAddressConnector$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    iget-object v4, p1, Lhk/com/aisoft/easyaddrui/StoreReturn;->sCode:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5, v5, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
