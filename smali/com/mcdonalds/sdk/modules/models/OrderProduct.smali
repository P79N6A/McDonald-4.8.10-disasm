.class public Lcom/mcdonalds/sdk/modules/models/OrderProduct;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OrderProduct.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRINK:Ljava/lang/Integer;

.field public static final DUMMY_PRODUCT_ID:Ljava/lang/String; = "0"

.field private static final USE_LONG_NAME:Ljava/lang/String; = "interface.ordering.useLongName"

.field private static final sPODNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field AllPods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient choiceComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Choice;",
            ">;"
        }
    .end annotation
.end field

.field private transient customerOrderProductComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mBasePriceReferenceProductCode:I

.field private mChoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Choice;",
            ">;"
        }
    .end annotation
.end field

.field private mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mCostInclusive:Z

.field private mCustomizations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayThumbnail:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

.field private mFavoriteId:I

.field private mFavoriteName:Ljava/lang/String;

.field private mHasTimeRestrictions:Z

.field private mIngredients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLight:Z

.field private mIsMeal:Z

.field private mOutOfStock:Z

.field private mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

.field private mProductCode:Ljava/lang/String;

.field private mPromoQuantity:I

.field private mQuantity:I

.field private mRecipeId:Ljava/lang/String;

.field private mTimeRestrictionsDoNotCoincide:Z

.field private mUnavailable:Z

.field private mUnavailableCurrentDayPart:Z

