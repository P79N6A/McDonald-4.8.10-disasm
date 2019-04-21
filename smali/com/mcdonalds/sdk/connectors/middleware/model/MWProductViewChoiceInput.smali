.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoiceInput;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;
.source "MWProductViewChoiceInput.java"


# instance fields
.field public choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ChoiceSolution"
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
.method public populateWithChoiceAndSolution(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoiceInput;
    .locals 1
    .param p1, "choiceProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "choiceSolutionProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;

    .line 16
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;-><init>()V

    .line 17
    .local v0, "solutionView":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;
    invoke-virtual {v0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBaseInput;

    .line 18
    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewChoiceInput;->choiceSolution:Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewInput;

    .line 20
    return-object p0
.end method
