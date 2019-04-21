.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;
.super Ljava/lang/Object;
.source "MWNutritionCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public categoryDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_description"
    .end annotation
.end field

.field public categoryExternalId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_external_id"
    .end annotation
.end field

.field public categoryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_id"
    .end annotation
.end field

.field public categoryMarketingName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_marketing_name"
    .end annotation
.end field

.field public categoryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_name"
    .end annotation
.end field

.field public categoryType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_type"
    .end annotation
.end field

.field public displayOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_order"
    .end annotation
.end field

.field public doNotShow:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "do_not_show"
    .end annotation
.end field

.field public isTestCategory:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_test_category"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toCategory()Lcom/mcdonalds/sdk/modules/models/Category;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Category;-><init>()V

    .line 37
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setName(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;->categoryDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setCategoryDescription(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;->categoryId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setID(I)V

    .line 40
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;->displayOrder:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setDisplayOrder(I)V

    .line 41
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;->categoryExternalId:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setExternalId(I)V

    .line 42
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;->categoryMarketingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setMarketingName(Ljava/lang/String;)V

    .line 43
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;->isTestCategory:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setTestCategory(Z)V

    .line 44
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;->categoryType:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setType(I)V

    .line 45
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;->doNotShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setDoNotShow(Ljava/lang/String;)V

    .line 47
    return-object v0
.end method
