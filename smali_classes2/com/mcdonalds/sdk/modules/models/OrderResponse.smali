.class public Lcom/mcdonalds/sdk/modules/models/OrderResponse;
.super Ljava/lang/Object;
.source "OrderResponse.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ORDER_VALIDATION_CODE:I = 0x1

.field public static final OFFERS_ERROR:I = -0x1f41

.field public static final OFFERS_ERROR_DELIVERY_ONLY:I = -0x1f42

.field public static final OFFERS_ERROR_PICKUP_ONLY:I = -0x1f43

.field public static final ORDER_CAN_NOT_BE_PLACED:I = -0x178a

.field public static final ORDER_IS_NOT_READY_CODE:I = 0x7da

.field public static final ORDER_IS_NOT_READY_TO_ACCEPT_CODE:I = 0x2f

.field public static final ORDER_NO_PAYMENT_REGISTERED:I = -0x17a9

.field public static final ORDER_WITH_DIFFERENT_DAYPART_PRODUCTS_NOT_PERMITTED_CODE:I = -0x433

.field public static final PRODUCT_ITEM_TIME_RESTRICTION_NOT_COINCIDE_CODE:I = -0x43c

.field public static final PRODUCT_OUT_OF_STOCK_CODE:I = -0x40c

.field public static final PRODUCT_PRICE_CHANGED:I = -0x178b

.field public static final PRODUCT_SELECT_ANOTHER_PAYMENT_METHOD:I = -0x17a8

.field public static final PRODUCT_TIME_RESTRICTION_CODE:I = -0x438

.field public static final PRODUCT_TIME_RESTRICTION_DAY_PART_CODE:I = -0x436

.field public static final PRODUCT_TIME_RESTRICTION_NOT_COINCIDE_CODE:I = -0x435

.field public static final PRODUCT_UNAVAILABLE_AT_RESTAURANT_CODE:I = -0x40b

.field public static final PRODUCT_UNAVAILABLE_CODE:I = -0x3ff

.field public static final PROMOTION_NOT_AVAILABLE_CODE:I = -0x1f4f

.field public static final ZERO_OR_NEGAVTIVE_PRICE_ERROR_CODE:I = -0x646


# instance fields
.field private POD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

.field private mAlipayPublicKey:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mCheckInCode:Ljava/lang/String;

.field private mDeliveryFee:Ljava/lang/Double;

.field private mDisplayOrderNumber:Ljava/lang/String;

.field private mEstimatedDeliveryTime:Ljava/util/Date;

.field private mFulfillmentFacilityOpeningHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;",
            ">;"
        }
    .end annotation
.end field

.field private mMajor:Ljava/lang/String;

.field private mMdsOrderNumber:Ljava/lang/String;

.field private mMerchantId:Ljava/lang/String;

.field private mMerchantPrivateKey:Ljava/lang/String;

.field private mMinor:Ljava/lang/String;

.field private mNoncestr:Ljava/lang/String;

.field private mNotifyUrl:Ljava/lang/String;

.field private mOrderDate:Ljava/util/Date;

.field private mOrderPaymentId:Ljava/lang/String;

.field private mOrderValue:Ljava/lang/Double;

.field private mOrderView:Lcom/mcdonalds/sdk/modules/models/OrderView;

.field private mPackage:Ljava/lang/String;

.field private mPartnerId:Ljava/lang/String;

.field private mPaymentDataId:Ljava/lang/Integer;

.field private mPaymentUrl:Ljava/lang/String;

.field private mPrepayid:Ljava/lang/String;

.field private mProductItemDayPartRestriction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProductItemNotCoincideRestriction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProductItemTimeRestriction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProductsOutOfStock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProductsTimeRestriction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProductsUnavailable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPromotionsError:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPromotionsNotAvailable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPromotionsOutOfStock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRequiresCVV:Ljava/lang/Boolean;

.field private mRequiresPassword:Ljava/lang/Boolean;

.field private mSellerId:Ljava/lang/String;

.field private mSign:Ljava/lang/String;

