.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;
.super Ljava/lang/Object;
.source "MWDisplayCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public categoryDisplayOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CategoryDisplayOrder"
    .end annotation
.end field

.field public colors:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Colors"
    .end annotation
.end field

.field public displayCategoryID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayCategoryID"
    .end annotation
.end field

.field public displayImageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayImageName"
    .end annotation
.end field

.field public extendedMenuTypeID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExtendedMenuTypeID"
    .end annotation
.end field

.field public fromTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FromTime"
    .end annotation
.end field

.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public menuTypeID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuTypeID"
    .end annotation
.end field

.field public names:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Names"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;",
            ">;"
        }
    .end annotation
.end field

.field public parentDisplayCategoryID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ParentDisplayCategoryID"
    .end annotation
.end field

.field public staticData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StaticData"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public toTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ToTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCategory(Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;)Lcom/mcdonalds/sdk/modules/models/Category;
    .locals 1
    .param p0, "displayCategory"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->toCategory()Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toCategory()Lcom/mcdonalds/sdk/modules/models/Category;
    .locals 8

    .prologue
    .line 50
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Category;-><init>()V

    .line 52
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    iget v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->displayCategoryID:I

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/models/Category;->setID(I)V

    .line 53
    iget v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->categoryDisplayOrder:I

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/models/Category;->setDisplayOrder(I)V

    .line 54
    const-string v5, ""

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/models/Category;->setName(Ljava/lang/String;)V

    .line 56
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->names:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->names:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 58
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "currentLanguage":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->names:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;

    .line 61
    .local v4, "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    iget-object v6, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->languageID:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    iget-object v5, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    const-string v6, "(\\\\r|\\\\t)"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "categoryName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->setName(Ljava/lang/String;)V

    .line 72
    .end local v1    # "categoryName":Ljava/lang/String;
    .end local v2    # "currentLanguage":Ljava/lang/String;
    .end local v4    # "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    :cond_1
    const-string v5, "enableMultipleMenuTypes"

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getBooleanForParameter(Ljava/lang/String;)Z

    move-result v3

    .line 73
    .local v3, "enableMultipleMenuTypes":Z
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->extendedMenuTypeID:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 75
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->extendedMenuTypeID:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/models/Category;->setType(I)V

    .line 83
    :goto_0
    iget v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->parentDisplayCategoryID:I

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/models/Category;->setParentDisplayCategoryID(I)V

    .line 86
    return-object v0

    .line 76
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->menuTypeID:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 77
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDisplayCategory;->menuTypeID:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/models/Category;->setType(I)V

    goto :goto_0

    .line 79
    :cond_3
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/models/Category;->setType(I)V

    goto :goto_0
.end method
