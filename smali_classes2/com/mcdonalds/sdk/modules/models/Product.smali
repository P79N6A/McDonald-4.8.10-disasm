.class public Lcom/mcdonalds/sdk/modules/models/Product;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "Product.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/modules/models/Product$ProductType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Product;",
        ">;"
    }
.end annotation


# static fields
.field public static final COLUMN_ACCEPTS_LIGHT:Ljava/lang/String; = "accepts_light"

.field public static final COLUMN_ADVERTISABLE_BASE_PRODUCT_ID:Ljava/lang/String; = "advertisable_base_product_id"

.field public static final COLUMN_CAROUSEL_IMAGE_NAME:Ljava/lang/String; = "carousel_image_name"

.field public static final COLUMN_CAROUSEL_IMAGE_URL:Ljava/lang/String; = "carousel_image_url"

.field public static final COLUMN_CUSTOMER_FRIENDLY:Ljava/lang/String; = "customer_friendly"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DISPLAY_ORDER:Ljava/lang/String; = "display_order"

.field public static final COLUMN_DO_NOT_SHOW:Ljava/lang/String; = "do_not_show"

.field public static final COLUMN_EXTERNAL_ID:Ljava/lang/String; = "external_id"

.field public static final COLUMN_HAS_OFFERS:Ljava/lang/String; = "has_offers"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final COLUMN_LONG_NAME:Ljava/lang/String; = "long_name"

.field public static final COLUMN_MAX_QTTY_ALLOWED_PER_ORDER:Ljava/lang/String; = "max_qtty_allowed_per_order"

.field public static final COLUMN_MENU_TYPE_ID:Ljava/lang/String; = "menu_type_id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_PRODUCT_TYPE:Ljava/lang/String; = "product_type"

.field public static final COLUMN_RECIPE_ALLERGENS:Ljava/lang/String; = "recipe_allergens"

.field public static final COLUMN_RECIPE_COMPONENTS_STRING:Ljava/lang/String; = "recipe_components_string"

.field public static final COLUMN_RECIPE_ID:Ljava/lang/String; = "recipe_id"

.field public static final COLUMN_SHORT_NAME:Ljava/lang/String; = "short_name"

.field public static final COLUMN_THUMBNAIL_IMAGE_NAME:Ljava/lang/String; = "thumbnail_image_name"

.field public static final COLUMN_THUMBNAIL_IMAGE_URL:Ljava/lang/String; = "thumbnail_image_url"

.field public static final COLUMN_TIME_RESTRICTION_FROM:Ljava/lang/String; = "time_restriction_from"

.field public static final COLUMN_TIME_RESTRICTION_TO:Ljava/lang/String; = "time_restriction_to"

.field public static final COLUMN_VALID:Ljava/lang/String; = "valid"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "products"


# instance fields
.field private mAcceptsLight:Z

.field private mAdvertisableBaseProductId:I

.field private mAdvertisableProduct:Lcom/mcdonalds/sdk/modules/models/Product;

.field private mAdvertisablePromotion:Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;

.field private mAdvertisableWeekDay:I

.field private mBasePriceDelivery:D

.field private mBasePriceEatIn:D

.field private mBasePriceTakeOut:D

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

.field private mCategoryIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field private mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomerFriendly:Ljava/lang/Boolean;

.field private mDescription:Ljava/lang/String;

.field private mDimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayCategory:Lcom/mcdonalds/sdk/modules/models/Category;

.field private mDisplayOrder:Ljava/lang/Integer;

.field private mDoNotShow:Ljava/lang/String;

.field private mEnergy:D

.field private mExtendedMenuTypeIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalId:Ljava/lang/Integer;

.field private mExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field

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

.field private mHasChoice:Ljava/lang/Boolean;

.field private mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

.field private mHasOffers:Z

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

.field private mHighlightedNutrientsSortedById:Ljava/util/List;
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

.field private mIngredients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSingleChoice:Ljava/lang/Boolean;

.field private mLongName:Ljava/lang/String;

.field private mMarketingName:Ljava/lang/String;

.field private mMaxQttyAllowedPerOrder:Ljava/lang/Integer;

.field private mMenuItemNumber:Ljava/lang/String;

.field private mMenuTypeID:Ljava/lang/Integer;

.field private mMenuTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNeedsFullDetails:Ljava/lang/Boolean;

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

.field private mPODs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Pod;",
            ">;"
        }
    .end annotation
.end field

.field private mPriceDelivery:D

.field private mPriceEatIn:D

.field private mPriceTakeOut:D

.field private mProductType:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

.field private mProductUnit:Ljava/lang/String;

.field private mRecipeAllergens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Allergen;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipeAllergensString:Ljava/lang/String;

.field private mRecipeComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/RecipeComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipeComponentsString:Ljava/lang/String;

.field private mRecipeId:Ljava/lang/Integer;

.field private mServingSizeEnglish:Lcom/mcdonalds/sdk/modules/models/Nutrient;

.field private mServingSizeMetric:Lcom/mcdonalds/sdk/modules/models/Nutrient;

.field private mShortName:Ljava/lang/String;

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

.field private mStandardNutrientsSortedById:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreProduct:Lcom/mcdonalds/sdk/modules/models/StoreProduct;

.field private mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

.field private mTimeRestriction:Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

.field private mTimeRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/TimeRestriction;",
            ">;"
        }
    .end annotation
.end field

.field private mValid:Ljava/lang/Boolean;