.field private mTimeStamp:Ljava/lang/String;

.field private mTotalDiscount:Ljava/lang/Double;

.field private mTotalDue:Ljava/lang/Double;

.field private mTotalEnergy:Ljava/lang/Integer;

.field private mTotalTax:Ljava/lang/Double;

.field private mTotalValue:Ljava/lang/Double;

.field private promotionsTimeRestriction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 626
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderResponse$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    const-class v5, Lcom/mcdonalds/sdk/modules/models/OrderView;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/OrderView;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderView:Lcom/mcdonalds/sdk/modules/models/OrderView;

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mDisplayOrderNumber:Ljava/lang/String;

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMajor:Ljava/lang/String;

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMinor:Ljava/lang/String;

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMdsOrderNumber:Ljava/lang/String;

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPaymentUrl:Ljava/lang/String;

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 583
    .local v4, "tmpPOD":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move-object v5, v6

    :goto_0
    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->POD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    .line 584
    const-class v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderValue:Ljava/lang/Double;

    .line 585
    const-class v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalDue:Ljava/lang/Double;

    .line 586
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalEnergy:Ljava/lang/Integer;

    .line 587
    const-class v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalTax:Ljava/lang/Double;

    .line 588
    const-class v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalValue:Ljava/lang/Double;

    .line 589
    const-class v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalDiscount:Ljava/lang/Double;

    .line 590
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPaymentDataId:Ljava/lang/Integer;

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderPaymentId:Ljava/lang/String;

    .line 592
    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mRequiresPassword:Ljava/lang/Boolean;

    .line 593
    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mRequiresCVV:Ljava/lang/Boolean;

    .line 594
    const-class v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mDeliveryFee:Ljava/lang/Double;

    .line 596
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsOutOfStock:Ljava/util/List;

    .line 597
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsOutOfStock:Ljava/util/List;

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 599
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsUnavailable:Ljava/util/List;

    .line 600
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsUnavailable:Ljava/util/List;

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 602
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsNotAvailable:Ljava/util/List;

    .line 603
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsNotAvailable:Ljava/util/List;

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 605
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsError:Ljava/util/List;

    .line 606
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsError:Ljava/util/List;

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 608
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsTimeRestriction:Ljava/util/List;

    .line 609
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsTimeRestriction:Ljava/util/List;

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 611
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemTimeRestriction:Ljava/util/List;

    .line 612
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemTimeRestriction:Ljava/util/List;

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 614
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemDayPartRestriction:Ljava/util/List;

    .line 615
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemDayPartRestriction:Ljava/util/List;

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 617
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemNotCoincideRestriction:Ljava/util/List;

    .line 618
    iget-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemNotCoincideRestriction:Ljava/util/List;

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 621
    .local v2, "tmpMOrderDate":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_1

    move-object v5, v6

    :goto_1
    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderDate:Ljava/util/Date;

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 623
    .local v0, "tmpMEstimatedDeliveryTime":J
    cmp-long v5, v0, v8

    if-nez v5, :cond_2

    :goto_2
    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mEstimatedDeliveryTime:Ljava/util/Date;

    .line 624
    return-void

    .line 583
    .end local v0    # "tmpMEstimatedDeliveryTime":J
    .end local v2    # "tmpMOrderDate":J
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->values()[Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v5

    aget-object v5, v5, v4

    goto/16 :goto_0

    .line 621
    .restart local v2    # "tmpMOrderDate":J
    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    .line 623
    .restart local v0    # "tmpMEstimatedDeliveryTime":J
    :cond_2
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_2
.end method

.method private static fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z
    .locals 8
    .param p0, "pv"    # Lcom/mcdonalds/sdk/modules/models/ProductView;
    .param p2, "errCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 646
    .local p1, "productCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 647
    .local v4, "errorFound":Z
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v5

    .line 650
    .local v5, "validationCode":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p2, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    const/4 v4, 0x1

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getComponents()Ljava/util/ArrayList;

    move-result-object v3

    .line 657
    .local v3, "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    if-eqz v3, :cond_2

    .line 658
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 659
    .local v2, "component":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-static {v2, p1, p2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 660
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    const/4 v4, 0x1

    goto :goto_0

    .line 667
    .end local v2    # "component":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v1

    .line 668
    .local v1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    if-eqz v1, :cond_4

    .line 669
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 670
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-static {v0, p1, p2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 671
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    const/4 v4, 0x1

    goto :goto_1

    .line 677
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_4
    return v4
.end method

.method public static findErrorsForOrderView(Lcom/mcdonalds/sdk/modules/models/OrderView;Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V
    .locals 23
    .param p0, "orderView"    # Lcom/mcdonalds/sdk/modules/models/OrderView;
    .param p1, "ret"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .prologue
    .line 681
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v10, "productsOutOfStock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v12, "productsUnavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v11, "productsTimeRestriction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v7, "productItemTimeRestriction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v5, "productItemDayPartRestriction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v6, "productItemNotCoincideRestriction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v9

    .line 689
    .local v9, "productViews":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    if-eqz v9, :cond_0

    .line 690
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    .local v19, "size":I
    :goto_0
    move/from16 v0, v19

    if-ge v2, v0, :cond_0

    .line 691
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 693
    .local v4, "product":Lcom/mcdonalds/sdk/modules/models/ProductView;
    const/16 v21, -0x40c

    move/from16 v0, v21

    invoke-static {v4, v10, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 694
    const/16 v21, -0x3ff

    move/from16 v0, v21

    invoke-static {v4, v12, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 695
    const/16 v21, -0x40b

    move/from16 v0, v21

    invoke-static {v4, v12, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 696
    const/16 v21, -0x433

    move/from16 v0, v21

    invoke-static {v4, v5, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 697
    const/16 v21, -0x436

    move/from16 v0, v21

    invoke-static {v4, v5, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 698
    const/16 v21, -0x433

    move/from16 v0, v21

    invoke-static {v4, v11, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 699
    const/16 v21, -0x436

    move/from16 v0, v21

    invoke-static {v4, v11, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 700
    const/16 v21, -0x438

    move/from16 v0, v21

    invoke-static {v4, v7, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 701
    const/16 v21, -0x438

    move/from16 v0, v21

    invoke-static {v4, v11, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 702
    const/16 v21, -0x435

    move/from16 v0, v21

    invoke-static {v4, v11, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 703
    const/16 v21, -0x43c

    move/from16 v0, v21

    invoke-static {v4, v6, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 704
    const/16 v21, -0x43c

    move/from16 v0, v21

    invoke-static {v4, v11, v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fillErrorCodes(Lcom/mcdonalds/sdk/modules/models/ProductView;Ljava/util/List;I)Z

    .line 690
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 708
    .end local v2    # "i":I
    .end local v4    # "product":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v19    # "size":I
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setProductsOutOfStock(Ljava/util/List;)V

    .line 709
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setProductsUnavailable(Ljava/util/List;)V

    .line 710
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setProductsTimeRestriction(Ljava/util/List;)V

    .line 712
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v16, "promotionsNotAvailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v15, "promotionsError":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v17, "promotionsOutOfStock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v18, "promotionsTimeRestriction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getPromotionalItems()Ljava/util/List;

    move-result-object v14

    .line 718
    .local v14, "promotionViews":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PromotionView;>;"
    if-eqz v14, :cond_6

    .line 719
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    .restart local v19    # "size":I
    :goto_1
    move/from16 v0, v19

    if-ge v2, v0, :cond_6

    .line 720
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/modules/models/PromotionView;

    .line 722
    .local v13, "promotionView":Lcom/mcdonalds/sdk/modules/models/PromotionView;
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, -0x1f4f

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 723
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->getPromotionId()Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_1
    :goto_2
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->getProductSet()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_2

    .line 728
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->getProductSet()Ljava/util/List;

    move-result-object v9

    .line 730
    const/4 v3, 0x0

    .local v3, "j":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v20

    .local v20, "sizeP":I
    :goto_3
    move/from16 v0, v20

    if-ge v3, v0, :cond_2

    .line 731
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 733
    .local v8, "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, -0x433

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 734
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->getPromotionId()Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    .end local v3    # "j":I
    .end local v8    # "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v20    # "sizeP":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 724
    :cond_3
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, -0x1f41

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 725
    invoke-virtual {v13}, Lcom/mcdonalds/sdk/modules/models/PromotionView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 736
    .restart local v3    # "j":I
    .restart local v8    # "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .restart local v20    # "sizeP":I
    :cond_4
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, -0x40c

    .line 737
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 736
    invoke-virtual/range {v21 .. v22}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 738
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 745
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v8    # "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v13    # "promotionView":Lcom/mcdonalds/sdk/modules/models/PromotionView;
    .end local v19    # "size":I
    .end local v20    # "sizeP":I
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPromotionsNotAvailable(Ljava/util/List;)V

    .line 746
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPromotionsError(Ljava/util/List;)V

    .line 747
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPromotionsTimeRestriction(Ljava/util/List;)V

    .line 748
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setProductItemTimeRestriction(Ljava/util/List;)V

    .line 749
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setProductItemDayPartRestriction(Ljava/util/List;)V

    .line 750
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setProductItemNotCoincideRestriction(Ljava/util/List;)V

    .line 751
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPromotionsOutOfStock(Ljava/util/List;)V

    .line 752
    return-void
.end method

.method public static fromCheckin(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 3
    .param p0, "orderView"    # Lcom/mcdonalds/sdk/modules/models/OrderView;

    .prologue
    .line 194
    invoke-static {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fromTotalize(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v1

    .line 196
    .local v1, "ret":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getOrderProductionResponse()Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    move-result-object v0

    .line 197
    .local v0, "response":Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setDisplayOrderNumber(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->getMajor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setMajor(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->getMinor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setMinor(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->getMdsOrderNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setMdsOrderNumber(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->getPointOfDistribution()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V

    .line 205
    :cond_0
    return-object v1
.end method

.method public static fromCheckout(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 2
    .param p0, "orderView"    # Lcom/mcdonalds/sdk/modules/models/OrderView;

    .prologue
    .line 209
    invoke-static {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fromTotalize(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    .line 210
    .local v0, "response":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getOrderNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setDisplayOrderNumber(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getOrderDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setOrderDate(Ljava/util/Date;)V

    .line 212
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getEstimatedDeliveryTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setEstimatedDeliveryTime(Ljava/util/Date;)V

    .line 213
    return-object v0
.end method

.method public static fromFoundationalCheckIn(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 2
    .param p0, "orderView"    # Lcom/mcdonalds/sdk/modules/models/OrderView;

    .prologue
    .line 216
    invoke-static {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fromTotalize(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    .line 217
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getCheckInCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setCheckInCode(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getFacilityOpeningHours()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setFulfillmentFacilityOpeningHours(Ljava/util/List;)V

    .line 219
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getOrderNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setDisplayOrderNumber(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getOrderPaymentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setOrderPaymentId(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getOrderProductionResponse()Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getOrderProductionResponse()Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;->getPointOfDistribution()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V

    .line 224
    :cond_0
    return-object v0
.end method

.method public static fromTotalize(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 10
    .param p0, "orderView"    # Lcom/mcdonalds/sdk/modules/models/OrderView;

    .prologue
    .line 167
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;-><init>()V

    .line 168
    .local v1, "ret":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    invoke-virtual {v1, p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setOrderView(Lcom/mcdonalds/sdk/modules/models/OrderView;)V

    .line 169
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getTotalDue()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setTotalDue(Ljava/lang/Double;)V

    .line 170
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getOrderDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setOrderDate(Ljava/util/Date;)V

    .line 171
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getTotalEnergy()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setTotalEnergy(Ljava/lang/Integer;)V

    .line 172
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getTotalTax()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setTotalTax(Ljava/lang/Double;)V

    .line 173
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getTotalValue()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setTotalValue(Ljava/lang/Double;)V

    .line 174
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getTotalDiscount()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setTotalDiscount(Ljava/lang/Double;)V

    .line 175
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getDeliveryFee()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setDeliveryFee(Ljava/lang/Double;)V

    .line 177
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 178
    .local v0, "configuration":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v5, "modules.ordering.shouldAddTaxToTotal"

    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v4

    .line 180
    .local v4, "shouldAddTaxToTotal":Z
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getOrderValue()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getTotalDiscount()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double v2, v6, v8

    .line 182
    .local v2, "orderValue":D
    if-nez v4, :cond_0

    .line 183
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalTax()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v2, v6

    .line 186
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setOrderValue(Ljava/lang/Double;)V

    .line 188
    invoke-static {p0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->findErrorsForOrderView(Lcom/mcdonalds/sdk/modules/models/OrderView;Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V

    .line 190
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public getAlipayPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mAlipayPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckInCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mCheckInCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryFee()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mDeliveryFee:Ljava/lang/Double;

    return-object v0
.end method

.method public getDisplayOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mDisplayOrderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsOutOfStock()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const/16 v0, -0x40c

    .line 516
    :goto_0
    return v0

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsUnavailable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    const/16 v0, -0x3ff

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsNotAvailable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 509
    const/16 v0, -0x1f4f

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getProductsTimeRestriction()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getPromotionsTimeRestriction()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 513
    :cond_3
    const/16 v0, -0x438

    goto :goto_0

    .line 516
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEstimatedDeliveryTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mEstimatedDeliveryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFulfillmentFacilityOpeningHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mFulfillmentFacilityOpeningHours:Ljava/util/List;

    return-object v0
.end method

.method public getMajor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMajor:Ljava/lang/String;

    return-object v0
.end method

.method public getMdsOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMdsOrderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMerchantId:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantPrivateKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMerchantPrivateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMinor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMinor:Ljava/lang/String;

    return-object v0
.end method

.method public getNoncestr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mNoncestr:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mNotifyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderDate:Ljava/util/Date;

    return-object v0
.end method

.method public getOrderPaymentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderPaymentId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderValue:Ljava/lang/Double;

    return-object v0
.end method

.method public getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderView:Lcom/mcdonalds/sdk/modules/models/OrderView;

    return-object v0
.end method

.method public getPOD()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->POD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPartnerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentDataId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPaymentDataId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaymentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPaymentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrepayid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPrepayid:Ljava/lang/String;

    return-object v0
.end method

.method public getProductItemDayPartRestriction()Ljava/util/List;
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
    .line 435
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemDayPartRestriction:Ljava/util/List;

    return-object v0
.end method

.method public getProductItemNotCoincideRestriction()Ljava/util/List;
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
    .line 427
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemNotCoincideRestriction:Ljava/util/List;

    return-object v0
.end method

.method public getProductItemTimeRestriction()Ljava/util/List;
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
    .line 443
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemTimeRestriction:Ljava/util/List;

    return-object v0
.end method

.method public getProductsOutOfStock()Ljava/util/List;
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
    .line 363
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsOutOfStock:Ljava/util/List;

    return-object v0
.end method

.method public getProductsTimeRestriction()Ljava/util/List;
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
    .line 387
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsTimeRestriction:Ljava/util/List;

    return-object v0
.end method

.method public getProductsUnavailable()Ljava/util/List;
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
    .line 371
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsUnavailable:Ljava/util/List;

    return-object v0
.end method

.method public getPromotionsError()Ljava/util/List;
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
    .line 383
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsError:Ljava/util/List;

    return-object v0
.end method

.method public getPromotionsNotAvailable()Ljava/util/List;
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
    .line 379
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsNotAvailable:Ljava/util/List;

    return-object v0
.end method

.method public getPromotionsOutOfStock()Ljava/util/List;
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
    .line 532
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsOutOfStock:Ljava/util/List;

    return-object v0
.end method

.method public getPromotionsTimeRestriction()Ljava/util/List;
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
    .line 524
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->promotionsTimeRestriction:Ljava/util/List;

    return-object v0
.end method

.method public getRequiresCVV()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mRequiresCVV:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRequiresPassword()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mRequiresPassword:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSellerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mSellerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mSign:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDiscount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalDiscount:Ljava/lang/Double;

    return-object v0
.end method

.method public getTotalDue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalDue:Ljava/lang/Double;

    return-object v0
.end method

.method public getTotalEnergy()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalEnergy:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalTax()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalTax:Ljava/lang/Double;

    return-object v0
.end method

.method public getTotalValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalValue:Ljava/lang/Double;

    return-object v0
.end method

.method public setAlipayPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "alipayPublicKey"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mAlipayPublicKey:Ljava/lang/String;

    .line 472
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAppId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mAppId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setCheckInCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkInCode"    # Ljava/lang/String;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mCheckInCode:Ljava/lang/String;

    .line 760
    return-void
.end method

.method public setDeliveryFee(Ljava/lang/Double;)V
    .locals 0
    .param p1, "deliveryFee"    # Ljava/lang/Double;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mDeliveryFee:Ljava/lang/Double;

    .line 360
    return-void
.end method

.method public setDisplayOrderNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayOrderNumber"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mDisplayOrderNumber:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setEstimatedDeliveryTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mEstimatedDeliveryTime"    # Ljava/util/Date;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mEstimatedDeliveryTime:Ljava/util/Date;

    .line 424
    return-void
.end method

.method public setFulfillmentFacilityOpeningHours(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p1, "fulfillmentFacilityOpeningHours":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mFulfillmentFacilityOpeningHours:Ljava/util/List;

    .line 768
    return-void
.end method

.method public setMajor(Ljava/lang/String;)V
    .locals 0
    .param p1, "major"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMajor:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setMdsOrderNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mdsOrderNumber"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMdsOrderNumber:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setMerchantId(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantId"    # Ljava/lang/String;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMerchantId:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public setMerchantPrivateKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchantPrivateKey"    # Ljava/lang/String;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMerchantPrivateKey:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public setMinor(Ljava/lang/String;)V
    .locals 0
    .param p1, "minor"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMinor:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setNoncestr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNoncestr"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mNoncestr:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setNotifyUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "notifyUrl"    # Ljava/lang/String;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mNotifyUrl:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setOrderDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "mOrderDate"    # Ljava/util/Date;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderDate:Ljava/util/Date;

    .line 416
    return-void
.end method

.method public setOrderPaymentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderPaymentId"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderPaymentId:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setOrderValue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "orderValue"    # Ljava/lang/Double;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderValue:Ljava/lang/Double;

    .line 280
    return-void
.end method

.method public setOrderView(Lcom/mcdonalds/sdk/modules/models/OrderView;)V
    .locals 0
    .param p1, "orderView"    # Lcom/mcdonalds/sdk/modules/models/OrderView;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderView:Lcom/mcdonalds/sdk/modules/models/OrderView;

    .line 232
    return-void
.end method

.method public setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V
    .locals 0
    .param p1, "POD"    # Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->POD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    .line 272
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPackage"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPackage:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setPartnerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "partnerId"    # Ljava/lang/String;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPartnerId:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public setPaymentDataId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "paymentDataId"    # Ljava/lang/Integer;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPaymentDataId:Ljava/lang/Integer;

    .line 328
    return-void
.end method

.method public setPaymentUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPaymentUrl:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setPrepayid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrepayid"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPrepayid:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setProductItemDayPartRestriction(Ljava/util/List;)V
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
    .line 439
    .local p1, "mProductItemDayPartRestriction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemDayPartRestriction:Ljava/util/List;

    .line 440
    return-void
.end method

.method public setProductItemNotCoincideRestriction(Ljava/util/List;)V
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
    .line 431
    .local p1, "mProductItemNotCoincideRestriction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemNotCoincideRestriction:Ljava/util/List;

    .line 432
    return-void
.end method

.method public setProductItemTimeRestriction(Ljava/util/List;)V
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
    .line 447
    .local p1, "mProductItemTimeRestriction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemTimeRestriction:Ljava/util/List;

    .line 448
    return-void
.end method

.method public setProductsOutOfStock(Ljava/util/List;)V
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
    .line 367
    .local p1, "productsNotAvailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsOutOfStock:Ljava/util/List;

    .line 368
    return-void
.end method

.method public setProductsTimeRestriction(Ljava/util/List;)V
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
    .line 407
    .local p1, "productsTimeRestricion":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsTimeRestriction:Ljava/util/List;

    .line 408
    return-void
.end method

.method public setProductsUnavailable(Ljava/util/List;)V
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
    .line 375
    .local p1, "mProductsUnavailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsUnavailable:Ljava/util/List;

    .line 376
    return-void
.end method

.method public setPromotionsError(Ljava/util/List;)V
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
    .line 395
    .local p1, "promotionsError":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsError:Ljava/util/List;

    .line 396
    return-void
.end method

.method public setPromotionsNotAvailable(Ljava/util/List;)V
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
    .line 391
    .local p1, "promotionsNotAvailable":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsNotAvailable:Ljava/util/List;

    .line 392
    return-void
.end method

.method public setPromotionsOutOfStock(Ljava/util/List;)V
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
    .line 528
    .local p1, "promotionsOutOfStock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsOutOfStock:Ljava/util/List;

    .line 529
    return-void
.end method

.method public setPromotionsTimeRestriction(Ljava/util/List;)V
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
    .line 520
    .local p1, "promotionsTimeRestriction":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->promotionsTimeRestriction:Ljava/util/List;

    .line 521
    return-void
.end method

.method public setRequiresCVV(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "requiresCVV"    # Ljava/lang/Boolean;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mRequiresCVV:Ljava/lang/Boolean;

    .line 352
    return-void
.end method

.method public setRequiresPassword(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "requiresPassword"    # Ljava/lang/Boolean;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mRequiresPassword:Ljava/lang/Boolean;

    .line 344
    return-void
.end method

.method public setSellerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sellerId"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mSellerId:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSign"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mSign:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->signature:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTimeStamp"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTimeStamp:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setTotalDiscount(Ljava/lang/Double;)V
    .locals 0
    .param p1, "totalDiscount"    # Ljava/lang/Double;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalDiscount:Ljava/lang/Double;

    .line 320
    return-void
.end method

.method public setTotalDue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "totalDue"    # Ljava/lang/Double;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalDue:Ljava/lang/Double;

    .line 288
    return-void
.end method

.method public setTotalEnergy(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "totalEnergy"    # Ljava/lang/Integer;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalEnergy:Ljava/lang/Integer;

    .line 296
    return-void
.end method

.method public setTotalTax(Ljava/lang/Double;)V
    .locals 0
    .param p1, "totalTax"    # Ljava/lang/Double;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalTax:Ljava/lang/Double;

    .line 304
    return-void
.end method

.method public setTotalValue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "totalValue"    # Ljava/lang/Double;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalValue:Ljava/lang/Double;

    .line 312
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 542
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderView:Lcom/mcdonalds/sdk/modules/models/OrderView;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 543
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mDisplayOrderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMajor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMinor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mMdsOrderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPaymentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->POD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderValue:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalDue:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalEnergy:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 552
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalTax:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalValue:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mTotalDiscount:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPaymentDataId:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderPaymentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mRequiresPassword:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 558
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mRequiresCVV:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mDeliveryFee:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsOutOfStock:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 561
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsUnavailable:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 562
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsNotAvailable:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 563
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemTimeRestriction:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 564
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemDayPartRestriction:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 565
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductItemNotCoincideRestriction:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 566
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mPromotionsError:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 567
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mProductsTimeRestriction:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 568
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mOrderDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 569
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mEstimatedDeliveryTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->mEstimatedDeliveryTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 570
    return-void

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->POD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->ordinal()I

    move-result v0

    goto/16 :goto_0

    :cond_2
    move-wide v0, v2

    .line 568
    goto :goto_1
.end method
