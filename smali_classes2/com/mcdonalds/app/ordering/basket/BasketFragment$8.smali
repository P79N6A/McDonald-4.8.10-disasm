.class Lcom/mcdonalds/app/ordering/basket/BasketFragment$8;
.super Ljava/lang/Object;
.source "BasketFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/basket/BasketFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$8;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)I
    .locals 4
    .param p1, "offer1"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .param p2, "offer2"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const/4 v0, 0x1

    const-string v1, "compare"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 679
    const/4 v0, -0x1

    .line 684
    :cond_0
    :goto_0
    return v0

    .line 680
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    const-string v0, "compare"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    check-cast p2, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$8;->compare(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)I

    move-result v0

    return v0
.end method
