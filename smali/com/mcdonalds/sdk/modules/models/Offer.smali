.class public Lcom/mcdonalds/sdk/modules/models/Offer;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "Offer.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;,
        Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;,
        Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/modules/AppModel;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Offer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAndConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;",
            ">;"
        }
    .end annotation
.end field

.field private mArchived:Ljava/lang/Boolean;

.field private mCurrentPunch:Ljava/lang/Integer;

.field private mDuration:Ljava/lang/Integer;

.field private mExpirationChanged:Ljava/lang/Boolean;

.field private mExpired:Ljava/lang/Boolean;

.field private mIsDeliveryOffer:Z

.field private mIsNoPod:Z

.field private mIsPickupOffer:Z

.field private mLargeImagePath:Ljava/lang/String;

.field private mLocalValidFrom:Ljava/util/Date;

.field private mLocalValidThrough:Ljava/util/Date;

.field private mLongDescription:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mOfferId:Ljava/lang/Integer;

.field private mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field private mOrderDiscount:Ljava/lang/Double;

.field private mOrderDiscountType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

.field private mProductSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mRedeemed:Ljava/lang/Boolean;

.field private mRedeemedAt:Ljava/util/Date;

.field private mRestaurants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSaleAmountCondition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;",
            ">;"
        }
    .end annotation
.end field

.field private mSelected:Ljava/lang/Boolean;

.field private mShortDescription:Ljava/lang/String;

.field private mSmallImagePath:Ljava/lang/String;

.field private mSubtitle:Ljava/lang/String;

.field private mTotalPunch:Ljava/lang/Integer;

