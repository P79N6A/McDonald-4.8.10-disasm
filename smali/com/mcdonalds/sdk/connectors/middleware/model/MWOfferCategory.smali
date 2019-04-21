.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;
.super Ljava/lang/Object;
.source "MWOfferCategory.java"


# instance fields
.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Description"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Id"
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

.method public static toOfferCategory(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;)Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    .locals 2
    .param p0, "ecpOfferCategory"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;

    .prologue
    .line 16
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferCategory;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OfferCategory;-><init>()V

    .line 17
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/OfferCategory;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->setId(Ljava/lang/Integer;)V

    .line 18
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferCategory;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferCategory;->setDescription(Ljava/lang/String;)V

    .line 20
    return-object v0
.end method
