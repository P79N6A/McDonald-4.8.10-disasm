.class Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$1;
.super Ljava/lang/Object;
.source "DeliveryModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$1;->this$0:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$1;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$1;->this$0:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->access$000(Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$1;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, p1, v1, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 104
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule$1;->onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
