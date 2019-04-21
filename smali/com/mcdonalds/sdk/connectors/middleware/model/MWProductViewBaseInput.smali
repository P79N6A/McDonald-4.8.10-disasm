.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;
.super Ljava/lang/Object;
.source "MWProductViewBaseInput.java"


# instance fields
.field public productCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductCode"
    .end annotation
.end field

.field public quantity:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Quantity"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;
    .locals 1
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 16
    if-nez p1, :cond_0

    .line 17
    const/4 p0, 0x0

    .line 23
    .end local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;
    :goto_0
    return-object p0

    .line 20
    .restart local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;->productCode:I

    .line 21
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;->quantity:I

    goto :goto_0
.end method
