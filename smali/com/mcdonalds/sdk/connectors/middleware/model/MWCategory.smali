.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategory;
.super Ljava/lang/Object;
.source "MWCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public displayCategoryID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayCategoryID"
    .end annotation
.end field

.field public displayOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayOrder"
    .end annotation
.end field

.field public displaySizeSelection:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplaySizeSelection"
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
.method public toCategory()Lcom/mcdonalds/sdk/modules/models/Category;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Category;-><init>()V

    .line 24
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategory;->displayCategoryID:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setID(I)V

    .line 25
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategory;->displayOrder:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setDisplayOrder(I)V

    .line 26
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategory;->displaySizeSelection:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setDisplaySizeSelection(I)V

    .line 28
    return-object v0
.end method
