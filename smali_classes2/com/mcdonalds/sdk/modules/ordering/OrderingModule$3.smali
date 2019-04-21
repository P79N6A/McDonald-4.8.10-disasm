.class Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$3;
.super Ljava/lang/Object;
.source "OrderingModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->checkStoreForOrderingSupport(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field final synthetic val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

.field final synthetic val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$3;->this$0:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$3;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$3;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 124
    if-nez p3, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$3;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$3;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$3;->val$requestListener:Lcom/mcdonalds/sdk/AsyncListener;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$3;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, v1, v2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule$3;->onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
