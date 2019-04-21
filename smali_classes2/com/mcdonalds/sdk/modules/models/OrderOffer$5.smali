.class Lcom/mcdonalds/sdk/modules/models/OrderOffer$5;
.super Ljava/lang/Object;
.source "OrderOffer.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/models/OrderOffer;->revalidate(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V
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
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

.field final synthetic val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$5;->this$0:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$5;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer$5;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 121
    if-nez p3, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$5;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$5;->val$asyncCounter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, p3}, Lcom/mcdonalds/sdk/AsyncCounter;->error(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
