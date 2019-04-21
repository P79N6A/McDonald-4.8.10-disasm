.class public Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "NutritionRecipe.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLUMN_ADDITIONAL_ALLERGENS_STRING:Ljava/lang/String; = "additional_allergens_string"

.field public static final COLUMN_ALLERGENS_STRING:Ljava/lang/String; = "allergens_string"

.field public static final COLUMN_CAROUSEL_IMAGE_NAME:Ljava/lang/String; = "carousel_image_name"

.field public static final COLUMN_CAROUSEL_IMAGE_URL:Ljava/lang/String; = "carousel_image_url"

.field public static final COLUMN_COMPONENTS_STRING:Ljava/lang/String; = "components_string"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DISPLAY_ORDER:Ljava/lang/String; = "display_order"

.field public static final COLUMN_EXTERNAL_ID:Ljava/lang/String; = "external_id"

.field public static final COLUMN_HERO_IMAGE_NAME:Ljava/lang/String; = "hero_image_name"

.field public static final COLUMN_HERO_IMAGE_URL:Ljava/lang/String; = "hero_image_url"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final COLUMN_MARKETING_NAME:Ljava/lang/String; = "marketing_name"

.field public static final COLUMN_MENU_ITEM_NUMBER:Ljava/lang/String; = "menu_item_number"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NEEDS_FULL_DETAILS:Ljava/lang/String; = "needs_full_details"

.field public static final COLUMN_SERVING_SIZE_UNIT:Ljava/lang/String; = "serving_size_unit"

.field public static final COLUMN_SERVING_SIZE_VALUE:Ljava/lang/String; = "serving_size_value"

.field public static final COLUMN_THUMBNAIL_IMAGE_NAME:Ljava/lang/String; = "thumbnail_image_name"

.field public static final COLUMN_THUMBNAIL_IMAGE_URL:Ljava/lang/String; = "thumbnail_image_url"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "nutrition_recipe"


# instance fields
.field private mAdditionalAllergensString:Ljava/lang/String;

.field private mAdditionalIngredientStatement:Ljava/lang/String;

.field private mAllergens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Allergen;",
            ">;"
        }
    .end annotation
.end field

.field private mAllergensString:Ljava/lang/String;

.field private mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryMarketingName:Ljava/lang/String;

.field private mComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/RecipeComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentsString:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDisplayOrder:I

.field private mDoNotShow:Ljava/lang/String;

.field private mExternalId:I

.field private mFooters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

.field private mHighlightedNutrients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mImageUrl:Ljava/lang/String;

.field private mMarketingName:Ljava/lang/String;

.field private mMenuItemNumber:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNeedsFullDetails:Z

.field private mNutrients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;"
        }
    .end annotation
.end field

.field private mRelationItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mServingSizeUnit:Ljava/lang/String;

.field private mServingSizeValue:Ljava/lang/String;

