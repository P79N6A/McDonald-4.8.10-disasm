.class Lcom/mcdonalds/app/offers/OfferActivity$1;
.super Ljava/lang/Object;
.source "OfferActivity.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferActivity;->setOfferFromId(Ljava/lang/String;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Offer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferActivity;

.field final synthetic val$offerId:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferActivity$1;->this$0:Lcom/mcdonalds/app/offers/OfferActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferActivity$1;->val$offerId:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 98
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/offers/OfferActivity$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
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

    .line 102
    if-eqz p1, :cond_1

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 104
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferActivity$1;->val$offerId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferActivity$1;->this$0:Lcom/mcdonalds/app/offers/OfferActivity;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/offers/OfferActivity;->access$002(Lcom/mcdonalds/app/offers/OfferActivity;Lcom/mcdonalds/sdk/modules/models/Offer;)Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 106
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 107
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferActivity$1;->this$0:Lcom/mcdonalds/app/offers/OfferActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/offers/OfferActivity;->access$100(Lcom/mcdonalds/app/offers/OfferActivity;)V

    .line 114
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 113
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferActivity$1;->this$0:Lcom/mcdonalds/app/offers/OfferActivity;

    invoke-static {v1}, Lcom/mcdonalds/app/offers/OfferActivity;->access$200(Lcom/mcdonalds/app/offers/OfferActivity;)V

    goto :goto_0
.end method
