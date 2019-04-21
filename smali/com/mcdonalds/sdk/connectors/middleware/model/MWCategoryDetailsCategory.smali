.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;
.super Ljava/lang/Object;
.source "MWCategoryDetailsCategory.java"

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

.field public categoryItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
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

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public testCategory:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_test_category"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
