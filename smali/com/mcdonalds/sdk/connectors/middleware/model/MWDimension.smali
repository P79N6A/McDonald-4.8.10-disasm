.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWDimension;
.super Ljava/lang/Object;
.source "MWDimension.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public productCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductCode"
    .end annotation
.end field

.field public showSizeToCustomer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ShowSizeToCustomer"
    .end annotation
.end field

.field public sizeCodeID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SizeCodeID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toDimension()Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/ProductDimension;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;-><init>()V

    .line 24
    .local v0, "dimension":Lcom/mcdonalds/sdk/modules/models/ProductDimension;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDimension;->sizeCodeID:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->setSizeCode(Ljava/lang/Integer;)V

    .line 25
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDimension;->showSizeToCustomer:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->setShowSizeToCustomer(Z)V

    .line 26
    return-object v0
.end method
