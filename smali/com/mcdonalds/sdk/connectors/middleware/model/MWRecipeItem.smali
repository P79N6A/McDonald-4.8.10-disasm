.class public abstract Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;
.super Ljava/lang/Object;
.source "MWRecipeItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final RELATION_TYPE_OZ_CUP:Ljava/lang/String; = "oz cup"

.field private static final RELATION_TYPE_PIECE:Ljava/lang/String; = "piece"

.field private static final RELATION_TYPE_SIZE:Ljava/lang/String; = "size"


# instance fields
.field public carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attach_carousel_image"
    .end annotation
.end field

.field protected final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public defaultCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategory;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default_category"
    .end annotation
.end field

.field public doNotShow:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "do_not_show"
    .end annotation
.end field

.field public externalId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_id"
    .end annotation
.end field

.field public footer:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "footer"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public itemAdditionalAllergen:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_additional_allergen"
    .end annotation
.end field

.field public itemAllergen:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_allergen"
    .end annotation
.end field

.field public itemHeroImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attach_item_hero_image"
    .end annotation
.end field

.field public itemRelationTypes:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "relation_types"
    .end annotation
.end field

.field public itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attach_item_thumbnail_image"
    .end annotation
.end field

.field public marketingName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_marketing_name"
    .end annotation
.end field

.field public menuItemNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "menu_item_no"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_name"
    .end annotation
.end field

.field public nutrientFacts:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nutrient_facts"
    .end annotation
.end field

.field public servingSizeImperial:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serving_size_imperial"
    .end annotation
.end field

.field public servingSizeMetric:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serving_size_metric"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method protected setRecipeFooters(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 11
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    .line 118
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->footer:Ljava/util/HashMap;

    if-nez v8, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v6, "sortedNames":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v7, "sortedValues":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->footer:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 126
    .local v4, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "name"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 127
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_2
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    .end local v4    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 137
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->comparator:Ljava/util/Comparator;

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->comparator:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "footers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_2
    if-ge v3, v5, :cond_5

    .line 142
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "yes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 144
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 145
    .local v1, "footerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v1    # "footerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 149
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setFooters(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method protected setRecipeImages(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Ljava/lang/String;)V
    .locals 5
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .param p2, "baseImagePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 91
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    invoke-virtual {v3, p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;->toImageInfo(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    .line 94
    .local v0, "recipeCarouselImage":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setCarouselImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 99
    .end local v0    # "recipeCarouselImage":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    invoke-virtual {v3, p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;->toImageInfo(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v2

    .line 102
    .local v2, "recipeThumbnailImage":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setThumbnailImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 103
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setImageUrl(Ljava/lang/String;)V

    .line 108
    .end local v2    # "recipeThumbnailImage":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    :goto_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->itemHeroImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->itemHeroImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->itemHeroImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;

    invoke-virtual {v3, p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;->toImageInfo(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v1

    .line 111
    .local v1, "recipeHeroImage":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setHeroImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 115
    .end local v1    # "recipeHeroImage":Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    :goto_2
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setCarouselImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setThumbnailImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setHeroImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    goto :goto_2
.end method

.method protected setRelationTypeToCategory(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 9
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    .line 153
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->itemRelationTypes:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;

    if-nez v6, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->itemRelationTypes:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->getItemRelationType()Ljava/util/List;

    move-result-object v2

    .line 157
    .local v2, "itemRelationTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 161
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

    .line 162
    .local v4, "relationType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    iget-object v7, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;->type:Ljava/lang/String;

    const-string v8, "size"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;->type:Ljava/lang/String;

    const-string v8, "oz cup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;->type:Ljava/lang/String;

    const-string v8, "piece"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 163
    :cond_3
    iget-object v6, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;->menuItemRelatedItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;->menuItemRelatedItemList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 164
    .local v5, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v3, "relationItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_4

    .line 167
    iget-object v6, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;->menuItemRelatedItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;->menuItemRelatedItemList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;

    .line 168
    .local v1, "itemRelatedItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->toRelationItem()Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    .end local v1    # "itemRelatedItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;
    :cond_4
    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setRelationItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method public toRecipe(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .locals 2
    .param p1, "baseImagePath"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;-><init>()V

    .line 81
    .local v0, "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setId(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->doNotShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setDoNotShow(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->setRecipeImages(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->setRecipeFooters(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 87
    return-object v0
.end method
