.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomizationInput;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;
.source "MWProductViewCustomizationInput.java"


# instance fields
.field public isLight:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsLight"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;-><init>()V

    return-void
.end method


# virtual methods
.method populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;
    .locals 1
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16
    const/4 p0, 0x0

    .line 21
    .end local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomizationInput;
    :goto_0
    return-object p0

    .line 19
    .restart local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomizationInput;
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIsLight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewCustomizationInput;->isLight:Z

    goto :goto_0
.end method