.field private offerProductsCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Offer$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 412
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 415
    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mArchived:Ljava/lang/Boolean;

    .line 416
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mCurrentPunch:Ljava/lang/Integer;

    .line 417
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mDuration:Ljava/lang/Integer;

    .line 418
    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mExpirationChanged:Ljava/lang/Boolean;

    .line 419
    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mExpired:Ljava/lang/Boolean;

    .line 420
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferId:Ljava/lang/Integer;

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 422
    .local v2, "tmpMLocalValidFrom":J
    const-wide/16 v10, -0x1

    cmp-long v7, v2, v10

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidFrom:Ljava/util/Date;

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 424
    .local v4, "tmpMLocalValidThrough":J
    const-wide/16 v10, -0x1

    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidThrough:Ljava/util/Date;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLongDescription:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mName:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSubtitle:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    .local v1, "tmpMOfferType":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 431
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mProductSets:Ljava/util/List;

    .line 432
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mProductSets:Ljava/util/List;

    const-class v10, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p1, v7, v10}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 434
    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRedeemed:Ljava/lang/Boolean;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 436
    .local v8, "tmpMRedeemedAt":J
    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    const/4 v7, 0x0

    :goto_3
    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRedeemedAt:Ljava/util/Date;

    .line 438
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRestaurants:Ljava/util/List;

    .line 439
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRestaurants:Ljava/util/List;

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p1, v7, v10}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 441
    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSelected:Ljava/lang/Boolean;

    .line 442
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mTotalPunch:Ljava/lang/Integer;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSmallImagePath:Ljava/lang/String;

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLargeImagePath:Ljava/lang/String;

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mShortDescription:Ljava/lang/String;

    .line 446
    const-class v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOrderDiscount:Ljava/lang/Double;

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 448
    .local v6, "tmpMOrderDiscountType":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    const/4 v7, 0x0

    :goto_4
    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOrderDiscountType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->offerProductsCodes:Ljava/util/List;

    .line 450
    const/4 v7, 0x3

    new-array v0, v7, [Z

    .line 451
    .local v0, "deliveryPickup":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 452
    const/4 v7, 0x0

    aget-boolean v7, v0, v7

    iput-boolean v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsDeliveryOffer:Z

    .line 453
    const/4 v7, 0x1

    aget-boolean v7, v0, v7

    iput-boolean v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsPickupOffer:Z

    .line 454
    const/4 v7, 0x2

    aget-boolean v7, v0, v7

    iput-boolean v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsNoPod:Z

    .line 455
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mAndConditions:Ljava/util/List;

    .line 456
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mAndConditions:Ljava/util/List;

    const-class v10, Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p1, v7, v10}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 457
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSaleAmountCondition:Ljava/util/List;

    .line 458
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSaleAmountCondition:Ljava/util/List;

    const-class v10, Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p1, v7, v10}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 459
    return-void

    .line 422
    .end local v0    # "deliveryPickup":[Z
    .end local v1    # "tmpMOfferType":I
    .end local v4    # "tmpMLocalValidThrough":J
    .end local v6    # "tmpMOrderDiscountType":I
    .end local v8    # "tmpMRedeemedAt":J
    :cond_0
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    .line 424
    .restart local v4    # "tmpMLocalValidThrough":J
    :cond_1
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_1

    .line 429
    .restart local v1    # "tmpMOfferType":I
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->values()[Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v7

    aget-object v7, v7, v1

    goto/16 :goto_2

    .line 436
    .restart local v8    # "tmpMRedeemedAt":J
    :cond_3
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_3

    .line 448
    .restart local v6    # "tmpMOrderDiscountType":I
    :cond_4
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->values()[Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    move-result-object v7

    aget-object v7, v7, v6

    goto :goto_4
.end method

.method private setUpOfferProductsCodes()V
    .locals 7

    .prologue
    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->offerProductsCodes:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mProductSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 60
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mProductSets:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v2

    .line 62
    .local v2, "offerProductOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "optSize":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 63
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->offerProductsCodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getProductCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "j":I
    .end local v2    # "offerProductOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    .end local v3    # "optSize":I
    :cond_1
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mcdonalds/sdk/modules/models/Offer;)I
    .locals 2
    .param p1, "another"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidFrom:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->compareTo(Lcom/mcdonalds/sdk/modules/models/Offer;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public getAndConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mAndConditions:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentPunch()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mCurrentPunch:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLargeImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLargeImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalValidFrom()Ljava/util/Date;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getLocalValidThrough()Ljava/util/Date;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidThrough:Ljava/util/Date;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLongDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    return-object v0
.end method

.method public getOrderDiscount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOrderDiscount:Ljava/lang/Double;

    return-object v0
.end method

.method public getOrderDiscountType()Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOrderDiscountType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    return-object v0
.end method

.method public getProductSets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mProductSets:Ljava/util/List;

    return-object v0
.end method

.method public getRedeemed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRedeemed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRedeemedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRedeemedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getRestaurants()Ljava/util/List;
    .locals 1
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
    .line 193
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRestaurants:Ljava/util/List;

    return-object v0
.end method

.method public getSaleAmountCondition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSaleAmountCondition:Ljava/util/List;

    return-object v0
.end method

.method public getSelected()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSelected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mShortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSmallImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPunch()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mTotalPunch:Ljava/lang/Integer;

    return-object v0
.end method

.method public isArchived()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mArchived:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isBuyNGetMOffer()Z
    .locals 6

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mProductSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    .line 295
    .local v0, "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OfferAction;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->isPromoItem()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const/4 v1, 0x1

    .line 301
    .end local v0    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeliveryOffer()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsDeliveryOffer:Z

    return v0
.end method

.method public isExpirationChanged()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mExpirationChanged:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isExpired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mExpired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isFullPunchCard()Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_RENEWABLE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mCurrentPunch:Ljava/lang/Integer;

    .line 306
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mTotalPunch:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    .line 306
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoPod()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsNoPod:Z

    return v0
.end method

.method public isPickupOffer()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsPickupOffer:Z

    return v0
.end method

.method public isPunchCard()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_RENEWABLE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mCurrentPunch:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mTotalPunch:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPunchCardType()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_RENEWABLE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public relatesToProductId(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->offerProductsCodes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/Offer;->setUpOfferProductsCodes()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->offerProductsCodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setAndConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "andConditions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer$AndCondition;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mAndConditions:Ljava/util/List;

    .line 311
    return-void
.end method

.method public setArchived(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "archived"    # Ljava/lang/Boolean;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mArchived:Ljava/lang/Boolean;

    .line 82
    return-void
.end method

.method public setCurrentPunch(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "currentPunch"    # Ljava/lang/Integer;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mCurrentPunch:Ljava/lang/Integer;

    .line 90
    return-void
.end method

.method public setDuration(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/Integer;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mDuration:Ljava/lang/Integer;

    .line 98
    return-void
.end method

.method public setExpirationChanged(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "expirationChanged"    # Ljava/lang/Boolean;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mExpirationChanged:Ljava/lang/Boolean;

    .line 106
    return-void
.end method

.method public setExpired(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "expired"    # Ljava/lang/Boolean;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mExpired:Ljava/lang/Boolean;

    .line 114
    return-void
.end method

.method public setIsDeliveryOffer(Z)V
    .locals 0
    .param p1, "isDeliveryOnly"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsDeliveryOffer:Z

    .line 242
    return-void
.end method

.method public setIsNoPod(Z)V
    .locals 0
    .param p1, "isNoPod"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsNoPod:Z

    .line 258
    return-void
.end method

.method public setIsPickUpOffer(Z)V
    .locals 0
    .param p1, "isPickupOnly"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsPickupOffer:Z

    .line 250
    return-void
.end method

.method public setLargeImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "largeImagePath"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLargeImagePath:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setLocalValidFrom(Ljava/util/Date;)V
    .locals 0
    .param p1, "localValidFrom"    # Ljava/util/Date;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidFrom:Ljava/util/Date;

    .line 130
    return-void
.end method

.method public setLocalValidThrough(Ljava/util/Date;)V
    .locals 0
    .param p1, "localValidThrough"    # Ljava/util/Date;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidThrough:Ljava/util/Date;

    .line 138
    return-void
.end method

.method public setLongDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "longDescription"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLongDescription:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setOfferId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "offerId"    # Ljava/lang/Integer;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferId:Ljava/lang/Integer;

    .line 122
    return-void
.end method

.method public setOfferType(Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;)V
    .locals 0
    .param p1, "offerType"    # Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 218
    return-void
.end method

.method public setOfferType(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "offerType"    # Ljava/lang/Integer;

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->values()[Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 162
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->values()[Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_UNKNOWN:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    goto :goto_0
.end method

.method public setOrderDiscount(Ljava/lang/Double;)V
    .locals 0
    .param p1, "orderDiscount"    # Ljava/lang/Double;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOrderDiscount:Ljava/lang/Double;

    .line 274
    return-void
.end method

.method public setOrderDiscountType(Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;)V
    .locals 0
    .param p1, "orderDiscountType"    # Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOrderDiscountType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    .line 282
    return-void
.end method

.method public setProductSets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "productSets":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProduct;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mProductSets:Ljava/util/List;

    .line 174
    return-void
.end method

.method public setRedeemed(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "redeemed"    # Ljava/lang/Boolean;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRedeemed:Ljava/lang/Boolean;

    .line 182
    return-void
.end method

.method public setRedeemedAt(Ljava/util/Date;)V
    .locals 0
    .param p1, "redeemedAt"    # Ljava/util/Date;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRedeemedAt:Ljava/util/Date;

    .line 190
    return-void
.end method

.method public setRestaurants(Ljava/util/List;)V
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
    .line 197
    .local p1, "restaurants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRestaurants:Ljava/util/List;

    .line 198
    return-void
.end method

.method public setSaleAmountCondition(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "saleAmountCondition":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer$SaleAmountCondition;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSaleAmountCondition:Ljava/util/List;

    .line 319
    return-void
.end method

.method public setSelected(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "selected"    # Ljava/lang/Boolean;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSelected:Ljava/lang/Boolean;

    .line 206
    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortDescription"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mShortDescription:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setSmallImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "smallImagePath"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSmallImagePath:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSubtitle"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSubtitle:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setTotalPunch(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "totalPunch"    # Ljava/lang/Integer;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mTotalPunch:Ljava/lang/Integer;

    .line 214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offer{mArchived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mArchived:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentPunch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mCurrentPunch:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mDuration:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpirationChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mExpirationChanged:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mExpired:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOfferId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalValidFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidFrom:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalValidThrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidThrough:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLongDescription=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLongDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mOfferType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProductSets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mProductSets:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRedeemed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRedeemed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRedeemedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRedeemedAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRestaurants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRestaurants:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSelected:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotalPunch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mTotalPunch:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSmallImagePath=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSmallImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, -0x1

    .line 376
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mArchived:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 377
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mCurrentPunch:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 378
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mDuration:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 379
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mExpirationChanged:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 380
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mExpired:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 381
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferId:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 382
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidFrom:Ljava/util/Date;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidFrom:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 383
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidThrough:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLocalValidThrough:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 384
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLongDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-nez v1, :cond_3

    move v1, v6

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mProductSets:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 389
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRedeemed:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 390
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRedeemedAt:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRedeemedAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :cond_0
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mRestaurants:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 392
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSelected:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 393
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mTotalPunch:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 394
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSmallImagePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mLargeImagePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mShortDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOrderDiscount:Ljava/lang/Double;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 398
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOrderDiscountType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->offerProductsCodes:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 401
    const/4 v1, 0x3

    new-array v0, v1, [Z

    .line 402
    .local v0, "deliveryPickup":[Z
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsDeliveryOffer:Z

    aput-boolean v2, v0, v1

    .line 403
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsPickupOffer:Z

    aput-boolean v2, v0, v1

    .line 404
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mIsNoPod:Z

    aput-boolean v2, v0, v1

    .line 406
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 407
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mAndConditions:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 408
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mSaleAmountCondition:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 409
    return-void

    .end local v0    # "deliveryPickup":[Z
    :cond_1
    move-wide v2, v4

    .line 382
    goto/16 :goto_0

    :cond_2
    move-wide v2, v4

    .line 383
    goto/16 :goto_1

    .line 387
    :cond_3
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOfferType:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->ordinal()I

    move-result v1

    goto :goto_2

    .line 398
    :cond_4
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Offer;->mOrderDiscountType:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->ordinal()I

    move-result v6

    goto :goto_3
.end method