.field private mkCal:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1363
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Product$3;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Product$3;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Product;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableWeekDay:I

    .line 143
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 1279
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 93
    iput v6, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableWeekDay:I

    .line 1280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mId:Ljava/lang/String;

    .line 1281
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeId:Ljava/lang/Integer;

    .line 1282
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExternalId:Ljava/lang/Integer;

    .line 1283
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDisplayOrder:Ljava/lang/Integer;

    .line 1284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuItemNumber:Ljava/lang/String;

    .line 1285
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mFooters:Ljava/util/List;

    .line 1286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    .line 1287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMarketingName:Ljava/lang/String;

    .line 1288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mShortName:Ljava/lang/String;

    .line 1289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    .line 1290
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypeID:Ljava/lang/Integer;

    .line 1291
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/MenuType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypes:Ljava/util/List;

    .line 1293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExtendedMenuTypeIDs:Ljava/util/List;

    .line 1294
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExtendedMenuTypeIDs:Ljava/util/List;

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1296
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Nutrient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mNutrients:Ljava/util/List;

    .line 1297
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Nutrient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrients:Ljava/util/List;

    .line 1298
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Nutrient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrientsSortedById:Ljava/util/List;

    .line 1299
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Nutrient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrients:Ljava/util/List;

    .line 1300
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Nutrient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrientsSortedById:Ljava/util/List;

    .line 1301
    const-class v1, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mServingSizeEnglish:Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 1302
    const-class v1, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mServingSizeMetric:Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 1303
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mEnergy:D

    .line 1304
    const-class v1, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 1305
    const-class v1, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 1306
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponents:Ljava/util/List;

    .line 1307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponentsString:Ljava/lang/String;

    .line 1308
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Allergen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergens:Ljava/util/List;

    .line 1309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergensString:Ljava/lang/String;

    .line 1310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDescription:Ljava/lang/String;

    .line 1311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDoNotShow:Ljava/lang/String;

    .line 1312
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mValid:Ljava/lang/Boolean;

    .line 1313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableWeekDay:I

    .line 1314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableBaseProductId:I

    .line 1315
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCustomerFriendly:Ljava/lang/Boolean;

    .line 1316
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mIsSingleChoice:Ljava/lang/Boolean;

    .line 1317
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasChoice:Ljava/lang/Boolean;

    .line 1318
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

    .line 1319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1320
    .local v0, "tmpMProductType":I
    if-ne v0, v6, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mProductType:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 1321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mImageUrl:Ljava/lang/String;

    .line 1322
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mNeedsFullDetails:Ljava/lang/Boolean;

    .line 1323
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/ProductDimension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDimensions:Ljava/util/List;

    .line 1325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mIngredients:Ljava/util/List;

    .line 1326
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mIngredients:Ljava/util/List;

    const-class v4, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExtras:Ljava/util/List;

    .line 1329
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExtras:Ljava/util/List;

    const-class v4, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mChoices:Ljava/util/List;

    .line 1332
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mChoices:Ljava/util/List;

    const-class v4, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mComments:Ljava/util/List;

    .line 1335
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mComments:Ljava/util/List;

    const-class v4, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1337
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPriceEatIn:D

    .line 1338
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPriceTakeOut:D

    .line 1339
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPriceDelivery:D

    .line 1340
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mBasePriceEatIn:D

    .line 1341
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mBasePriceTakeOut:D

    .line 1342
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mBasePriceDelivery:D

    .line 1344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCategoryIds:Ljava/util/List;

    .line 1345
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCategoryIds:Ljava/util/List;

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1347
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Category;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCategories:Ljava/util/List;

    .line 1348
    const-class v1, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 1349
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Pod;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPODs:Ljava/util/List;

    .line 1350
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasOffers:Z

    .line 1351
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAcceptsLight:Z

    .line 1352
    const-class v1, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestriction:Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    .line 1353
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMaxQttyAllowedPerOrder:Ljava/lang/Integer;

    .line 1354
    const-class v1, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStoreProduct:Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    .line 1355
    const-class v1, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisablePromotion:Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;

    .line 1356
    const-class v1, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Product;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 1357
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mkCal:D

    .line 1358
    const-class v1, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Category;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDisplayCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    .line 1359
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    .line 1360
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    const-class v2, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1361
    return-void

    .line 1320
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->values()[Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v1

    aget-object v1, v1, v0

    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 1350
    goto :goto_1

    :cond_2
    move v2, v3

    .line 1351
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "recipeId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p3, "nutrients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableWeekDay:I

    .line 403
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mId:Ljava/lang/String;

    .line 404
    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    .line 405
    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mNutrients:Ljava/util/List;

    .line 406
    return-void
.end method

.method public static getChoiceWithinChoiceFiller()Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Product;-><init>()V

    .line 135
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setId(Ljava/lang/String;)V

    .line 136
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Choice:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setProductType(Lcom/mcdonalds/sdk/modules/models/Product$ProductType;)V

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setPODs(Ljava/util/List;)V

    .line 139
    return-object v0
.end method


# virtual methods
.method public buildNutrientLists()V
    .locals 14

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getNutrients()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 884
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v1, "highlighted":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v10, "standard":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v11

    const-string v12, "modules.nutritionInfo.connector"

    invoke-virtual {v11, v12}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 888
    .local v0, "currentConnector":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connectors."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".nutritionInfo.nutrientIds"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 889
    .local v8, "nutrientsIdsKey":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 891
    .local v7, "nutrientIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connectors."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".nutritionInfo.highlightedNutrients"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 892
    .local v3, "highlightedNutrientsKey":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 894
    .local v2, "highlightedNutrients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 895
    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "Energy"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "Calories"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "Protein"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "Total Fat"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "SaturatedFat"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string v13, "Carbohydrates"

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "Sodium"

    aput-object v13, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 899
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getNutrients()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 900
    .local v6, "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 901
    .local v4, "id":D
    if-eqz v7, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 905
    :cond_2
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v9

    .line 906
    .local v9, "propName":Ljava/lang/String;
    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 907
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 909
    :cond_3
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 913
    .end local v4    # "id":D
    .end local v6    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .end local v9    # "propName":Ljava/lang/String;
    :cond_4
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrients:Ljava/util/List;

    .line 914
    iput-object v10, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrients:Ljava/util/List;

    .line 916
    .end local v0    # "currentConnector":Ljava/lang/String;
    .end local v1    # "highlighted":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    .end local v2    # "highlightedNutrients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "highlightedNutrientsKey":Ljava/lang/String;
    .end local v7    # "nutrientIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v8    # "nutrientsIdsKey":Ljava/lang/String;
    .end local v10    # "standard":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    :cond_5
    return-void
.end method

.method public compareTo(Lcom/mcdonalds/sdk/modules/models/Product;)I
    .locals 2
    .param p1, "another"    # Lcom/mcdonalds/sdk/modules/models/Product;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getDisplayOrder()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getDisplayOrder()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Product;->compareTo(Lcom/mcdonalds/sdk/modules/models/Product;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1208
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1197
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 1202
    :goto_0
    return v1

    .line 1198
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1200
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Product;

    .line 1202
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExternalId:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mExternalId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAcceptsLight()Z
    .locals 1

    .prologue
    .line 1085
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAcceptsLight:Z

    return v0
.end method

.method public getAdvertisableBaseProductId()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableBaseProductId:I

    return v0
.end method

.method public getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    return-object v0
.end method

.method public getAdvertisablePromotion()Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisablePromotion:Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;

    return-object v0
.end method

.method public getAdvertisableWeekDay()I
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableWeekDay:I

    return v0
.end method

.method public getBasePrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D
    .locals 3
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceEatIn()D

    move-result-wide v0

    .line 815
    .local v0, "price":D
    if-eqz p1, :cond_0

    .line 816
    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    if-ne p1, v2, :cond_1

    .line 817
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceTakeOut()D

    move-result-wide v0

    .line 822
    :cond_0
    :goto_0
    return-wide v0

    .line 818
    :cond_1
    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    if-ne p1, v2, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceDelivery()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getBasePriceDelivery()D
    .locals 2

    .prologue
    .line 842
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mBasePriceDelivery:D

    return-wide v0
.end method

.method public getBasePriceEatIn()D
    .locals 2

    .prologue
    .line 826
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mBasePriceEatIn:D

    return-wide v0
.end method

.method public getBasePriceTakeOut()D
    .locals 2

    .prologue
    .line 834
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mBasePriceTakeOut:D

    return-wide v0
.end method

.method public getCarouselImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

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
    .line 1003
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getCategories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getCategories()Ljava/util/List;

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

.method public getChoices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mChoices:Ljava/util/List;

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mComments:Ljava/util/List;

    return-object v0
.end method

.method public getCustomerFriendly()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCustomerFriendly:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDimensions:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayCategory()Lcom/mcdonalds/sdk/modules/models/Category;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDisplayCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    return-object v0
.end method

.method public getDisplayOrder()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDisplayOrder:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDisplayOrderForCategory(I)Ljava/lang/Integer;
    .locals 4
    .param p1, "categoryId"    # I

    .prologue
    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "ret":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getCategories()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getCategories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 365
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Category;->getID()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Category;->getDisplayOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 372
    .end local v0    # "category":Lcom/mcdonalds/sdk/modules/models/Category;
    :cond_1
    return-object v1
.end method

.method public getDoNotShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDoNotShow:Ljava/lang/String;

    return-object v0
.end method

.method public getEnergy()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 391
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mEnergy:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getEnergyNutrient()Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getNutrients()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getNutrients()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 378
    .local v0, "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Energy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    .end local v0    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtendedMenuTypeIDs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getMenuTypes()Ljava/util/List;

    move-result-object v2

    .line 966
    .local v2, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    if-eqz v2, :cond_0

    .line 967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .local v0, "extendedMenuTypeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/MenuType;

    .line 969
    .local v1, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 974
    .end local v0    # "extendedMenuTypeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypeID:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 975
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .restart local v0    # "extendedMenuTypeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypeID:Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    .end local v0    # "extendedMenuTypeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExtendedMenuTypeIDs:Ljava/util/List;

    goto :goto_1
.end method

.method public getExternalId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExternalId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExtras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExtras:Ljava/util/List;

    return-object v0
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
    .line 157
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "external_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "recipe_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "id"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_order"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "short_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "long_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "menu_type_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "product_type"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "image_url"

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

    const-string v3, "recipe_components_string"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "recipe_allergens"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "description"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "do_not_show"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "valid"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "customer_friendly"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "has_offers"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "accepts_light"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "max_qtty_allowed_per_order"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "time_restriction_from"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "time_restriction_to"

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
    .line 514
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mFooters:Ljava/util/List;

    return-object v0
.end method

.method public getForeignKeyValue(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "table"    # Ljava/lang/String;
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
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignKeys()Ljava/util/List;
    .locals 4
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
    .line 188
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v1, "menu_type_id"

    const-string v2, "menu_types"

    const-string v3, "id"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeroImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

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
    .line 538
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrients:Ljava/util/List;

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->buildNutrientLists()V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrients:Ljava/util/List;

    return-object v0
.end method

.method public getHighlightedNutrientsSortedById()Ljava/util/List;
    .locals 2
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
    .line 573
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrientsSortedById:Ljava/util/List;

    if-nez v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getHighlightedNutrients()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrientsSortedById:Ljava/util/List;

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrientsSortedById:Ljava/util/List;

    new-instance v1, Lcom/mcdonalds/sdk/modules/models/Product$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/modules/models/Product$2;-><init>(Lcom/mcdonalds/sdk/modules/models/Product;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 584
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrientsSortedById:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIngredients()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mIngredients:Ljava/util/List;

    return-object v0
.end method

.method public getKCal()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 399
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mkCal:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMarketingName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxQttyAllowedPerOrder()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMaxQttyAllowedPerOrder:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMenuItemNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuItemNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuTypeID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypeID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMenuTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypes:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedsFullDetails()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mNeedsFullDetails:Ljava/lang/Boolean;

    return-object v0
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
    .line 530
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mNutrients:Ljava/util/List;

    return-object v0
.end method

.method public getPODObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Pod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPODs:Ljava/util/List;

    return-object v0
.end method

.method public getPODs()Ljava/util/List;
    .locals 5
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
    .line 1062
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1063
    .local v2, "typeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODObjects()Ljava/util/List;

    move-result-object v1

    .line 1064
    .local v1, "pods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Pod;>;"
    if-eqz v1, :cond_0

    .line 1065
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Pod;

    .line 1066
    .local v0, "pod":Lcom/mcdonalds/sdk/modules/models/Pod;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Pod;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1069
    .end local v0    # "pod":Lcom/mcdonalds/sdk/modules/models/Pod;
    :cond_0
    return-object v2
.end method

.method public getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D
    .locals 3
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceEatIn()D

    move-result-wide v0

    .line 778
    .local v0, "price":D
    if-eqz p1, :cond_0

    .line 779
    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    if-ne p1, v2, :cond_1

    .line 780
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceTakeOut()D

    move-result-wide v0

    .line 785
    :cond_0
    :goto_0
    return-wide v0

    .line 781
    :cond_1
    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    if-ne p1, v2, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceDelivery()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getPriceDelivery()D
    .locals 2

    .prologue
    .line 805
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPriceDelivery:D

    return-wide v0
.end method

.method public getPriceEatIn()D
    .locals 2

    .prologue
    .line 789
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPriceEatIn:D

    return-wide v0
.end method

.method public getPriceTakeOut()D
    .locals 2

    .prologue
    .line 797
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPriceTakeOut:D

    return-wide v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "external_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mProductType:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    return-object v0
.end method

.method public getProductUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mProductUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipeAllergens()Ljava/util/List;
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
    .line 1011
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergens:Ljava/util/List;

    return-object v0
.end method

.method public getRecipeAllergensString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergensString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipeComponents()Ljava/util/List;
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
    .line 644
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponents:Ljava/util/List;

    return-object v0
.end method

.method public getRecipeComponentsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponentsString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 274
    const-string v0, "%s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "external_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExternalId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getServingSizeEnglish()Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mServingSizeEnglish:Lcom/mcdonalds/sdk/modules/models/Nutrient;

    return-object v0
.end method

.method public getServingSizeMetric()Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mServingSizeMetric:Lcom/mcdonalds/sdk/modules/models/Nutrient;

    return-object v0
.end method

.method public getServingSizeString(Z)Ljava/lang/String;
    .locals 7
    .param p1, "useMetric"    # Z

    .prologue
    .line 610
    if-eqz p1, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getServingSizeMetric()Lcom/mcdonalds/sdk/modules/models/Nutrient;

    move-result-object v0

    .line 616
    .local v0, "servingSize":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 618
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "unit":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 620
    const-string v1, ""

    .line 622
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 624
    .end local v1    # "unit":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 613
    .end local v0    # "servingSize":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getServingSizeEnglish()Lcom/mcdonalds/sdk/modules/models/Nutrient;

    move-result-object v0

    .restart local v0    # "servingSize":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    goto :goto_0

    .line 624
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mShortName:Ljava/lang/String;

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
    .line 550
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrients:Ljava/util/List;

    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->buildNutrientLists()V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrients:Ljava/util/List;

    return-object v0
.end method

.method public getStandardNutrientsSortedById()Ljava/util/List;
    .locals 2
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
    .line 558
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrientsSortedById:Ljava/util/List;

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getStandardNutrients()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrientsSortedById:Ljava/util/List;

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrientsSortedById:Ljava/util/List;

    new-instance v1, Lcom/mcdonalds/sdk/modules/models/Product$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/modules/models/Product$1;-><init>(Lcom/mcdonalds/sdk/modules/models/Product;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 569
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrientsSortedById:Ljava/util/List;

    return-object v0
.end method

.method public getStoreProduct()Lcom/mcdonalds/sdk/modules/models/StoreProduct;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStoreProduct:Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "products"

    return-object v0
.end method

.method public getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    return-object v0
.end method

.method public getTimeRestriction()Lcom/mcdonalds/sdk/modules/models/TimeRestriction;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestriction:Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    return-object v0
.end method

.method public getTimeRestrictions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/TimeRestriction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    return-object v0
.end method

.method public getValid()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mValid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 9

    .prologue
    .line 200
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "external_id"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExternalId:Ljava/lang/Integer;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v7, "recipe_id"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeId:Ljava/lang/Integer;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v7, "id"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v7, "display_order"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDisplayOrder:Ljava/lang/Integer;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v7, "name"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v7, "short_name"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mShortName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v7, "long_name"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v7, "menu_type_id"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypeID:Ljava/lang/Integer;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mProductType:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    if-eqz v7, :cond_1

    .line 210
    const-string v7, "product_type"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mProductType:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->integerValue()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    :goto_0
    const-string v7, "image_url"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    if-eqz v7, :cond_2

    .line 216
    const-string v7, "carousel_image_name"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getImageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v7, "carousel_image_url"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_1
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    if-eqz v7, :cond_3

    .line 223
    const-string v7, "thumbnail_image_name"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getImageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v7, "thumbnail_image_url"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_2
    const-string v7, "recipe_components_string"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponentsString:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v7, "recipe_allergens"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergensString:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v7, "description"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v7, "do_not_show"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDoNotShow:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v7, "valid"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mValid:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 234
    const-string v7, "customer_friendly"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCustomerFriendly:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 235
    const-string v7, "has_offers"

    iget-boolean v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasOffers:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 236
    const-string v7, "accepts_light"

    iget-boolean v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAcceptsLight:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    const-string v7, "max_qtty_allowed_per_order"

    iget-object v8, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMaxQttyAllowedPerOrder:Ljava/lang/Integer;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    if-eqz v7, :cond_6

    .line 241
    const/4 v0, 0x1

    .line 242
    .local v0, "first":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v2, "fromList":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v5, "toList":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    .line 245
    .local v3, "r":Lcom/mcdonalds/sdk/modules/models/TimeRestriction;
    if-eqz v3, :cond_0

    .line 246
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;->getFromTime()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "from":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;->getToTime()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "to":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 250
    if-eqz v0, :cond_4

    .line 251
    const/4 v0, 0x0

    .line 257
    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 212
    .end local v0    # "first":Z
    .end local v1    # "from":Ljava/lang/String;
    .end local v2    # "fromList":Ljava/lang/StringBuilder;
    .end local v3    # "r":Lcom/mcdonalds/sdk/modules/models/TimeRestriction;
    .end local v4    # "to":Ljava/lang/String;
    .end local v5    # "toList":Ljava/lang/StringBuilder;
    :cond_1
    const-string v7, "product_type"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_2
    const-string v7, "carousel_image_name"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 220
    const-string v7, "carousel_image_url"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 226
    :cond_3
    const-string v7, "thumbnail_image_name"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 227
    const-string v7, "thumbnail_image_url"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 253
    .restart local v0    # "first":Z
    .restart local v1    # "from":Ljava/lang/String;
    .restart local v2    # "fromList":Ljava/lang/StringBuilder;
    .restart local v3    # "r":Lcom/mcdonalds/sdk/modules/models/TimeRestriction;
    .restart local v4    # "to":Ljava/lang/String;
    .restart local v5    # "toList":Ljava/lang/StringBuilder;
    :cond_4
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 263
    .end local v1    # "from":Ljava/lang/String;
    .end local v3    # "r":Lcom/mcdonalds/sdk/modules/models/TimeRestriction;
    .end local v4    # "to":Ljava/lang/String;
    :cond_5
    const-string v7, "time_restriction_from"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v7, "time_restriction_to"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .end local v0    # "first":Z
    .end local v2    # "fromList":Ljava/lang/StringBuilder;
    .end local v5    # "toList":Ljava/lang/StringBuilder;
    :goto_5
    return-object v6

    .line 266
    :cond_6
    const-string v7, "time_restriction_from"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 267
    const-string v7, "time_restriction_to"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public hasChoice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasChoice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasNonSingleChoiceChoice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasOffers()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasOffers:Z

    return v0
.end method

.method public isAdvertisable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleChoice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mIsSingleChoice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 289
    const-string v7, ""

    .line 290
    .local v7, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 291
    const-string v13, "%s_"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 294
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "external_id"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mExternalId:Ljava/lang/Integer;

    .line 295
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "recipe_id"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeId:Ljava/lang/Integer;

    .line 296
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "id"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mId:Ljava/lang/String;

    .line 297
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "display_order"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mDisplayOrder:Ljava/lang/Integer;

    .line 298
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "name"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    .line 299
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "short_name"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mShortName:Ljava/lang/String;

    .line 300
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "long_name"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    .line 301
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "menu_type_id"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypeID:Ljava/lang/Integer;

    .line 302
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "product_type"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 303
    .local v8, "productTypeIndex":I
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getType(I)I

    move-result v13

    if-eqz v13, :cond_1

    .line 304
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->valueToProductType(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mProductType:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 306
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "image_url"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mImageUrl:Ljava/lang/String;

    .line 307
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "carousel_image_name"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "carouselImageName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "carousel_image_url"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "carouselImageUrl":Ljava/lang/String;
    new-instance v13, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-direct {v13}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v13, v2}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setImageName(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v13, v3}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setUrl(Ljava/lang/String;)V

    .line 312
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "thumbnail_image_name"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 313
    .local v9, "thumbnailImageName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "thumbnail_image_url"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 314
    .local v10, "thumbnailImageUrl":Ljava/lang/String;
    new-instance v13, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-direct {v13}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v13, v9}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setImageName(Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v13, v10}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->setUrl(Ljava/lang/String;)V

    .line 317
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "recipe_components_string"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponentsString:Ljava/lang/String;

    .line 318
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "recipe_allergens"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergensString:Ljava/lang/String;

    .line 319
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "description"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mDescription:Ljava/lang/String;

    .line 320
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "do_not_show"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mDoNotShow:Ljava/lang/String;

    .line 321
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "valid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mcdonalds/sdk/modules/models/Product;->getBooleanForInt(I)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mValid:Ljava/lang/Boolean;

    .line 322
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "advertisable_base_product_id"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 323
    .local v1, "advertisableBasProductIdIndex":I
    const/4 v13, -0x1

    if-eq v1, v13, :cond_2

    .line 324
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableBaseProductId:I

    .line 326
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "customer_friendly"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mcdonalds/sdk/modules/models/Product;->getBooleanForInt(I)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mCustomerFriendly:Ljava/lang/Boolean;

    .line 327
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "has_offers"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mcdonalds/sdk/modules/models/Product;->getBooleanForInt(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasOffers:Z

    .line 328
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "accepts_light"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mcdonalds/sdk/modules/models/Product;->getBooleanForInt(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mAcceptsLight:Z

    .line 329
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "max_qtty_allowed_per_order"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mMaxQttyAllowedPerOrder:Ljava/lang/Integer;

    .line 330
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "time_restriction_from"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "from":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "time_restriction_to"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 333
    .local v11, "to":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    .line 334
    if-eqz v4, :cond_3

    if-nez v11, :cond_5

    .line 335
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestriction:Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    .line 351
    :cond_4
    :goto_0
    return-void

    .line 337
    :cond_5
    const-string v13, ","

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "fromList":[Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 339
    .local v12, "toList":[Ljava/lang/String;
    array-length v13, v5

    array-length v14, v12

    if-ne v13, v14, :cond_7

    .line 340
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v13, v5

    if-ge v6, v13, :cond_7

    .line 341
    aget-object v13, v5, v6

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    aget-object v13, v12, v6

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    new-instance v14, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    aget-object v15, v5, v6

    aget-object v16, v12, v6

    invoke-direct/range {v14 .. v16}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 347
    .end local v6    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestriction:Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    goto :goto_0
.end method

.method public setAcceptsLight(Z)V
    .locals 0
    .param p1, "acceptsLight"    # Z

    .prologue
    .line 1089
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAcceptsLight:Z

    .line 1090
    return-void
.end method

.method public setAdvertisableProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 0
    .param p1, "advertisableProduct"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 681
    return-void
.end method

.method public setAdvertisablePromotion(Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;)V
    .locals 0
    .param p1, "advertisableDeal"    # Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisablePromotion:Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;

    .line 1144
    return-void
.end method

.method public setAdvertisableWeekDay(I)V
    .locals 0
    .param p1, "advertisableWeekDay"    # I

    .prologue
    .line 1151
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableWeekDay:I

    .line 1152
    return-void
.end method

.method public setBasePriceDelivery(D)V
    .locals 1
    .param p1, "mBasePriceDelivery"    # D

    .prologue
    .line 846
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mBasePriceDelivery:D

    .line 847
    return-void
.end method

.method public setBasePriceEatIn(D)V
    .locals 1
    .param p1, "mBasePriceEatIn"    # D

    .prologue
    .line 830
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mBasePriceEatIn:D

    .line 831
    return-void
.end method

.method public setBasePriceTakeOut(D)V
    .locals 1
    .param p1, "mBasePriceTakeOut"    # D

    .prologue
    .line 838
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mBasePriceTakeOut:D

    .line 839
    return-void
.end method

.method public setCarouselImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V
    .locals 0
    .param p1, "carouselImage"    # Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 641
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
    .line 1007
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCategories:Ljava/util/List;

    .line 1008
    return-void
.end method

.method public setChoices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 764
    .local p1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mChoices:Ljava/util/List;

    .line 765
    return-void
.end method

.method public setComments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mComments:Ljava/util/List;

    .line 773
    return-void
.end method

.method public setCustomerFriendly(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "customerFriendly"    # Ljava/lang/Boolean;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCustomerFriendly:Ljava/lang/Boolean;

    .line 701
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDescription:Ljava/lang/String;

    .line 1032
    return-void
.end method

.method public setDimensions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductDimension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p1, "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDimensions:Ljava/util/List;

    .line 741
    return-void
.end method

.method public setDisplayCategory(Lcom/mcdonalds/sdk/modules/models/Category;)V
    .locals 0
    .param p1, "displayCategory"    # Lcom/mcdonalds/sdk/modules/models/Category;

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDisplayCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    .line 1160
    return-void
.end method

.method public setDisplayOrder(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "displayOrder"    # Ljava/lang/Integer;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDisplayOrder:Ljava/lang/Integer;

    .line 1000
    return-void
.end method

.method public setDoNotShow(Ljava/lang/String;)V
    .locals 0
    .param p1, "doNotShow"    # Ljava/lang/String;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDoNotShow:Ljava/lang/String;

    .line 669
    return-void
.end method

.method public setEnergy(D)V
    .locals 1
    .param p1, "energy"    # D

    .prologue
    .line 387
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mEnergy:D

    .line 388
    return-void
.end method

.method public setExtendedMenuTypeIDs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 983
    .local p1, "extendedMenuTypeIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExtendedMenuTypeIDs:Ljava/util/List;

    .line 984
    return-void
.end method

.method public setExternalId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "externalId"    # Ljava/lang/Integer;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExternalId:Ljava/lang/Integer;

    .line 499
    return-void
.end method

.method public setExtras(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExtras:Ljava/util/List;

    .line 757
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
    .line 518
    .local p1, "footers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mFooters:Ljava/util/List;

    .line 519
    return-void
.end method

.method public setHasChoice(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "hasChoice"    # Ljava/lang/Boolean;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasChoice:Ljava/lang/Boolean;

    .line 725
    return-void
.end method

.method public setHasNonSingleChoiceChoice(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "hasNonSingleChoiceChoice"    # Ljava/lang/Boolean;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasNonSingleChoiceChoice:Ljava/lang/Boolean;

    .line 733
    return-void
.end method

.method public setHasOffers(Z)V
    .locals 0
    .param p1, "hasOffers"    # Z

    .prologue
    .line 1081
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasOffers:Z

    .line 1082
    return-void
.end method

.method public setHeroImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V
    .locals 0
    .param p1, "heroImage"    # Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 1036
    return-void
.end method

.method public setHighlightedNutrients(Ljava/util/List;)V
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
    .line 546
    .local p1, "highlightedNutrients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrients:Ljava/util/List;

    .line 547
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mId:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 953
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mImageUrl:Ljava/lang/String;

    .line 954
    return-void
.end method

.method public setIngredients(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 748
    .local p1, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mIngredients:Ljava/util/List;

    .line 749
    return-void
.end method

.method public setKCal(D)V
    .locals 1
    .param p1, "kCal"    # D

    .prologue
    .line 395
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mkCal:D

    .line 396
    return-void
.end method

.method public setLongName(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    .line 871
    return-void
.end method

.method public setMarketingName(Ljava/lang/String;)V
    .locals 0
    .param p1, "marketingName"    # Ljava/lang/String;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMarketingName:Ljava/lang/String;

    .line 992
    return-void
.end method

.method public setMaxQttyAllowedPerOrder(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxQttyAllowedPerOrder"    # Ljava/lang/Integer;

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMaxQttyAllowedPerOrder:Ljava/lang/Integer;

    .line 1116
    return-void
.end method

.method public setMenuItemNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuItemNumber"    # Ljava/lang/String;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuItemNumber:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setMenuTypeID(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "menuTypeID"    # Ljava/lang/Integer;

    .prologue
    .line 961
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypeID:Ljava/lang/Integer;

    .line 962
    return-void
.end method

.method public setMenuTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p1, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypes:Ljava/util/List;

    .line 879
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    .line 527
    return-void
.end method

.method public setNeedsFullDetails(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "needsFullDetails"    # Ljava/lang/Boolean;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mNeedsFullDetails:Ljava/lang/Boolean;

    .line 709
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
    .line 534
    .local p1, "nutrients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mNutrients:Ljava/util/List;

    .line 535
    return-void
.end method

.method public setPODObjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Pod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p1, "PODs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Pod;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPODs:Ljava/util/List;

    .line 1044
    return-void
.end method

.method public setPODs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1047
    .local p1, "PODs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPODs:Ljava/util/List;

    .line 1049
    if-nez p1, :cond_1

    .line 1059
    :cond_0
    return-void

    .line 1053
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1054
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;

    .line 1055
    .local v1, "mwPod":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;
    if-eqz v1, :cond_2

    .line 1056
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPODs:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPOD;->toPod()Lcom/mcdonalds/sdk/modules/models/Pod;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setPriceDelivery(D)V
    .locals 1
    .param p1, "priceDelivery"    # D

    .prologue
    .line 809
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPriceDelivery:D

    .line 810
    return-void
.end method

.method public setPriceEatIn(D)V
    .locals 1
    .param p1, "priceEatIn"    # D

    .prologue
    .line 793
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPriceEatIn:D

    .line 794
    return-void
.end method

.method public setPriceTakeOut(D)V
    .locals 1
    .param p1, "priceTakeOut"    # D

    .prologue
    .line 801
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPriceTakeOut:D

    .line 802
    return-void
.end method

.method public setProductType(Lcom/mcdonalds/sdk/modules/models/Product$ProductType;)V
    .locals 0
    .param p1, "productType"    # Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mProductType:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 855
    return-void
.end method

.method public setProductUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "productUnit"    # Ljava/lang/String;

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mProductUnit:Ljava/lang/String;

    .line 1136
    return-void
.end method

.method public setRecipeAllergens(Ljava/util/List;)V
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
    .line 1015
    .local p1, "recipeAllergens":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Allergen;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergens:Ljava/util/List;

    .line 1016
    return-void
.end method

.method public setRecipeAllergensString(Ljava/lang/String;)V
    .locals 0
    .param p1, "allergens"    # Ljava/lang/String;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergensString:Ljava/lang/String;

    .line 1024
    return-void
.end method

.method public setRecipeComponents(Ljava/util/List;)V
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
    .line 648
    .local p1, "recipeComponents":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/RecipeComponent;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponents:Ljava/util/List;

    .line 649
    return-void
.end method

.method public setRecipeComponentsString(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipeComponentsString"    # Ljava/lang/String;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponentsString:Ljava/lang/String;

    .line 657
    return-void
.end method

.method public setRecipeId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "recipeId"    # Ljava/lang/Integer;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeId:Ljava/lang/Integer;

    .line 491
    return-void
.end method

.method public setServingSizeEnglish(Lcom/mcdonalds/sdk/modules/models/Nutrient;)V
    .locals 0
    .param p1, "servingSizeEnglish"    # Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mServingSizeEnglish:Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 597
    return-void
.end method

.method public setServingSizeMetric(Lcom/mcdonalds/sdk/modules/models/Nutrient;)V
    .locals 0
    .param p1, "servingSizeMetric"    # Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mServingSizeMetric:Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .line 605
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortName"    # Ljava/lang/String;

    .prologue
    .line 862
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mShortName:Ljava/lang/String;

    .line 863
    return-void
.end method

.method public setSingleChoice(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "mIsSingleChoice"    # Ljava/lang/Boolean;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mIsSingleChoice:Ljava/lang/Boolean;

    .line 717
    return-void
.end method

.method public setStandardNutrients(Ljava/util/List;)V
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
    .line 588
    .local p1, "standardNutrients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrients:Ljava/util/List;

    .line 589
    return-void
.end method

.method public setStoreProduct(Lcom/mcdonalds/sdk/modules/models/StoreProduct;)V
    .locals 0
    .param p1, "storeProduct"    # Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStoreProduct:Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    .line 1128
    return-void
.end method

.method public setThumbnailImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V
    .locals 0
    .param p1, "thumbnailImage"    # Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 633
    return-void
.end method

.method public setTimeRestriction(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1093
    .local p1, "timeRestriction":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    .line 1094
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1095
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;

    .line 1096
    .local v1, "openingHourItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    iget-object v3, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->fromTime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->toTime:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestriction:Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    .line 1098
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;

    .line 1099
    .local v0, "item":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->fromTime:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->toTime:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1100
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    new-instance v4, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->fromTime:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->toTime:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1104
    .end local v0    # "item":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    .end local v1    # "openingHourItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    :cond_1
    return-void
.end method

.method public setValid(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "valid"    # Ljava/lang/Boolean;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mValid:Ljava/lang/Boolean;

    .line 693
    return-void
.end method

.method public shouldShow()Z
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDoNotShow:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDoNotShow:Ljava/lang/String;

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

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recipe{mId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mRecipeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExternalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExternalId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCategoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 925
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getCategoryId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMenuItemNumber=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuItemNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mFooters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mFooters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mNutrients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mNutrients:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHighlightedNutrients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrients:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStandardNutrients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrients:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServingSizeEnglish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mServingSizeEnglish:Lcom/mcdonalds/sdk/modules/models/Nutrient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServingSizeMetric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mServingSizeMetric:Lcom/mcdonalds/sdk/modules/models/Nutrient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThumbnailImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCarouselImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecipeComponents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDoNotShow=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDoNotShow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mValid:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCustomerFriendly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCustomerFriendly:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDimensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIngredients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mIngredients:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExtras:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChoices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mChoices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mComments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mComments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    return-object v0
.end method

.method public update(Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 7
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    .line 410
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mExternalId:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExternalId:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeId:Ljava/lang/Integer;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeId:Ljava/lang/Integer;

    .line 415
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mId:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mId:Ljava/lang/String;

    .line 416
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    .line 417
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mShortName:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mShortName:Ljava/lang/String;

    .line 418
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    .line 419
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypeID:Ljava/lang/Integer;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypeID:Ljava/lang/Integer;

    .line 420
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mProductType:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mProductType:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 421
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mImageUrl:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mImageUrl:Ljava/lang/String;

    .line 422
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 423
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 424
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponentsString:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponentsString:Ljava/lang/String;

    .line 425
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergensString:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergensString:Ljava/lang/String;

    .line 426
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mDescription:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDescription:Ljava/lang/String;

    .line 427
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mDoNotShow:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDoNotShow:Ljava/lang/String;

    .line 428
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mValid:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mValid:Ljava/lang/Boolean;

    .line 429
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mCustomerFriendly:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCustomerFriendly:Ljava/lang/Boolean;

    .line 430
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mIsSingleChoice:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mIsSingleChoice:Ljava/lang/Boolean;

    .line 431
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mHasChoice:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasChoice:Ljava/lang/Boolean;

    .line 432
    iget-boolean v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mHasOffers:Z

    iput-boolean v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasOffers:Z

    .line 433
    iget-boolean v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mAcceptsLight:Z

    iput-boolean v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAcceptsLight:Z

    .line 434
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mMaxQttyAllowedPerOrder:Ljava/lang/Integer;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMaxQttyAllowedPerOrder:Ljava/lang/Integer;

    .line 435
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestriction:Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestriction:Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    .line 437
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 438
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mName:Ljava/lang/String;

    .line 440
    :cond_2
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mShortName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mShortName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 441
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mShortName:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mShortName:Ljava/lang/String;

    .line 443
    :cond_3
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 444
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mLongName:Ljava/lang/String;

    .line 447
    :cond_4
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getMenuTypes()Ljava/util/List;

    move-result-object v4

    .line 448
    .local v4, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 449
    invoke-virtual {p0, v4}, Lcom/mcdonalds/sdk/modules/models/Product;->setMenuTypes(Ljava/util/List;)V

    .line 452
    :cond_5
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mPODs:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 453
    iget-object v5, p1, Lcom/mcdonalds/sdk/modules/models/Product;->mPODs:Ljava/util/List;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mPODs:Ljava/util/List;

    .line 456
    :cond_6
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getDimensions()Ljava/util/List;

    move-result-object v1

    .line 457
    .local v1, "dimensions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductDimension;>;"
    if-eqz v1, :cond_7

    .line 458
    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/Product;->setDimensions(Ljava/util/List;)V

    .line 461
    :cond_7
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v3

    .line 462
    .local v3, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz v3, :cond_8

    .line 463
    invoke-virtual {p0, v3}, Lcom/mcdonalds/sdk/modules/models/Product;->setIngredients(Ljava/util/List;)V

    .line 466
    :cond_8
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v2

    .line 467
    .local v2, "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz v2, :cond_9

    .line 468
    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/models/Product;->setExtras(Ljava/util/List;)V

    .line 471
    :cond_9
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v0

    .line 472
    .local v0, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->setChoices(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1213
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeId:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1215
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1216
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDisplayOrder:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1217
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuItemNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mFooters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1219
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getMarketingName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getLongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMenuTypeID:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1224
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getMenuTypes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1225
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mExtendedMenuTypeIDs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1226
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mNutrients:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1227
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrients:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1228
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHighlightedNutrientsSortedById:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1229
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrients:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1230
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStandardNutrientsSortedById:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1231
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mServingSizeEnglish:Lcom/mcdonalds/sdk/modules/models/Nutrient;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1232
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mServingSizeMetric:Lcom/mcdonalds/sdk/modules/models/Nutrient;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1233
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getEnergy()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1234
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mThumbnailImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1235
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCarouselImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1236
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1237
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeComponentsString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergens:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1239
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mRecipeAllergensString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDoNotShow:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mValid:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1243
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableWeekDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisableBaseProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCustomerFriendly:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1246
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->isSingleChoice()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1247
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->hasChoice()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1248
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->hasNonSingleChoiceChoice()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1249
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mProductType:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mNeedsFullDetails:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1252
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1253
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1254
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1255
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1256
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mComments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1257
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceEatIn()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1258
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceTakeOut()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1259
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPriceDelivery()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1260
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceEatIn()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1261
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceTakeOut()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1262
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePriceDelivery()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1263
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCategoryIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1264
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mCategories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1265
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHeroImage:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1266
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODObjects()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1267
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mHasOffers:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1268
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAcceptsLight:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1269
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestriction:Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1270
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mMaxQttyAllowedPerOrder:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1271
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mStoreProduct:Lcom/mcdonalds/sdk/modules/models/StoreProduct;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1272
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mAdvertisablePromotion:Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1273
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getAdvertisableProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1274
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getKCal()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1275
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mDisplayCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1276
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mTimeRestrictions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1277
    return-void

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product;->mProductType:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->ordinal()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1267
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1268
    goto :goto_2
.end method
