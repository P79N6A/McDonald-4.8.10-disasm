.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;
.source "MWProductViewComponent.java"


# instance fields
.field public displayApart:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayApart"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayApart()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;->displayApart:Ljava/lang/Boolean;

    return-object v0
.end method

.method public populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;
    .locals 2
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductView;->populateWithOrder(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewBase;

    move-result-object v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 22
    .end local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;
    :goto_0
    return-object p0

    .line 20
    .restart local p0    # "this":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;
    :cond_0
    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;->displayApart:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setDisplayApart(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "displayApart"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductViewComponent;->displayApart:Ljava/lang/Boolean;

    .line 33
    return-void
.end method
