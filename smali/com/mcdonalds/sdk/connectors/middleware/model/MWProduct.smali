.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;
.super Ljava/lang/Object;
.source "MWProduct.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public PODs:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "POD"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;",
            ">;"
        }
    .end annotation
.end field

.field public acceptsLight:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AcceptsLight"
    .end annotation
.end field

.field public acceptsOnly:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AcceptsOnly"
    .end annotation
.end field

.field public categories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategory;",
            ">;"
        }
    .end annotation
.end field

.field public dimensions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Dimensions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWDimension;",
            ">;"
        }
    .end annotation
.end field

.field public displayImageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DisplayImageName"
    .end annotation
.end field

.field public extendedMenuTypeID:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ExtendedMenuTypeID"
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

.field public familyGroupID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FamilyGroupID"
    .end annotation
.end field

.field public isMcCafe:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsMcCafe"
    .end annotation
.end field

.field public isPromotional:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsPromotional"
    .end annotation
.end field

.field public isPromotionalChoice:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsPromotionalChoice"
    .end annotation
.end field

.field public isSalable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsSalable"
    .end annotation
.end field

.field public maxChoiceOptionsMOT:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MaxChoiceOptionsMOT"
    .end annotation
.end field

.field public maxQttyAllowedPerOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MaxQttyAllowedPerOrder"
    .end annotation
.end field

.field public menuTypeID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MenuTypeID"
    .end annotation
.end field

.field public name:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Names"
    .end annotation
.end field

.field public nutrition:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Nutrition"
    .end annotation
.end field

.field public productCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductCode"
    .end annotation
.end field

.field public productType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductType"
    .end annotation
.end field

.field public productUnit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProductUnit"
    .end annotation
.end field

.field public promotionEndDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromotionEndDate"
    .end annotation
.end field

.field public promotionRestriction:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromotionRestriction"
    .end annotation
.end field

.field public promotionStartDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromotionStartDate"
    .end annotation
.end field

.field public promotionalLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromotionalLabel"
    .end annotation
.end field

.field public promotionsAssociated:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PromotionsAssociated"
    .end annotation
.end field

.field public recipe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Recipe"
    .end annotation
.end field

.field public recipeID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RecipeID"
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