.field private mStandardNutrients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 568
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mId:Ljava/lang/String;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mExternalId:I

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mName:Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMarketingName:Ljava/lang/String;

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDescription:Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDisplayOrder:I

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMenuItemNumber:Ljava/lang/String;

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNeedsFullDetails:Z

    .line 521
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Category;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCategories:Ljava/util/List;

    .line 522
    const-class v0, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 523
    const-class v0, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 524
    const-class v0, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mImageUrl:Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeValue:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeUnit:Ljava/lang/String;

    .line 528
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Nutrient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNutrients:Ljava/util/List;

    .line 529
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mComponents:Ljava/util/List;

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mComponentsString:Ljava/lang/String;

    .line 531
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Allergen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAllergens:Ljava/util/List;

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAllergensString:Ljava/lang/String;

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAdditionalAllergensString:Ljava/lang/String;

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mFooters:Ljava/util/List;

    .line 535
    return-void

    .line 520
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildNutrientLists()V
    .locals 18

    .prologue
    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getNutrients()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 443
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v3, "highlighted":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v14, "standard":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v15

    const-string v16, "modules.nutritionInfo.connector"

    invoke-virtual/range {v15 .. v16}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 447
    .local v2, "currentConnector":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "connectors."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".nutritionInfo.nutrientIds"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 448
    .local v11, "nutrientsIdsKey":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v15

    invoke-virtual {v15, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 450
    .local v10, "nutrientIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {v10}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 451
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    new-array v12, v15, [Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 452
    .local v12, "nutrientsSorted":[Lcom/mcdonalds/sdk/modules/models/Nutrient;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNutrients:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 453
    .local v9, "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 454
    .local v8, "index":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v8, v0, :cond_0

    .line 455
    aput-object v9, v12, v8

    goto :goto_0

    .line 458
    .end local v8    # "index":I
    .end local v9    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNutrients:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 459
    array-length v0, v12

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    aget-object v9, v12, v15

    .line 462
    .restart local v9    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    if-eqz v9, :cond_2

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNutrients:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 468
    .end local v9    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .end local v12    # "nutrientsSorted":[Lcom/mcdonalds/sdk/modules/models/Nutrient;
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "connectors."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".nutritionInfo.highlightedNutrients"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "highlightedNutrientsKey":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 471
    .local v4, "highlightedNutrients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_4

    .line 472
    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "Energy"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "Calories"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "Protein"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "Total Fat"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "SaturatedFat"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string v17, "Carbohydrates"

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string v17, "Sodium"

    aput-object v17, v15, v16

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 476
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getNutrients()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 477
    .restart local v9    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 478
    .local v6, "id":D
    if-eqz v10, :cond_6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 482
    :cond_6
    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v13

    .line 483
    .local v13, "propName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->isNutrientInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 484
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 486
    :cond_7
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 490
    .end local v6    # "id":D
    .end local v9    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .end local v13    # "propName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHighlightedNutrients:Ljava/util/List;

    .line 491
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mStandardNutrients:Ljava/util/List;

    .line 494
    .end local v2    # "currentConnector":Ljava/lang/String;
    .end local v3    # "highlighted":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    .end local v4    # "highlightedNutrients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "highlightedNutrientsKey":Ljava/lang/String;
    .end local v10    # "nutrientIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v11    # "nutrientsIdsKey":Ljava/lang/String;
    .end local v14    # "standard":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    :cond_9
    return-void
.end method

.method private isNutrientInList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "nutrientName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "highlightedNutrients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 505
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    const/4 v1, 0x1

    .line 509
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalAllergensString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAdditionalAllergensString:Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalIngredientStatement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAdditionalIngredientStatement:Ljava/lang/String;

    return-object v0
.end method

.method public getAllergens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Allergen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAllergens:Ljava/util/List;

    return-object v0
.end method

.method public getAllergensString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAllergensString:Ljava/lang/String;

    return-object v0
.end method

.method public getCarouselImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    return-object v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getCategories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getCategories()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Category;->getID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCategoryMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCategoryMarketingName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/RecipeComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mComponents:Ljava/util/List;

    return-object v0
.end method

.method public getComponentsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mComponentsString:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDisplayOrder:I

    return v0
.end method

.method public getExternalId()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mExternalId:I

    return v0
.end method

.method public getFields()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "id"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "external_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "marketing_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "description"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_order"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "menu_item_number"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "needs_full_details"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "hero_image_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "hero_image_url"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "carousel_image_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "carousel_image_url"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "thumbnail_image_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "thumbnail_image_url"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "image_url"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "serving_size_unit"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "serving_size_value"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "components_string"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "allergens_string"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "additional_allergens_string"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFooters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mFooters:Ljava/util/List;

    return-object v0
.end method

.method public getForeignKeyValue(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignKeys()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 117
    const/4 v0, 0x4

    new-array v6, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const/4 v7, 0x0

    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v1, "id"

    const-string v2, "categories"

    const-string v3, "category_id"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v0, v6, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v1, "id"

    const-string v2, "nutrients"

    const-string v3, "id"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v0, v6, v7

    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v1, "id"

    const-string v2, "recipe_component"

    const-string v3, "product_code"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v0, v6, v4

    const/4 v7, 0x3

    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v1, "id"

    const-string v2, "allergen"

    const-string v3, "id"

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v0, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeroImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    return-object v0
.end method

.method public getHighlightedNutrients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHighlightedNutrients:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMarketingName:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuItemNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMenuItemNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedsFullDetails()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNeedsFullDetails:Z

    return v0
.end method

.method public getNutrients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNutrients:Ljava/util/List;

    return-object v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getRelationItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mRelationItems:Ljava/util/List;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    const-string v0, "%s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mId:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getServingSizeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getServingSizeString(Z)Ljava/lang/String;
    .locals 5
    .param p1, "useMetric"    # Z

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeUnit:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeValue:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeUnit:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getServingSizeUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getServingSizeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getStandardNutrients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mStandardNutrients:Ljava/util/List;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "nutrition_recipe"

    return-object v0
.end method

.method public getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "id"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "external_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mExternalId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v1, "name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "marketing_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMarketingName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "description"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "display_order"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDisplayOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v1, "menu_item_number"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMenuItemNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "needs_full_details"

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNeedsFullDetails:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 147
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "hero_image_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getImageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "hero_image_url"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    if-eqz v1, :cond_1

    .line 153
    const-string v1, "carousel_image_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getImageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "carousel_image_url"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    if-eqz v1, :cond_2

    .line 158
    const-string v1, "thumbnail_image_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getImageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "thumbnail_image_url"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    const-string v1, "image_url"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "serving_size_unit"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeUnit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "serving_size_value"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "components_string"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mComponentsString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "allergens_string"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAllergensString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "additional_allergens_string"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAdditionalAllergensString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-object v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 180
    const-string v6, "id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mId:Ljava/lang/String;

    .line 181
    const-string v6, "external_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mExternalId:I

    .line 182
    const-string v6, "name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mName:Ljava/lang/String;

    .line 183
    const-string v6, "marketing_name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMarketingName:Ljava/lang/String;

    .line 184
    const-string v6, "description"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDescription:Ljava/lang/String;

    .line 185
    const-string v6, "display_order"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDisplayOrder:I

    .line 186
    const-string v6, "menu_item_number"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMenuItemNumber:Ljava/lang/String;

    .line 187
    const-string v6, "needs_full_details"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getBooleanForInt(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNeedsFullDetails:Z

    .line 189
    const-string v6, "hero_image_name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "heroImageName":Ljava/lang/String;
    const-string v6, "hero_image_url"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "heroImageUrl":Ljava/lang/String;
    new-instance v6, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 192
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v6, v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setImageName(Ljava/lang/String;)V

    .line 193
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v6, v3}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setUrl(Ljava/lang/String;)V

    .line 195
    const-string v6, "carousel_image_name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "carouselImageName":Ljava/lang/String;
    const-string v6, "carousel_image_url"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "carouselImageUrl":Ljava/lang/String;
    new-instance v6, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 198
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setImageName(Ljava/lang/String;)V

    .line 199
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v6, v1}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setUrl(Ljava/lang/String;)V

    .line 201
    const-string v6, "thumbnail_image_name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "thumbnailImageName":Ljava/lang/String;
    const-string v6, "thumbnail_image_url"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "thumbnailImageUrl":Ljava/lang/String;
    new-instance v6, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 204
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v6, v4}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setImageName(Ljava/lang/String;)V

    .line 205
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v6, v5}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setUrl(Ljava/lang/String;)V

    .line 207
    const-string v6, "image_url"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mImageUrl:Ljava/lang/String;

    .line 208
    const-string v6, "serving_size_unit"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeUnit:Ljava/lang/String;

    .line 209
    const-string v6, "serving_size_value"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeValue:Ljava/lang/String;

    .line 210
    const-string v6, "components_string"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mComponentsString:Ljava/lang/String;

    .line 211
    const-string v6, "allergens_string"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAllergensString:Ljava/lang/String;

    .line 212
    const-string v6, "additional_allergens_string"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAdditionalAllergensString:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setAdditionalAllergensString(Ljava/lang/String;)V
    .locals 0
    .param p1, "allergensString"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAllergensString:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setAdditionalIngredientStatement(Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalIngredientStatement"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAdditionalIngredientStatement:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setAllergens(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Allergen;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, "allergens":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Allergen;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAllergens:Ljava/util/List;

    .line 391
    return-void
.end method

.method public setAllergensString(Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalAllergensString"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAdditionalAllergensString:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setCarouselImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V
    .locals 0
    .param p1, "carouselImage"    # Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 314
    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCategories:Ljava/util/List;

    .line 294
    return-void
.end method

.method public setCategoryMarketingName(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryMarketingName"    # Ljava/lang/String;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCategoryMarketingName:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setComponents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/RecipeComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/RecipeComponent;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mComponents:Ljava/util/List;

    .line 375
    return-void
.end method

.method public setComponentsString(Ljava/lang/String;)V
    .locals 0
    .param p1, "componentsString"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mComponentsString:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDescription:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 269
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDisplayOrder:I

    .line 270
    return-void
.end method

.method public setDoNotShow(Ljava/lang/String;)V
    .locals 0
    .param p1, "doNotShow"    # Ljava/lang/String;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDoNotShow:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setExternalId(I)V
    .locals 0
    .param p1, "externalId"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mExternalId:I

    .line 238
    return-void
.end method

.method public setFooters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "footers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mFooters:Ljava/util/List;

    .line 415
    return-void
.end method

.method public setHeroImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V
    .locals 0
    .param p1, "heroImage"    # Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 306
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mId:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mImageUrl:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setMarketingName(Ljava/lang/String;)V
    .locals 0
    .param p1, "marketingName"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMarketingName:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setMenuItemNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuItemNumber"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMenuItemNumber:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mName:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setNeedsFullDetails(Z)V
    .locals 0
    .param p1, "needsFullDetails"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNeedsFullDetails:Z

    .line 286
    return-void
.end method

.method public setNutrients(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "nutrients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNutrients:Ljava/util/List;

    .line 366
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->buildNutrientLists()V

    .line 367
    return-void
.end method

.method public setRelationItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, "relationItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/RelationItem;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mRelationItems:Ljava/util/List;

    .line 587
    return-void
.end method

.method public setServingSizeUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "servingSizeUnit"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeUnit:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setServingSizeValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "servingSizeValue"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeValue:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setThumbnailImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V
    .locals 0
    .param p1, "thumbnailImage"    # Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 322
    return-void
.end method

.method public shouldShow()Z
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDoNotShow:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDoNotShow:Ljava/lang/String;

    const-string v1, "Core"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 539
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mExternalId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMarketingName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mDisplayOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mMenuItemNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNeedsFullDetails:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 547
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCategories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 548
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 549
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 550
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 551
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mServingSizeUnit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mNutrients:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 555
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mComponents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 556
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mComponentsString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAllergens:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 558
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAllergensString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mAdditionalAllergensString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->mFooters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 561
    return-void

    .line 546
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