.field private transient orderProductComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private productView:Lcom/mcdonalds/sdk/modules/models/ProductView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->sPODNames:Ljava/util/HashMap;

    .line 36
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->sPODNames:Ljava/util/HashMap;

    const-string v1, "FrontCounter"

    sget v2, Lcom/mcdonalds/sdk/R$string;->label_front_counter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->sPODNames:Ljava/util/HashMap;

    const-string v1, "ColdKiosk"

    sget v2, Lcom/mcdonalds/sdk/R$string;->label_cold_kiosk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->sPODNames:Ljava/util/HashMap;

    const-string v1, "Drivethru"

    sget v2, Lcom/mcdonalds/sdk/R$string;->label_drive_thru:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->DRINK:Ljava/lang/Integer;

    .line 1297
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct$4;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$4;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIngredients:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mComments:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCustomizations:Ljava/util/Map;

    .line 71
    iput-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsMeal:Z

    .line 73
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Delivery"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Kiosk"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Pickup"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Drivethru"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FrontCounter"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WalkThru"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ColdKiosk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Handheld"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "McCafe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "McExpress"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->AllPods:Ljava/util/List;

    .line 1109
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$1;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->orderProductComparator:Ljava/util/Comparator;

    .line 1123
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->choiceComparator:Ljava/util/Comparator;

    .line 1139
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$3;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->customerOrderProductComparator:Ljava/util/Comparator;

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1263
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 54
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIngredients:Ljava/util/List;

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mComments:Ljava/util/List;

    .line 57
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCustomizations:Ljava/util/Map;

    .line 71
    iput-boolean v6, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsMeal:Z

    .line 73
    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    const-string v7, "Delivery"

    aput-object v7, v4, v6

    const-string v7, "Kiosk"

    aput-object v7, v4, v5

    const/4 v7, 0x2

    const-string v8, "Pickup"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "Drivethru"

    aput-object v8, v4, v7

    const/4 v7, 0x4

    const-string v8, "FrontCounter"

    aput-object v8, v4, v7

    const/4 v7, 0x5

    const-string v8, "WalkThru"

    aput-object v8, v4, v7

    const/4 v7, 0x6

    const-string v8, "ColdKiosk"

    aput-object v8, v4, v7

    const/4 v7, 0x7

    const-string v8, "Handheld"

    aput-object v8, v4, v7

    const/16 v7, 0x8

    const-string v8, "McCafe"

    aput-object v8, v4, v7

    const/16 v7, 0x9

    const-string v8, "McExpress"

    aput-object v8, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->AllPods:Ljava/util/List;

    .line 1109
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$1;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->orderProductComparator:Ljava/util/Comparator;

    .line 1123
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;

    invoke-direct {v4, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->choiceComparator:Ljava/util/Comparator;

    .line 1139
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct$3;

    invoke-direct {v4, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$3;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->customerOrderProductComparator:Ljava/util/Comparator;

    .line 1264
    const-class v4, Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/Product;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 1265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mRecipeId:Ljava/lang/String;

    .line 1266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProductCode:Ljava/lang/String;

    .line 1267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mFavoriteName:Ljava/lang/String;

    .line 1268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mDisplayName:Ljava/lang/String;

    .line 1269
    const-class v4, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mDisplayThumbnail:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 1270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mQuantity:I

    .line 1271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mFavoriteId:I

    .line 1272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mPromoQuantity:I

    .line 1273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mBasePriceReferenceProductCode:I

    .line 1274
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsLight:Z

    .line 1275
    sget-object v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIngredients:Ljava/util/List;

    .line 1276
    sget-object v4, Lcom/mcdonalds/sdk/modules/models/Choice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    .line 1277
    sget-object v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mComments:Ljava/util/List;

    .line 1280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1281
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1282
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1283
    .local v1, "key":Ljava/lang/Integer;
    const-class v4, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1284
    .local v3, "value":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCustomizations:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "size":I
    .end local v3    # "value":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    move v4, v6

    .line 1274
    goto :goto_0

    .line 1287
    .restart local v0    # "i":I
    .restart local v2    # "size":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mUnavailable:Z

    .line 1288
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mOutOfStock:Z

    .line 1289
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mHasTimeRestrictions:Z

    .line 1290
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mUnavailableCurrentDayPart:Z

    .line 1291
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_6
    iput-boolean v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mTimeRestrictionsDoNotCoincide:Z

    .line 1292
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_7
    iput-boolean v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCostInclusive:Z

    .line 1293
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_8

    :goto_8
    iput-boolean v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsMeal:Z

    .line 1294
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->AllPods:Ljava/util/List;

    .line 1295
    return-void

    :cond_2
    move v4, v6

    .line 1287
    goto :goto_2

    :cond_3
    move v4, v6

    .line 1288
    goto :goto_3

    :cond_4
    move v4, v6

    .line 1289
    goto :goto_4

    :cond_5
    move v4, v6

    .line 1290
    goto :goto_5

    :cond_6
    move v4, v6

    .line 1291
    goto :goto_6

    :cond_7
    move v4, v6

    .line 1292
    goto :goto_7

    :cond_8
    move v5, v6

    .line 1293
    goto :goto_8
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 4
    .param p1, "otherOrderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIngredients:Ljava/util/List;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mComments:Ljava/util/List;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCustomizations:Ljava/util/Map;

    .line 71
    iput-boolean v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsMeal:Z

    .line 73
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Delivery"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "Kiosk"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Pickup"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Drivethru"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "FrontCounter"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "WalkThru"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "ColdKiosk"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Handheld"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "McCafe"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "McExpress"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->AllPods:Ljava/util/List;

    .line 1109
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$1;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->orderProductComparator:Ljava/util/Comparator;

    .line 1123
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->choiceComparator:Ljava/util/Comparator;

    .line 1139
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct$3;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$3;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->customerOrderProductComparator:Ljava/util/Comparator;

    .line 85
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 86
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProductCode(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 88
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIsLight()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIsLight(Z)V

    .line 89
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isCostInclusive()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCostInclusive(Z)V

    .line 90
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getPromoQuantity()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setPromoQuantity(I)V

    .line 91
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIngredients(Ljava/util/List;)V

    .line 92
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setChoices(Ljava/util/List;)V

    .line 93
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getComments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setComments(Ljava/util/List;)V

    .line 94
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setRealChoices(Ljava/util/List;)V

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->keyAt(I)I

    move-result v2

    .line 99
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 97
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->append(ILjava/lang/Object;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 104
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getFavoriteId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setFavoriteId(Ljava/lang/Integer;)V

    .line 105
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getFavoriteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setFavoriteName(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsMeal:Z

    .line 107
    return-void
.end method

.method protected constructor <init>(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p2, "quantity"    # Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIngredients:Ljava/util/List;

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mComments:Ljava/util/List;

    .line 57
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCustomizations:Ljava/util/Map;

    .line 71
    iput-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsMeal:Z

    .line 73
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Delivery"

    aput-object v4, v3, v2

    const-string v4, "Kiosk"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v5, "Pickup"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "Drivethru"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "FrontCounter"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "WalkThru"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "ColdKiosk"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "Handheld"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "McCafe"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "McExpress"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->AllPods:Ljava/util/List;

    .line 1109
    new-instance v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$1;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->orderProductComparator:Ljava/util/Comparator;

    .line 1123
    new-instance v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$2;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->choiceComparator:Ljava/util/Comparator;

    .line 1139
    new-instance v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct$3;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->customerOrderProductComparator:Ljava/util/Comparator;

    .line 245
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getId()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "productId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 249
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Meal:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setMeal(Z)V

    .line 250
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProductCode(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 253
    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIsLight(Z)V

    .line 254
    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setPromoQuantity(I)V

    .line 255
    return-void

    .line 246
    .end local v0    # "productId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "productId":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 249
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->orderProductComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private addAllIngredientsToSerializableSparseArray(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Ingredient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p1, "ingredientSparseArray":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    .local p2, "ingredientList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-nez p2, :cond_1

    .line 503
    :cond_0
    return-void

    .line 500
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 501
    .local v0, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2, v0}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private areProductsSame(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 19
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1335
    .local v5, "productCode":I
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v5, :cond_0

    .line 1336
    const/16 v17, 0x0

    .line 1422
    :goto_0
    return v17

    .line 1339
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v17

    if-nez v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v17

    if-nez v17, :cond_3

    .line 1340
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    if-lez v17, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 1341
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 1342
    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 1345
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 1346
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1347
    .local v6, "productCustomization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1348
    .local v2, "customizationOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v2, :cond_6

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1349
    :cond_6
    const/16 v17, 0x0

    goto :goto_0

    .line 1355
    .end local v2    # "customizationOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v6    # "productCustomization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1356
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v17

    if-nez v17, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v17

    if-nez v17, :cond_a

    .line 1357
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 1358
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 1359
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1362
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_d

    .line 1363
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1364
    .local v10, "sortedThisMainProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->orderProductComparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1366
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1367
    .local v8, "sortedThatMainProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->orderProductComparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1369
    const/4 v4, 0x0

    .local v4, "jj":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_d

    .line 1370
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1371
    .local v16, "thisMainProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1373
    .local v13, "thatMainProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 1374
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1369
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1381
    .end local v4    # "jj":I
    .end local v8    # "sortedThatMainProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v10    # "sortedThisMainProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v13    # "thatMainProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v16    # "thisMainProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    if-nez v17, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    if-nez v17, :cond_10

    .line 1382
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_10

    .line 1383
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 1384
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1387
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_16

    .line 1388
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1389
    .local v9, "sortedThisChoice":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->choiceComparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1391
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1392
    .local v7, "sortedThatChoice":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->choiceComparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1394
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_16

    .line 1395
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 1396
    .local v14, "thisChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 1399
    .local v11, "thatChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Choice;->getBaseProductCode()I

    move-result v17

    if-nez v17, :cond_12

    .line 1400
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Choice;->getQuantity()I

    move-result v17

    if-nez v17, :cond_12

    .line 1401
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v17

    if-eqz v17, :cond_12

    .line 1402
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1404
    :cond_12
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Choice;->getBaseProductCode()I

    move-result v17

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Choice;->getBaseProductCode()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 1405
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1408
    :cond_13
    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v15

    .line 1409
    .local v15, "thisChoiceSelection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v12

    .line 1412
    .local v12, "thatChoiceSelection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-nez v15, :cond_14

    if-eqz v12, :cond_14

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v17

    if-eqz v17, :cond_14

    .line 1413
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1416
    :cond_14
    if-eqz v15, :cond_15

    .line 1417
    invoke-virtual {v15, v12}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_15

    .line 1418
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1394
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1422
    .end local v3    # "ii":I
    .end local v7    # "sortedThatChoice":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    .end local v9    # "sortedThisChoice":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    .end local v11    # "thatChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v12    # "thatChoiceSelection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v14    # "thisChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v15    # "thisChoiceSelection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_16
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method private static cloneProductChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 4
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v2, 0x0

    .line 145
    if-nez p0, :cond_0

    move-object v0, v2

    .line 158
    :goto_0
    return-object v0

    .line 148
    :cond_0
    instance-of v3, p0, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 149
    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 150
    .local v1, "oldChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Choice;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 151
    .local v0, "newChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->cloneProductChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 155
    goto :goto_0

    .line 158
    .end local v0    # "newChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v1    # "oldChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_2
    invoke-static {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->cloneProductForEditing(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    goto :goto_0
.end method

.method public static cloneProductForEditing(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 10
    .param p0, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v4

    .line 111
    .local v4, "newProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isCostInclusive()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCostInclusive(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIsLight()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIsLight(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getFavoriteId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setFavoriteId(Ljava/lang/Integer;)V

    .line 114
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getFavoriteName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setFavoriteName(Ljava/lang/String;)V

    .line 116
    if-nez v4, :cond_1

    .line 117
    const/4 v4, 0x0

    .line 141
    .end local v4    # "newProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-object v4

    .line 120
    .restart local v4    # "newProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v3, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 123
    .local v2, "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->cloneProductForEditing(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v2    # "ingredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setIngredients(Ljava/util/List;)V

    .line 128
    .end local v3    # "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 130
    .local v5, "oldChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->cloneProductChoices(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 131
    .local v0, "c":Lcom/mcdonalds/sdk/modules/models/Choice;
    if-eqz v0, :cond_4

    .line 132
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    .end local v0    # "c":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v5    # "oldChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_5
    invoke-virtual {v4, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setRealChoices(Ljava/util/List;)V

    .line 137
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 138
    .local v6, "oldCustomization":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-static {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->cloneProductForEditing(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addCustomization(Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_2
.end method

.method public static createProduct(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 2
    .param p0, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p1, "quantity"    # Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 260
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getCostInclusive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setCostInclusive(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getReferencePriceProductCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setBasePriceReferenceProductCode(I)V

    .line 263
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    .line 265
    :cond_0
    return-object v0
.end method

.method public static createProduct(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 7
    .param p0, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p1, "quantity"    # Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 220
    if-nez p0, :cond_1

    .line 221
    const-string v5, "OrderProduct"

    const-string v6, "product is null"

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    return-object v3

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 226
    const-string v5, "OrderProduct"

    const-string v6, "product.getId() is null"

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_2
    new-instance v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {v3, p0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;-><init>(Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/Integer;)V

    .line 232
    .local v3, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Product;->getComments()Ljava/util/List;

    move-result-object v1

    .line 233
    .local v1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz v1, :cond_0

    .line 234
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 235
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 236
    .local v0, "comment":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addComments(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getChoiceWithinChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 5
    .param p0, "choice"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p1, "choiceSolution"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v4, 0x0

    .line 199
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;-><init>()V

    .line 200
    .local v2, "zeroedOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProductCode(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setQuantity(I)V

    .line 203
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoiceWithinChoiceFiller()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    .line 204
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODObjects()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/Product;->setPODObjects(Ljava/util/List;)V

    .line 206
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V

    .line 208
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;-><init>(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 209
    .local v0, "choiceCopy":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 210
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v3

    invoke-virtual {v3, v4, p1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    .line 212
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v3

    invoke-virtual {v3, v4, p1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    .line 215
    return-object v2
.end method

.method public static getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 4
    .param p0, "subProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v1, 0x0

    .line 172
    if-nez p0, :cond_1

    move-object v0, v1

    .line 185
    :cond_0
    :goto_0
    return-object v0

    .line 176
    :cond_1
    move-object v0, p0

    .line 177
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :goto_1
    instance-of v2, v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v2, :cond_2

    .line 178
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .restart local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    goto :goto_1

    .line 181
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Product:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move-object v0, v1

    .line 185
    goto :goto_0
.end method

.method private getCustomizationText(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;
    .locals 13
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p2, "customization"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 523
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    .line 525
    .local v3, "product":Lcom/mcdonalds/sdk/modules/models/Product;
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 526
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v9

    if-nez v9, :cond_0

    .line 527
    sget v9, Lcom/mcdonalds/sdk/R$string;->customization_label_no:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 564
    :goto_0
    return-object v9

    .line 530
    :cond_0
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/Product;->getAcceptsLight()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 531
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMinQuantity()I

    move-result v9

    if-nez v9, :cond_1

    .line 532
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 533
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getMaxQuantity()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v0, 0x1

    .line 535
    .local v0, "isPortion":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 537
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIsLight()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 538
    sget v9, Lcom/mcdonalds/sdk/R$string;->customization_label_light:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 533
    .end local v0    # "isPortion":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 541
    .restart local v0    # "isPortion":Z
    :cond_2
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 549
    :cond_3
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductUnit()Ljava/lang/String;

    move-result-object v7

    .line 550
    .local v7, "unit":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 552
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const-string v6, "_singular"

    .line 553
    .local v6, "suffix":Ljava/lang/String;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "packageName":Ljava/lang/String;
    const-string v9, "string"

    invoke-virtual {v5, v1, v9, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 557
    .local v4, "resourceId":I
    if-eqz v4, :cond_5

    .line 558
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 559
    .local v8, "unitSuffix":Ljava/lang/String;
    sget v9, Lcom/mcdonalds/sdk/R$string;->customization_label_for_product_unit:I

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 560
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 559
    invoke-virtual {v5, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 543
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "resourceId":I
    .end local v6    # "suffix":Ljava/lang/String;
    .end local v7    # "unit":Ljava/lang/String;
    .end local v8    # "unitSuffix":Ljava/lang/String;
    :pswitch_0
    sget v9, Lcom/mcdonalds/sdk/R$string;->customization_label_regular:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 545
    :pswitch_1
    sget v9, Lcom/mcdonalds/sdk/R$string;->customization_label_extra:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 552
    .restart local v7    # "unit":Ljava/lang/String;
    :cond_4
    const-string v6, "_plural"

    goto :goto_2

    .line 564
    :cond_5
    sget v9, Lcom/mcdonalds/sdk/R$string;->customization_label_quantity:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 565
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 564
    invoke-virtual {v5, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPODDisplayName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .param p0, "pod"    # Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 1199
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->sPODNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->sPODNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1203
    .end local p0    # "pod":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private getSubProducts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 513
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public addChoice(Lcom/mcdonalds/sdk/modules/models/Choice;)V
    .locals 1
    .param p1, "choice"    # Lcom/mcdonalds/sdk/modules/models/Choice;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    return-void
.end method

.method public addChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 1
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 622
    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/models/Choice;->createChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/Choice;

    move-result-object v0

    .line 623
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addChoice(Lcom/mcdonalds/sdk/modules/models/Choice;)V

    .line 624
    return-void
.end method

.method public addComments(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 1
    .param p1, "comments"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    return-void
.end method

.method public addCustomization(Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 1
    .param p1, "productId"    # Ljava/lang/Integer;
    .param p2, "customization"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCustomizations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    return-void
.end method

.method public addIngredient(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 1
    .param p1, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIngredients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    return-void
.end method

.method public attachProductViewToOrderProduct(Lcom/mcdonalds/sdk/modules/models/ProductView;)V
    .locals 11
    .param p1, "productView"    # Lcom/mcdonalds/sdk/modules/models/ProductView;

    .prologue
    const/4 v10, 0x1

    .line 1156
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->productView:Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 1157
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getQuantity()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mQuantity:I

    .line 1158
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 1159
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1160
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1161
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 1162
    .local v1, "choiceProductView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    invoke-virtual {v8, v1, v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Lcom/mcdonalds/sdk/modules/models/ProductView;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1163
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->attachProductViewToOrderProduct(Lcom/mcdonalds/sdk/modules/models/ProductView;)V

    goto :goto_0

    .line 1164
    :cond_2
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_1

    .line 1165
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v9

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Lcom/mcdonalds/sdk/modules/models/ProductView;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1166
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v8

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->attachProductViewToOrderProduct(Lcom/mcdonalds/sdk/modules/models/ProductView;)V

    goto :goto_0

    .line 1174
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v1    # "choiceProductView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v4

    .line 1175
    .local v4, "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    if-eqz v4, :cond_6

    .line 1176
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1177
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1178
    .local v2, "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1179
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 1180
    .local v3, "customizationProductView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v2, v3, v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Lcom/mcdonalds/sdk/modules/models/ProductView;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1181
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->attachProductViewToOrderProduct(Lcom/mcdonalds/sdk/modules/models/ProductView;)V

    goto :goto_1

    .line 1188
    .end local v2    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "customizationProductView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_6
    return-void
.end method

.method public availableAtPOD(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pod"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 576
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getPODs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 578
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getSubProducts()Ljava/util/List;

    move-result-object v1

    .line 579
    .local v1, "subproducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 580
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 581
    .local v0, "sub":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->availableAtPOD(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 590
    .end local v0    # "sub":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "subproducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_1
    :goto_0
    return v2

    .line 587
    .restart local v1    # "subproducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkDayPart(I)Z
    .locals 5
    .param p1, "dayPart"    # I

    .prologue
    const/4 v2, 0x1

    .line 595
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    if-nez v3, :cond_0

    .line 609
    :goto_0
    return v2

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getMenuTypes()Ljava/util/List;

    move-result-object v1

    .line 601
    .local v1, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    invoke-static {v1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 602
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/MenuType;

    .line 603
    .local v0, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v4

    if-ne v4, p1, :cond_1

    goto :goto_0

    .line 609
    .end local v0    # "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1225
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/mcdonalds/sdk/modules/models/ProductView;Z)Z
    .locals 15
    .param p1, "productView"    # Lcom/mcdonalds/sdk/modules/models/ProductView;
    .param p2, "checkChoicesAndCustomizations"    # Z

    .prologue
    .line 1057
    if-nez p1, :cond_1

    .line 1058
    const/4 v4, 0x0

    .line 1094
    :cond_0
    :goto_0
    return v4

    .line 1061
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1062
    .local v6, "productCode":I
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v6, :cond_2

    const/4 v4, 0x1

    .line 1063
    .local v4, "equals":Z
    :goto_1
    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 1064
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_3

    const/4 v0, 0x0

    .line 1065
    .local v0, "choiceSize":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v9

    .line 1066
    .local v9, "productViewChoices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    if-nez v9, :cond_4

    const/4 v8, 0x0

    .line 1067
    .local v8, "productViewChoiceSize":I
    :goto_3
    if-eq v0, v8, :cond_5

    .line 1068
    const/4 v4, 0x0

    goto :goto_0

    .line 1062
    .end local v0    # "choiceSize":I
    .end local v4    # "equals":Z
    .end local v8    # "productViewChoiceSize":I
    .end local v9    # "productViewChoices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1064
    .restart local v4    # "equals":Z
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_2

    .line 1066
    .restart local v0    # "choiceSize":I
    .restart local v9    # "productViewChoices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_3

    .line 1070
    .restart local v8    # "productViewChoiceSize":I
    :cond_5
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v8, :cond_7

    .line 1071
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v7

    .line 1072
    .local v7, "productViewChoice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/Choice;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 1073
    .local v1, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v1, :cond_6

    const/4 v13, 0x1

    invoke-virtual {v1, v7, v13}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Lcom/mcdonalds/sdk/modules/models/ProductView;Z)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1074
    const/4 v4, 0x0

    goto :goto_0

    .line 1070
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1078
    .end local v1    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v7    # "productViewChoice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_7
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v3

    .line 1079
    .local v3, "customizationSize":I
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getCustomizations()Ljava/util/ArrayList;

    move-result-object v12

    .line 1080
    .local v12, "productViewCustomizations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    if-nez v12, :cond_8

    const/4 v11, 0x0

    .line 1081
    .local v11, "productViewCustomizationSize":I
    :goto_5
    if-eq v3, v11, :cond_9

    .line 1082
    const/4 v4, 0x0

    goto :goto_0

    .line 1080
    .end local v11    # "productViewCustomizationSize":I
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_5

    .line 1084
    .restart local v11    # "productViewCustomizationSize":I
    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v11, :cond_0

    .line 1085
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 1086
    .local v10, "productViewCustomization":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1087
    .local v2, "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v2, :cond_a

    const/4 v13, 0x0

    invoke-virtual {v2, v10, v13}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Lcom/mcdonalds/sdk/modules/models/ProductView;Z)Z

    move-result v13

    if-nez v13, :cond_b

    .line 1088
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1084
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 22
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 930
    if-nez p1, :cond_0

    const/16 v19, 0x0

    .line 1053
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v19

    .line 932
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_1

    .line 933
    const/16 v19, 0x1

    goto :goto_0

    .line 934
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v8, p1

    .line 935
    check-cast v8, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 936
    .local v8, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->areProductsSame(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v19

    goto :goto_0

    .line 937
    .end local v8    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mcdonalds/sdk/modules/models/ProductView;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 938
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .end local p1    # "o":Ljava/lang/Object;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Lcom/mcdonalds/sdk/modules/models/ProductView;Z)Z

    move-result v19

    goto :goto_0

    .line 939
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move/from16 v19, v0

    if-eqz v19, :cond_20

    move-object/from16 v3, p1

    .line 940
    check-cast v3, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 943
    .local v3, "custProd":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-nez v19, :cond_4

    .line 944
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-nez v19, :cond_4

    .line 945
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 946
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v19

    goto :goto_0

    .line 950
    :cond_4
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getBaseProductCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 951
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 955
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v19

    if-nez v19, :cond_6

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getCustomizations()Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_8

    .line 956
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v19

    if-eqz v19, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_7

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getCustomizations()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_8

    .line 957
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v19

    if-eqz v19, :cond_9

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getCustomizations()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v19

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getCustomizations()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 958
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 960
    :cond_9
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getCustomizations()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 961
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getCustomizations()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 962
    .local v4, "custProdCustomization":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v20

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 964
    .local v5, "customizationOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v5, :cond_b

    invoke-virtual {v5, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 965
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 971
    .end local v4    # "custProdCustomization":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v5    # "customizationOrderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_d

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getComponents()Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_f

    .line 973
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_e

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getComponents()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_f

    .line 974
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getComponents()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    .line 975
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 977
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_12

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getComponents()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_12

    .line 978
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 979
    .local v12, "sortedThisMainProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->orderProductComparator:Ljava/util/Comparator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 981
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getComponents()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 982
    .local v10, "sortedThatMainProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->customerOrderProductComparator:Ljava/util/Comparator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 984
    const/4 v7, 0x0

    .local v7, "jj":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_12

    .line 985
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 986
    .local v18, "thisMainProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 988
    .local v15, "thatMainProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    .line 989
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 984
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 996
    .end local v7    # "jj":I
    .end local v10    # "sortedThatMainProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    .end local v12    # "sortedThisMainProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    .end local v15    # "thatMainProduct":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v18    # "thisMainProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_13

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_15

    .line 997
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_14

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_15

    .line 998
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_16

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_16

    .line 999
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1001
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_1b

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_1b

    .line 1002
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1003
    .local v11, "sortedThisChoice":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->choiceComparator:Ljava/util/Comparator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1005
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoices()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1006
    .local v9, "sortedThatChoice":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->customerOrderProductComparator:Ljava/util/Comparator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1008
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_1b

    .line 1009
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 1010
    .local v16, "thisChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 1013
    .local v13, "thatChoice":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-nez v19, :cond_17

    .line 1014
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-nez v19, :cond_17

    .line 1015
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v19

    if-eqz v19, :cond_17

    .line 1016
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1018
    :cond_17
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/Choice;->getBaseProductCode()I

    move-result v19

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    .line 1019
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1022
    :cond_18
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v17

    .line 1023
    .local v17, "thisChoiceSelection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v14

    .line 1026
    .local v14, "thatChoiceSelection":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    if-nez v17, :cond_19

    if-eqz v14, :cond_19

    invoke-virtual {v14}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getProductCode()Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-eqz v19, :cond_19

    .line 1027
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1030
    :cond_19
    if-eqz v17, :cond_1a

    .line 1031
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    .line 1032
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1008
    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1038
    .end local v6    # "ii":I
    .end local v9    # "sortedThatChoice":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    .end local v11    # "sortedThisChoice":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    .end local v13    # "thatChoice":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v14    # "thatChoiceSelection":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .end local v16    # "thisChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v17    # "thisChoiceSelection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1b
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    move/from16 v19, v0

    if-eqz v19, :cond_1f

    move-object/from16 v16, p0

    .line 1039
    check-cast v16, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 1041
    .restart local v16    # "thisChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v19

    if-nez v19, :cond_1c

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v19

    if-nez v19, :cond_1d

    .line 1042
    :cond_1c
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v19

    if-eqz v19, :cond_1e

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v19

    if-nez v19, :cond_1e

    .line 1043
    :cond_1d
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1046
    :cond_1e
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v19

    if-eqz v19, :cond_1f

    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v19

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1f

    .line 1047
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1051
    .end local v16    # "thisChoice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_1f
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1053
    .end local v3    # "custProd":Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    :cond_20
    invoke-super/range {p0 .. p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    goto/16 :goto_0
.end method

.method public getActualChoice()Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .locals 2

    .prologue
    .line 1098
    instance-of v1, p0, Lcom/mcdonalds/sdk/modules/models/Choice;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 1099
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 1100
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1101
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object p0

    .line 1106
    .end local p0    # "this":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    :goto_0
    return-object p0

    .line 1103
    .restart local p0    # "this":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getBasePrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D
    .locals 2
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getBasePrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getBasePriceReferenceProductCode()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mBasePriceReferenceProductCode:I

    return v0
.end method

.method public getBaseProductCode()I
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->isAdvertisable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getAdvertisableBaseProductId()I

    move-result v0

    .line 772
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 866
    new-instance v3, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    .line 867
    .local v3, "compatChoiceSolutions":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v2

    .line 868
    .local v2, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 869
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 870
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getSelection()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 871
    .local v1, "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v1, :cond_0

    .line 872
    invoke-virtual {v3, v4, v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    .line 868
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 875
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v1    # "choiceSolution":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    return-object v3
.end method

.method public getChoices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v0, "compatChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 857
    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mComments:Ljava/util/List;

    return-object v0
.end method

.method public getCustomizationPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D
    .locals 8
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "ingredient"    # Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .param p3, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .prologue
    .line 272
    const-wide/16 v2, 0x0

    .line 276
    .local v2, "total":D
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 277
    const-wide/16 v0, 0x0

    .line 279
    .local v0, "difference":D
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v4

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getChargeThreshold()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 280
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v4

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getChargeThreshold()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v0, v4

    .line 285
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v4

    mul-double v2, v0, v4

    .line 288
    .end local v0    # "difference":D
    :cond_1
    return-wide v2

    .line 281
    .restart local v0    # "difference":D
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v4

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getRefundThreshold()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v4

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getRefundThreshold()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v0, v4

    goto :goto_0
.end method

.method public getCustomizations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 879
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCustomizations:Ljava/util/Map;

    return-object v0
.end method

.method public getCustomizationsString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 467
    new-instance v3, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    .line 469
    .local v3, "ingredientSparseArray":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addAllIngredientsToSerializableSparseArray(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Ljava/util/List;)V

    .line 470
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addAllIngredientsToSerializableSparseArray(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Ljava/util/List;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 475
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 476
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 477
    .local v1, "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 479
    .local v2, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    if-eqz v2, :cond_1

    .line 480
    invoke-direct {p0, v2, v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizationText(Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 484
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 488
    .end local v1    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 491
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "ingredientSparseArray":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :goto_1
    return-object v5

    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mDisplayThumbnail:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    return-object v0
.end method

.method public getFavoriteId()I
    .locals 1

    .prologue
    .line 911
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mFavoriteId:I

    return v0
.end method

.method public getFavoriteName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mFavoriteName:Ljava/lang/String;

    return-object v0
.end method

.method public getIngredients()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIngredients:Ljava/util/List;

    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 804
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v4

    .line 805
    .local v4, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz v4, :cond_0

    .line 806
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 807
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 808
    .local v3, "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addIngredient(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 806
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 811
    .end local v2    # "i":I
    .end local v3    # "ingredient":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v5    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v1

    .line 812
    .local v1, "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz v1, :cond_1

    .line 813
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .restart local v5    # "size":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 814
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 815
    .local v0, "extra":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addIngredient(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 813
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 819
    .end local v0    # "extra":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v1    # "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    .end local v2    # "i":I
    .end local v4    # "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    .end local v5    # "size":I
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIngredients:Ljava/util/List;

    return-object v6
.end method

.method public getIsLight()Z
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsLight:Z

    return v0
.end method

.method public getProduct()Lcom/mcdonalds/sdk/modules/models/Product;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    return-object v0
.end method

.method public getProductCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "baseProductCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProductCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProductCode:Ljava/lang/String;

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProductCode:Ljava/lang/String;

    return-object v1
.end method

.method public getPromoQuantity()I
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mPromoQuantity:I

    return v0
.end method

.method public getQuantity()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 781
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceSolutions()Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v0

    .line 783
    .local v0, "choiceSolutions":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 784
    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v1

    .line 787
    .end local v0    # "choiceSolutions":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mQuantity:I

    goto :goto_0
.end method

.method public getRealChoices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Choice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 841
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v1

    .line 842
    .local v1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz v1, :cond_1

    .line 843
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 844
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Ingredient;->getDefaultQuantity()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 845
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mcdonalds/sdk/modules/models/Choice;->createChoice(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/Choice;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addChoice(Lcom/mcdonalds/sdk/modules/models/Choice;)V

    .line 844
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 850
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v1    # "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    return-object v3
.end method

.method public getRealIngredients()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v4, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 826
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v2

    .line 827
    .local v2, "extras":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    if-eqz v2, :cond_0

    .line 828
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 829
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 830
    .local v0, "extra":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    iget v6, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mQuantity:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->createProduct(Lcom/mcdonalds/sdk/modules/models/Ingredient;Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 833
    .local v1, "extraOrderProductToBeRemovedFromIngredientList":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 836
    .end local v0    # "extra":Lcom/mcdonalds/sdk/modules/models/Ingredient;
    .end local v1    # "extraOrderProductToBeRemovedFromIngredientList":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v3    # "i":I
    .end local v5    # "size":I
    :cond_0
    return-object v4
.end method

.method public getRecipeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mRecipeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCustomizationsPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)Ljava/lang/Double;
    .locals 8
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .param p2, "allowDownCharge"    # Z

    .prologue
    .line 1311
    const-wide/16 v2, 0x0

    .line 1313
    .local v2, "ret":D
    new-instance v1, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    .line 1315
    .local v1, "ingredientSparseArray":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1317
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addAllIngredientsToSerializableSparseArray(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Ljava/util/List;)V

    .line 1318
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addAllIngredientsToSerializableSparseArray(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Ljava/util/List;)V

    .line 1322
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1323
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 1325
    .local v0, "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 1324
    invoke-virtual {v0, v0, v4, p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizationPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 1327
    goto :goto_0

    .line 1330
    .end local v0    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    return-object v4
.end method

.method public getTotalEnergy()D
    .locals 10

    .prologue
    .line 389
    const-wide/16 v4, 0x0

    .line 392
    .local v4, "ret":D
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 394
    .local v2, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalEnergy()D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 395
    goto :goto_0

    .line 398
    .end local v2    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v3

    .line 399
    .local v3, "realChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    if-eqz v3, :cond_2

    .line 400
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 401
    .local v1, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 402
    .local v0, "actualProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalEnergy()D

    move-result-wide v8

    add-double/2addr v4, v8

    goto :goto_1

    .line 409
    .end local v0    # "actualProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getEnergy()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v6

    if-nez v6, :cond_3

    .line 410
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getEnergy()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 413
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    return-wide v6
.end method

.method public getTotalEnergyUnit()Ljava/lang/String;
    .locals 4

    .prologue
    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "unit":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getEnergyNutrient()Lcom/mcdonalds/sdk/modules/models/Nutrient;

    move-result-object v0

    .line 451
    .local v0, "energyNutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v1

    .line 462
    .end local v0    # "energyNutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    :cond_0
    :goto_0
    return-object v1

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getEnergyNutrient()Lcom/mcdonalds/sdk/modules/models/Nutrient;

    move-result-object v0

    .line 457
    .restart local v0    # "energyNutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D
    .locals 2
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D
    .locals 18
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .param p2, "allowDownCharge"    # Z

    .prologue
    .line 301
    const-wide/16 v8, 0x0

    .line 303
    .local v8, "ret":D
    new-instance v6, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v6}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    .line 305
    .local v6, "ingredientSparseArray":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/Ingredient;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isCostInclusive()Z

    move-result v10

    if-nez v10, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->productView:Lcom/mcdonalds/sdk/modules/models/ProductView;

    if-eqz v10, :cond_1

    .line 307
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->productView:Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getUnitPrice()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    add-double/2addr v8, v10

    .line 312
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addAllIngredientsToSerializableSparseArray(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Ljava/util/List;)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addAllIngredientsToSerializableSparseArray(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Ljava/util/List;)V

    .line 317
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 319
    .local v3, "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v10, v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->productView:Lcom/mcdonalds/sdk/modules/models/ProductView;

    if-eqz v10, :cond_2

    .line 320
    iget-object v10, v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->productView:Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getUnitPrice()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v10

    int-to-double v14, v10

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    goto :goto_1

    .line 309
    .end local v3    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v10

    add-double/2addr v8, v10

    goto :goto_0

    .line 323
    .restart local v3    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 322
    move-object/from16 v0, p1

    invoke-virtual {v3, v3, v10, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizationPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v12

    add-double/2addr v8, v12

    goto :goto_1

    .line 330
    .end local v3    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealIngredients()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 333
    .local v7, "productIngredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 334
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->clear()V

    .line 335
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Product;->getIngredients()Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addAllIngredientsToSerializableSparseArray(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Ljava/util/List;)V

    .line 336
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtras()Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addAllIngredientsToSerializableSparseArray(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Ljava/util/List;)V

    .line 337
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizations()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 338
    .restart local v3    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 339
    iget-object v10, v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->productView:Lcom/mcdonalds/sdk/modules/models/ProductView;

    if-eqz v10, :cond_6

    .line 340
    iget-object v10, v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->productView:Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getUnitPrice()Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v10

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v8, v14

    goto :goto_2

    .line 343
    :cond_6
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/modules/models/Ingredient;

    .line 342
    move-object/from16 v0, p1

    invoke-virtual {v3, v3, v10, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getCustomizationPrice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/Ingredient;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v14

    add-double/2addr v8, v14

    goto :goto_2

    .line 353
    .end local v3    # "customization":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v7    # "productIngredient":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    invoke-static {v10}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 354
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 355
    .local v2, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    if-eqz v2, :cond_8

    .line 362
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v11}, Lcom/mcdonalds/sdk/modules/models/Choice;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v4

    .line 363
    .local v4, "choicePrice":D
    if-nez p2, :cond_9

    .line 364
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getBasePrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v12

    cmpl-double v11, v12, v4

    if-lez v11, :cond_9

    .line 365
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/Choice;->getBasePrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v4

    .line 368
    :cond_9
    add-double/2addr v8, v4

    .line 369
    goto :goto_3

    .line 372
    .end local v2    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    .end local v4    # "choicePrice":D
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v8

    return-wide v10
.end method

.method public getTotalSecondaryEnergy()D
    .locals 10

    .prologue
    .line 417
    const-wide/16 v4, 0x0

    .line 420
    .local v4, "ret":D
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getIngredients()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 422
    .local v2, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalSecondaryEnergy()D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 423
    goto :goto_0

    .line 426
    .end local v2    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v3

    .line 427
    .local v3, "realChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    if-eqz v3, :cond_2

    .line 428
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    .line 429
    .local v1, "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getChoiceWithinChoiceProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 430
    .local v0, "actualProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalSecondaryEnergy()D

    move-result-wide v8

    add-double/2addr v4, v8

    goto :goto_1

    .line 437
    .end local v0    # "actualProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "choice":Lcom/mcdonalds/sdk/modules/models/Choice;
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getEnergy()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isMeal()Z

    move-result v6

    if-nez v6, :cond_3

    .line 438
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getKCal()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 441
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    return-wide v6
.end method

.method public hasSubChoices()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getChoices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeRestrictions()Z
    .locals 1

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mHasTimeRestrictions:Z

    return v0
.end method

.method public isChoice()Z
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 377
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->getProductType()Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Choice:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 376
    :goto_0
    return v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCostInclusive()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCostInclusive:Z

    return v0
.end method

.method public isMeal()Z
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsMeal:Z

    return v0
.end method

.method public isOutOfStock()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mOutOfStock:Z

    return v0
.end method

.method public isSingleChoice()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product;->isSingleChoice()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUnavailable()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mUnavailable:Z

    return v0
.end method

.method public isUnavailableCurrentDayPart()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mUnavailableCurrentDayPart:Z

    return v0
.end method

.method public setBasePriceReferenceProductCode(I)V
    .locals 0
    .param p1, "basePriceReferenceProductCode"    # I

    .prologue
    .line 907
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mBasePriceReferenceProductCode:I

    .line 908
    return-void
.end method

.method public setChoiceSolution(ILcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "choiceSolution"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getRealChoices()Ljava/util/List;

    move-result-object v0

    .line 642
    .local v0, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 643
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Choice;

    invoke-virtual {v1, p2}, Lcom/mcdonalds/sdk/modules/models/Choice;->setSelection(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 645
    :cond_0
    return-void
.end method

.method public setChoiceSolutions(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 632
    .local p1, "choiceSolutions":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 633
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->keyAt(I)I

    move-result v1

    .line 634
    .local v1, "key":I
    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 635
    .local v2, "selection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setChoiceSolution(ILcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    .end local v1    # "key":I
    .end local v2    # "selection":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-void
.end method

.method public setChoices(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 657
    .local p1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    .line 658
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 659
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->addChoice(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    .line 661
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-void
.end method

.method public setComments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mComments:Ljava/util/List;

    .line 669
    return-void
.end method

.method public setCostInclusive(Z)V
    .locals 0
    .param p1, "mCostInclusive"    # Z

    .prologue
    .line 733
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCostInclusive:Z

    .line 734
    return-void
.end method

.method public setCustomizations(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p1, "customizations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCustomizations:Ljava/util/Map;

    .line 884
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDisplayName"    # Ljava/lang/String;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mDisplayName:Ljava/lang/String;

    .line 758
    return-void
.end method

.method public setDisplayThumbnailImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V
    .locals 0
    .param p1, "thumbnailImage"    # Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mDisplayThumbnail:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    .line 750
    return-void
.end method

.method public setFavoriteId(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "favoriteId"    # Ljava/lang/Integer;

    .prologue
    .line 915
    if-eqz p1, :cond_0

    .line 916
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mFavoriteId:I

    .line 918
    :cond_0
    return-void
.end method

.method public setFavoriteName(Ljava/lang/String;)V
    .locals 0
    .param p1, "favoriteName"    # Ljava/lang/String;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mFavoriteName:Ljava/lang/String;

    .line 926
    return-void
.end method

.method public setHasTimeRestrictions(Z)V
    .locals 0
    .param p1, "mHasTimeRestrictions"    # Z

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mHasTimeRestrictions:Z

    .line 718
    return-void
.end method

.method public setIngredients(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIngredients:Ljava/util/List;

    .line 653
    return-void
.end method

.method public setIsLight(Z)V
    .locals 0
    .param p1, "isLight"    # Z

    .prologue
    .line 891
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsLight:Z

    .line 892
    return-void
.end method

.method public setMeal(Z)V
    .locals 0
    .param p1, "isMeal"    # Z

    .prologue
    .line 799
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsMeal:Z

    .line 800
    return-void
.end method

.method public setOutOfStock(Z)V
    .locals 0
    .param p1, "mOutOfStock"    # Z

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mOutOfStock:Z

    .line 714
    return-void
.end method

.method public setProduct(Lcom/mcdonalds/sdk/modules/models/Product;)V
    .locals 1
    .param p1, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    .line 680
    if-eqz p1, :cond_0

    .line 681
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setRecipeId(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setDisplayName(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Product;->getThumbnailImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->setDisplayThumbnailImage(Lcom/mcdonalds/sdk/modules/models/ImageInfo;)V

    .line 685
    :cond_0
    return-void
.end method

.method public setProductCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "productCode"    # Ljava/lang/String;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProductCode:Ljava/lang/String;

    .line 778
    return-void
.end method

.method public setPromoQuantity(I)V
    .locals 0
    .param p1, "promoQuantity"    # I

    .prologue
    .line 899
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mPromoQuantity:I

    .line 900
    return-void
.end method

.method public setQuantity(I)V
    .locals 0
    .param p1, "quantity"    # I

    .prologue
    .line 791
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mQuantity:I

    .line 792
    return-void
.end method

.method public setRealChoices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Choice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, "mChoices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Choice;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    .line 665
    return-void
.end method

.method public setRecipeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRecipeId"    # Ljava/lang/String;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mRecipeId:Ljava/lang/String;

    .line 742
    return-void
.end method

.method public setTimeRestrictionsDoNotCoincide(Z)V
    .locals 0
    .param p1, "mTimeRestrictionsDoNotCoincide"    # Z

    .prologue
    .line 725
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mTimeRestrictionsDoNotCoincide:Z

    .line 726
    return-void
.end method

.method public setUnavailable(Z)V
    .locals 0
    .param p1, "mUnavailable"    # Z

    .prologue
    .line 708
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mUnavailable:Z

    .line 709
    return-void
.end method

.method public setUnavailableCurrentDayPart(Z)V
    .locals 0
    .param p1, "mUnavailableCurrentDayPart"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mUnavailableCurrentDayPart:Z

    .line 722
    return-void
.end method

.method public timeRestrictionsDoNotCoincide()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mTimeRestrictionsDoNotCoincide:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrderProduct{mRecipe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProductCode=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1210
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mQuantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsLight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPromoQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mPromoQuantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIngredients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIngredients:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChoices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mComments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mComments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCustomizations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCustomizations:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsMeal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsMeal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1208
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1230
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mProduct:Lcom/mcdonalds/sdk/modules/models/Product;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1231
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mRecipeId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1233
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mFavoriteName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1234
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1235
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mDisplayThumbnail:Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1236
    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mQuantity:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mFavoriteId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mPromoQuantity:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mBasePriceReferenceProductCode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsLight:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1241
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIngredients:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1242
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mChoices:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1243
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mComments:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1246
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCustomizations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCustomizations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1248
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1249
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1250
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_0
    move v2, v4

    .line 1240
    goto :goto_0

    .line 1253
    .restart local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;>;"
    :cond_1
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mUnavailable:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1254
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mOutOfStock:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1255
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mHasTimeRestrictions:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_4
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1256
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mUnavailableCurrentDayPart:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_5
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1257
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mTimeRestrictionsDoNotCoincide:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_6
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1258
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mCostInclusive:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_7
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1259
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->mIsMeal:Z

    if-eqz v2, :cond_8

    :goto_8
    int-to-byte v2, v3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1260
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->AllPods:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1261
    return-void

    :cond_2
    move v2, v4

    .line 1253
    goto :goto_2

    :cond_3
    move v2, v4

    .line 1254
    goto :goto_3

    :cond_4
    move v2, v4

    .line 1255
    goto :goto_4

    :cond_5
    move v2, v4

    .line 1256
    goto :goto_5

    :cond_6
    move v2, v4

    .line 1257
    goto :goto_6

    :cond_7
    move v2, v4

    .line 1258
    goto :goto_7

    :cond_8
    move v3, v4

    .line 1259
    goto :goto_8
.end method
