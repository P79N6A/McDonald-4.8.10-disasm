.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryProductViewComponent;
.super Ljava/lang/Object;
.source "MWDeliveryProductViewComponent.java"


# instance fields
.field public ProductCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductCode"
    .end annotation
.end field

.field public Quantity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Quantity"
    .end annotation
.end field

.field public TotalValue:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TotalValue"
    .end annotation
.end field

.field public UnitPrice:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UnitPrice"
    .end annotation
.end field

.field public ValidationErrorCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ValidationErrorCode"
    .end annotation
.end field

.field public choiceSolutions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ChoiceSolutions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public customizations:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryProductViewCustomization;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Customizations"
    .end annotation
.end field

.field public displayApart:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayApart"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryProductViewComponent;->choiceSolutions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDisplayApart()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryProductViewComponent;->displayApart:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDisplayApart(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "displayApart"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDeliveryProductViewComponent;->displayApart:Ljava/lang/Boolean;

    .line 60
    return-void
.end method
