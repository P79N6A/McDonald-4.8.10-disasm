.class Lcom/mcdonalds/app/offers/OfferProductFragment$2;
.super Ljava/lang/Object;
.source "OfferProductFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferProductFragment;->refresh()V
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
        "Lcom/mcdonalds/sdk/modules/models/Product;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

.field final synthetic val$counter:Lcom/mcdonalds/sdk/AsyncCounter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferProductFragment;Lcom/mcdonalds/sdk/AsyncCounter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferProductFragment;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$2;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/Product;
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

    .line 217
    if-nez p3, :cond_0

    .line 218
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$2;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

    .line 221
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$2;->val$counter:Lcom/mcdonalds/sdk/AsyncCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/AsyncCounter;->success(Ljava/lang/Object;)V

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

    .line 214
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/offers/OfferProductFragment$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/Product;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
