.class Lcom/mcdonalds/sdk/modules/models/OrderOffer$6;
.super Ljava/lang/Object;
.source "OrderOffer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/models/OrderOffer;->reorderOfferOrderProductsForBuyNGetM(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V
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
        "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

.field final synthetic val$allowDownCharge:Z

.field final synthetic val$priceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$6;->this$0:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$6;->val$priceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    iput-boolean p3, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$6;->val$allowDownCharge:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I
    .locals 6
    .param p1, "p1"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "p2"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const-wide/16 v4, 0x0

    .line 216
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$6;->val$priceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    iget-boolean v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$6;->val$allowDownCharge:Z

    invoke-virtual {p1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 217
    .local v0, "value1":Ljava/lang/Double;
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$6;->val$priceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    iget-boolean v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderOffer$6;->val$allowDownCharge:Z

    invoke-virtual {p2, v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v4

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 218
    .local v1, "value2":Ljava/lang/Double;
    invoke-virtual {v1, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v2

    return v2

    .end local v0    # "value1":Ljava/lang/Double;
    .end local v1    # "value2":Ljava/lang/Double;
    :cond_1
    move-wide v2, v4

    .line 216
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 213
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    check-cast p2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer$6;->compare(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I

    move-result v0

    return v0
.end method
