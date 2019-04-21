.class Lcom/mcdonalds/app/ordering/OrderingManager$5;
.super Ljava/lang/Object;
.source "OrderingManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/OrderingManager;->preparePayment(Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V
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

.field final synthetic val$order:Lcom/mcdonalds/sdk/modules/models/Order;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/OrderingManager;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/OrderingManager;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/OrderingManager$5;->this$0:Lcom/mcdonalds/app/ordering/OrderingManager;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/OrderingManager$5;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    iput-object p3, p0, Lcom/mcdonalds/app/ordering/OrderingManager$5;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "orderResponse"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    if-eqz p1, :cond_1

    .line 491
    const-string v1, "security"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/security/SecurityModule;

    .line 492
    .local v0, "securityModule":Lcom/mcdonalds/sdk/modules/security/SecurityModule;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getMerchantId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getMerchantId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/OrderingManager$5$1;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/ordering/OrderingManager$5$1;-><init>(Lcom/mcdonalds/app/ordering/OrderingManager$5;Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/security/SecurityModule;->retriveSecurityToken(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 509
    .end local v0    # "securityModule":Lcom/mcdonalds/sdk/modules/security/SecurityModule;
    :goto_0
    return-void

    .line 504
    .restart local v0    # "securityModule":Lcom/mcdonalds/sdk/modules/security/SecurityModule;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/OrderingManager$5;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 507
    .end local v0    # "securityModule":Lcom/mcdonalds/sdk/modules/security/SecurityModule;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/OrderingManager$5;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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

    .line 487
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/OrderingManager$5;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
