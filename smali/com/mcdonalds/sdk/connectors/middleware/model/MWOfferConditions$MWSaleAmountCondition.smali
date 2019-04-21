.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWSaleAmountCondition;
.super Ljava/lang/Object;
.source "MWOfferConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MWSaleAmountCondition"
.end annotation


# instance fields
.field public minimum:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minimum"
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWSaleAmountCondition;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toSaleAmountCondition()Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;-><init>()V

    .line 47
    .local v0, "cond":Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;
    iget-wide v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOfferConditions$MWSaleAmountCondition;->minimum:D

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;->setMinimum(D)V

    .line 48
    return-object v0
.end method