.field public timeRestriction:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TimeRestriction"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProduct(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;ZLjava/lang/String;ZLcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 1
    .param p1, "manager"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;
    .param p2, "isUsingECP3"    # Z
    .param p3, "languageId"    # Ljava/lang/String;
    .param p4, "isEnableMultipleMenuTypes"    # Z
    .param p5, "sharedData"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProduct(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;)Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;",
            ">;",
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;",
            ">;",
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;",
            ">;)",
            "Lcom/mcdonalds/sdk/modules/models/Product;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "mwMenuTypes":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;>;"
    .local p2, "mwProductPrices":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;>;"
    .local p3, "mwNameInfoList":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnectorUtils;->isUsingECP3()Z

    move-result v11

    .line 102
    .local v11, "isUsingECP3":Z
    if-eqz v11, :cond_2

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipe;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    const/4 v8, 0x1

    .line 108
    .local v8, "hasRecipe":Z
    :goto_0
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>()V

    .line 109
    .local v4, "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->productCode:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setExternalId(Ljava/lang/Integer;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipeID:Ljava/lang/Integer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setRecipeId(Ljava/lang/Integer;)V

    .line 111
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipeID:Ljava/lang/Integer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v28

    :goto_1
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setId(Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->productType:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->valueToProductType(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setProductType(Lcom/mcdonalds/sdk/modules/models/Product$ProductType;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->productUnit:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setProductUnit(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->acceptsLight:Z

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setAcceptsLight(Z)V

    .line 116
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "languageId":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v15, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    const-string v28, "enableMultipleMenuTypes"

    invoke-static/range {v28 .. v28}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getBooleanForParameter(Ljava/lang/String;)Z

    move-result v6

    .line 120
    .local v6, "enableMultipleMenuTypes":Z
    if-eqz p1, :cond_7

    .line 121
    if-eqz v6, :cond_5

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->extendedMenuTypeID:Ljava/util/List;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->extendedMenuTypeID:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setExtendedMenuTypeIDs(Ljava/util/List;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->extendedMenuTypeID:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_0
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 126
    .local v14, "menuTypeId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;

    .line 127
    .local v16, "mwMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    if-eqz v16, :cond_0

    .line 128
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->toMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 103
    .end local v4    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .end local v6    # "enableMultipleMenuTypes":Z
    .end local v8    # "hasRecipe":Z
    .end local v13    # "languageId":Ljava/lang/String;
    .end local v14    # "menuTypeId":I
    .end local v15    # "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    .end local v16    # "mwMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 105
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->recipeID:Ljava/lang/Integer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    const/4 v8, 0x1

    .restart local v8    # "hasRecipe":Z
    :goto_3
    goto/16 :goto_0

    .end local v8    # "hasRecipe":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 111
    .restart local v4    # "appProduct":Lcom/mcdonalds/sdk/modules/models/Product;
    .restart local v8    # "hasRecipe":Z
    :cond_4
    const-string v28, ""

    goto/16 :goto_1

    .line 132
    .restart local v6    # "enableMultipleMenuTypes":Z
    .restart local v13    # "languageId":Ljava/lang/String;
    .restart local v15    # "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->menuTypeID:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    if-eqz v28, :cond_9

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->menuTypeID:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;

    .line 135
    .restart local v16    # "mwMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->toMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v16    # "mwMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    :cond_6
    invoke-virtual {v4, v15}, Lcom/mcdonalds/sdk/modules/models/Product;->setMenuTypes(Ljava/util/List;)V

    .line 145
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->menuTypeID:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setMenuTypeID(Ljava/lang/Integer;)V

    .line 147
    if-eqz p2, :cond_a

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->productCode:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;

    .line 149
    .local v24, "productPrice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;
    if-eqz v24, :cond_a

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;->prices:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v28

    if-nez v28, :cond_a

    .line 150
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;->prices:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_8
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrice;

    .line 151
    .local v18, "mwPrice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrice;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrice;->price:Ljava/lang/Double;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    .line 154
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrice;->priceTypeID:Ljava/lang/Integer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    packed-switch v29, :pswitch_data_0

    goto :goto_4

    .line 156
    :pswitch_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrice;->price:Ljava/lang/Double;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setPriceEatIn(D)V

    goto :goto_4

    .line 136
    .end local v18    # "mwPrice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrice;
    .end local v24    # "productPrice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->menuTypeID:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 137
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v9, v0, :cond_6

    .line 138
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->keyAt(I)I

    move-result v12

    .line 139
    .local v12, "key":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;

    .line 140
    .restart local v16    # "mwMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;->toMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 159
    .end local v9    # "i":I
    .end local v12    # "key":I
    .end local v16    # "mwMenuType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuType;
    .restart local v18    # "mwPrice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrice;
    .restart local v24    # "productPrice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;
    :pswitch_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrice;->price:Ljava/lang/Double;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setPriceTakeOut(D)V

    goto :goto_4

    .line 162
    :pswitch_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrice;->price:Ljava/lang/Double;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setPriceDelivery(D)V

    goto/16 :goto_4

    .line 169
    .end local v18    # "mwPrice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrice;
    .end local v24    # "productPrice":Lcom/mcdonalds/sdk/connectors/middleware/model/MWProductPrice;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->categories:Ljava/util/List;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->categories:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v26

    .line 171
    .local v26, "size":I
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v26}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v25, "recipeCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    move/from16 v0, v26

    if-ge v9, v0, :cond_b

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->categories:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategory;

    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategory;->toCategory()Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 176
    :cond_b
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setCategories(Ljava/util/List;)V

    .line 179
    .end local v9    # "i":I
    .end local v25    # "recipeCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    .end local v26    # "size":I
    :cond_c
    const/16 v20, 0x0

    .line 180
    .local v20, "nameInfo":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;
    if-eqz v11, :cond_13

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->name:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;

    move-object/from16 v20, v0

    .line 186
    :cond_d
    :goto_7
    if-eqz v20, :cond_10

    .line 188
    const/16 v19, 0x0

    .line 189
    .local v19, "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;->names:Ljava/util/List;

    move-object/from16 v23, v0

    .line 190
    .local v23, "names":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_e
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_f

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;

    .line 191
    .local v17, "mwName":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->languageID:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 192
    .local v22, "nameLanguageTag":Ljava/lang/String;
    const-string v29, "-"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v5, v29, 0x1

    .line 193
    .local v5, "dashIndex":I
    const/16 v29, 0x0

    add-int/lit8 v30, v5, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 194
    .local v21, "nameLanguage":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 195
    move-object/from16 v19, v17

    .line 200
    .end local v5    # "dashIndex":I
    .end local v17    # "mwName":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    .end local v21    # "nameLanguage":Ljava/lang/String;
    .end local v22    # "nameLanguageTag":Ljava/lang/String;
    :cond_f
    if-eqz v19, :cond_10

    .line 202
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setName(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->shortName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setShortName(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;->longName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setLongName(Ljava/lang/String;)V

    .line 208
    .end local v19    # "name":Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;
    .end local v23    # "names":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWName;>;"
    :cond_10
    const-string v28, "Core"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setDoNotShow(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->PODs:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setPODs(Ljava/util/List;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->nutrition:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;

    move-object/from16 v28, v0

    if-eqz v28, :cond_11

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->nutrition:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->allNutrients()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setNutrients(Ljava/util/List;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->nutrition:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->getEnergy()D

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setEnergy(D)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->nutrition:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrition;->getkCal()D

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setKCal(D)V

    .line 219
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->displayImageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_12

    .line 221
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "staticDataBaseURL"

    invoke-static/range {v29 .. v29}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->displayImageName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 223
    .local v10, "imageBaseName":Ljava/lang/String;
    new-instance v27, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-direct/range {v27 .. v27}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;-><init>()V

    .line 224
    .local v27, "thumb":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->displayImageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setImageName(Ljava/lang/String;)V

    .line 225
    sget-object v28, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;->SMALL:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    move-object/from16 v0, v28

    invoke-static {v10, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getFullImagePath(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setUrl(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setThumbnailImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 228
    invoke-virtual/range {v27 .. v27}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setImageUrl(Ljava/lang/String;)V

    .line 230
    new-instance v7, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-direct {v7}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;-><init>()V

    .line 231
    .local v7, "full":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->displayImageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setImageName(Ljava/lang/String;)V

    .line 232
    sget-object v28, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;->LARGE:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;

    move-object/from16 v0, v28

    invoke-static {v10, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getFullImagePath(Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared$ImageSize;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setUrl(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/Product;->setCarouselImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 237
    .end local v7    # "full":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .end local v10    # "imageBaseName":Ljava/lang/String;
    .end local v27    # "thumb":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->maxQttyAllowedPerOrder:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setMaxQttyAllowedPerOrder(Ljava/lang/Integer;)V

    .line 239
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setNeedsFullDetails(Ljava/lang/Boolean;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->timeRestriction:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setTimeRestriction(Ljava/util/List;)V

    .line 243
    return-object v4

    .line 182
    :cond_13
    if-eqz p3, :cond_d

    .line 183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWProduct;->productCode:I

    move/from16 v28, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "nameInfo":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;
    check-cast v20, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;

    .restart local v20    # "nameInfo":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNameInfo;
    goto/16 :goto_7

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
