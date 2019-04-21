.class Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$2;
.super Ljava/lang/Object;
.source "OrderingModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getStoreOrderingCapabilties(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field final synthetic val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$2;->this$0:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$2;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$2;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p1, "capabilties"    # Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$2;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$2;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, p1, v1, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 106
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
