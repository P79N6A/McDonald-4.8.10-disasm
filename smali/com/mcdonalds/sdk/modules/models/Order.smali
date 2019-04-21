.class public Lcom/mcdonalds/sdk/modules/models/Order;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "Order.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/modules/models/Order$OrderChangedListener;,
        Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;,
        Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/modules/AppModel;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Order;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;"
        }
    .end annotation
.end field

.field private static final OFFER_TYPE_DELIVERY_FEE:I = 0xa


# instance fields
.field private mAlipayResult:Ljava/lang/String;

.field private mCheckinResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

.field private mCheckoutResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

.field private mCompanyName:Ljava/lang/String;

.field private mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

.field private mDeliveryDate:Ljava/util/Date;

.field private mDeliveryDateString:Ljava/lang/String;

.field private mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mEnabledMenuTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteId:Ljava/lang/Integer;

.field private mFavoriteName:Ljava/lang/String;

.field private mInvoiceRequested:Z

.field private mIsDelivery:Z

.field private mIsNormalOrder:Z

.field private mIsPODSet:Z

.field private mNeedsUpdatedRecipes:Z

.field private mOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderNumber:Ljava/lang/String;

.field private mOrderRemark:Ljava/lang/String;

.field private mOrderRemarkAvailable:Z

.field private mOrderTableService:Lcom/mcdonalds/sdk/modules/models/OrderTableService;

.field private mPayment:Lcom/mcdonalds/sdk/modules/models/OrderPayment;

.field private mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

.field private mPaymentMethodDisplayName:Ljava/lang/String;

.field private mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

.field private mPreparePaymentResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

.field private mPriceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mRecentId:Ljava/lang/Integer;

.field private mRecentName:Ljava/lang/String;

.field private mShowUpsell:Z

.field private mStoreId:Ljava/lang/String;

.field private mTenderAmount:D

.field private mTenderType:I

.field private mTotalizeBeforeCheckin:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

.field private mTotalizeResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

.field private mUnavailableProductCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWechatPaymentResult:I

.field private mZeroPriced:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1138
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Order$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 176
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mShowUpsell:Z

    .line 71
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsNormalOrder:Z

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCompanyName:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderRemark:Ljava/lang/String;

    .line 96
    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mWechatPaymentResult:I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    .line 180
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1097
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 45
    iput-boolean v5, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mShowUpsell:Z

    .line 71
    iput-boolean v5, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsNormalOrder:Z

    .line 84
    const-string v3, ""

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCompanyName:Ljava/lang/String;

    .line 88
    const-string v3, ""

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderRemark:Ljava/lang/String;

    .line 96
    iput v5, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mWechatPaymentResult:I

    .line 1099
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    .line 1100
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    const-class v7, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v3, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    .line 1103
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    const-class v7, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v3, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mStoreId:Ljava/lang/String;

    .line 1106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1107
    .local v2, "tmpMPriceType":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v3, v4

    :goto_0
    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPriceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .line 1108
    const-class v3, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 1109
    const-class v3, Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPayment:Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    .line 1110
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mRecentId:Ljava/lang/Integer;

    .line 1111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mRecentName:Ljava/lang/String;

    .line 1112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderNumber:Ljava/lang/String;

    .line 1113
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mFavoriteId:Ljava/lang/Integer;

    .line 1114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mFavoriteName:Ljava/lang/String;

    .line 1115
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsDelivery:Z

    .line 1117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    .line 1118
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v3, v7}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1120
    const-class v3, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 1121
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 1122
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPreparePaymentResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 1123
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeBeforeCheckin:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 1124
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckinResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 1125
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckoutResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 1126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1127
    .local v0, "tmpMDeliveryDate":J
    const-wide/16 v8, -0x1

    cmp-long v3, v0, v8

    if-nez v3, :cond_2

    :goto_2
    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryDate:Ljava/util/Date;

    .line 1128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryDateString:Ljava/lang/String;

    .line 1129
    const-class v3, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 1130
    const-class v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderType:I

    .line 1132
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderAmount:D

    .line 1133
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    :goto_3
    iput-boolean v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mNeedsUpdatedRecipes:Z

    .line 1134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    iput-boolean v5, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsPODSet:Z

    .line 1135
    const-class v3, Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    iput-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderTableService:Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    .line 1136
    return-void

    .line 1107
    .end local v0    # "tmpMDeliveryDate":J
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->values()[Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v3

    aget-object v3, v3, v2

    goto/16 :goto_0

    :cond_1
    move v3, v6

    .line 1115
    goto/16 :goto_1

    .line 1127
    .restart local v0    # "tmpMDeliveryDate":J
    :cond_2
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :cond_3
    move v3, v6

    .line 1133
    goto :goto_3

    :cond_4
    move v5, v6

    .line 1134
    goto :goto_4
.end method

.method private addMenuTypes(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 4
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 314
    const-string v2, "enableMultipleMenuTypes"

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getBooleanForParameter(Ljava/lang/String;)Z

    move-result v0

    .line 315
    .local v0, "enableMultipleMenuTypes":Z
    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtendedMenuTypeIDs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtendedMenuTypeIDs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 322
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtendedMenuTypeIDs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 325
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Product;->getMenuTypeID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 326
    .local v1, "menuTypeId":I
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private canAddProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 8
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 235
    const-string v6, "enableMultipleMenuTypes"

    invoke-static {v6}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getBooleanForParameter(Ljava/lang/String;)Z

    move-result v0

    .line 236
    .local v0, "enableMultipleMenuTypes":Z
    if-nez v0, :cond_2

    .line 238
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getMenuTypeID()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 239
    .local v1, "menuTypeId":I
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    :cond_0
    move v4, v5

    .line 256
    .end local v1    # "menuTypeId":I
    :cond_1
    :goto_0
    return v4

    .line 243
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getExtendedMenuTypeIDs()Ljava/util/List;

    move-result-object v3

    .line 244
    .local v3, "productMenuTypeIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    .line 245
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v4, v5

    .line 246
    goto :goto_0

    .line 248
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 249
    .local v2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_4

    .line 250
    invoke-interface {v2, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 252
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 255
    iput-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    move v4, v5

    .line 256
    goto :goto_0
.end method

.method private static cloneOffersForEditing(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "orderOffers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "newOrderOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 170
    .local v1, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->clone()Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    .end local v1    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_0
    return-object v0
.end method

.method public static cloneOrderForEditing(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 4
    .param p0, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    .line 103
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Order;-><init>()V

    .line 105
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getStoreId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 107
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 109
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getRecentId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setRecentId(Ljava/lang/Integer;)V

    .line 110
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getRecentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setRecentName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getFavoriteId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setFavoriteId(Ljava/lang/Integer;)V

    .line 113
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getFavoriteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setFavoriteName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 118
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V

    .line 120
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDate(Ljava/util/Date;)V

    .line 121
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDateString(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 124
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getAlipayResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setAlipayResult(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPaymentMethodDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPaymentMethodDisplayName(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    iput-object v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 128
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeBeforeCheckin:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    iput-object v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeBeforeCheckin:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 129
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPreparePaymentResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    iput-object v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mPreparePaymentResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 130
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckoutResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    iput-object v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckoutResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPayment:Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    iput-object v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mPayment:Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    .line 137
    iget-object v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneProductsForEditing(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneOffersForEditing(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    .line 140
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderTableService:Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    iput-object v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderTableService:Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    .line 141
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mZeroPriced:Z

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mZeroPriced:Z

    .line 143
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getIsPODSet()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsPODSet(Z)V

    .line 145
    iget v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderType:I

    iput v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderType:I

    .line 146
    iget-wide v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderAmount:D

    iput-wide v2, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderAmount:D

    .line 147
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsDelivery:Z

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsDelivery:Z

    .line 148
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsNormalOrder:Z

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsNormalOrder:Z

    .line 149
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderRemark:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderRemark:Ljava/lang/String;

    .line 150
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderRemarkAvailable:Z

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderRemarkAvailable:Z

    .line 152
    return-object v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckinResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    iput-object v1, v0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckinResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    goto :goto_0
.end method

.method private static cloneProductsForEditing(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;)",
            "Ljava/util/Collection",
            "<+",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "products":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "productsNew":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 160
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->cloneProductForEditing(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v0

    .line 161
    .local v0, "newProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v0    # "newProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-object v2
.end method

.method private getCompanyNameOrPersonal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCompanyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.ordering.personal"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCompanyName:Ljava/lang/String;

    goto :goto_0
.end method

.method private setEnabledMenuTypes()V
    .locals 8

    .prologue
    .line 263
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    .line 264
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 265
    .local v3, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->addMenuTypes(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    goto :goto_0

    .line 268
    .end local v3    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 270
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v2

    .line 272
    .local v2, "orderOfferProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    if-eqz v2, :cond_1

    .line 273
    const/4 v1, 0x0

    .local v1, "j":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "sizeP":I
    :goto_2
    if-ge v1, v5, :cond_1

    .line 274
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mcdonalds/sdk/modules/models/Order;->addMenuTypes(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 269
    .end local v1    # "j":I
    .end local v5    # "sizeP":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    .end local v0    # "i":I
    .end local v2    # "orderOfferProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    .end local v4    # "size":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addEditedProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 4
    .param p1, "editedProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .param p2, "oldProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 216
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    if-nez v3, :cond_2

    .line 217
    :cond_0
    const/4 v0, 0x1

    .line 231
    :cond_1
    :goto_0
    return v0

    .line 220
    :cond_2
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->canAddProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v0

    .line 222
    .local v0, "canAdd":Z
    if-eqz v0, :cond_1

    .line 223
    const/4 v2, 0x0

    .line 224
    .local v2, "productIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 225
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    invoke-virtual {v3, p2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 226
    move v2, v1

    .line 224
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_4
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Z
    .locals 7
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const/4 v5, 0x1

    .line 344
    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v5

    .line 348
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v3

    .line 349
    .local v3, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    if-eqz v3, :cond_3

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 352
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 353
    .local v2, "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v1

    .line 355
    .local v1, "option":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v1, :cond_0

    .line 357
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->canAddProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 358
    const/4 v5, 0x0

    goto :goto_0

    .line 350
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    .end local v0    # "i":I
    .end local v1    # "option":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    .end local v2    # "orderOfferProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .end local v4    # "size":I
    :cond_3
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->setEnabledMenuTypes()V

    goto :goto_0
.end method

.method public addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z
    .locals 2
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v1

    if-nez v1, :cond_2

    .line 201
    :cond_0
    const/4 v0, 0x1

    .line 212
    :cond_1
    :goto_0
    return v0

    .line 204
    :cond_2
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->canAddProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v0

    .line 206
    .local v0, "canAdd":Z
    if-eqz v0, :cond_1

    .line 208
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->setEnabledMenuTypes()V

    goto :goto_0
.end method

.method public canAddProducts(Lcom/mcdonalds/sdk/modules/models/Order;)Z
    .locals 4
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 189
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 190
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->canAddProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 191
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkDayPart(I)Z
    .locals 2
    .param p1, "dayPart"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 868
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearOffers()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->setEnabledMenuTypes()V

    .line 381
    return-void
.end method

.method public clearPayment()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 625
    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPayment:Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    .line 626
    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 627
    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPaymentMethodDisplayName:Ljava/lang/String;

    .line 628
    return-void
.end method

.method public clearPaymentResult()V
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setAlipayResult(Ljava/lang/String;)V

    .line 821
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setWechatPaymentResult(I)V

    .line 822
    return-void
.end method

.method public clearProducts()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 385
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->setEnabledMenuTypes()V

    .line 386
    return-void
.end method

.method public compareTo(Lcom/mcdonalds/sdk/modules/models/Order;)I
    .locals 2
    .param p1, "another"    # Lcom/mcdonalds/sdk/modules/models/Order;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 875
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mRecentId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getRecentId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getRecentId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mRecentId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    .line 879
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->compareTo(Lcom/mcdonalds/sdk/modules/models/Order;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    return v0
.end method

.method public getAlipayResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mAlipayResult:Ljava/lang/String;

    return-object v0
.end method

.method public getBasketCounter()I
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckinResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    return-object v0
.end method

.method public getCheckoutResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckoutResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getDayPart()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 857
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    return-object v0
.end method

.method public getDeliveryChargeOfferName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 467
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-ne v2, v3, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v1

    .line 472
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeliveryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDeliveryDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method public getDiscountedDeliveryCharge()Ljava/lang/Double;
    .locals 5

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 477
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-ne v3, v4, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v1

    .line 479
    .local v1, "orderOfferProduct":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 480
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getTotalValue(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)Ljava/lang/Double;

    move-result-object v2

    .line 485
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v1    # "orderOfferProduct":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEnabledDayParts()Ljava/util/List;
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
    .line 861
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    return-object v0
.end method

.method public getFavoriteId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mFavoriteId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFavoriteName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mFavoriteName:Ljava/lang/String;

    return-object v0
.end method

.method public getInvoiceInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 915
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "modules.ordering.invoiceRequested"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, "requested":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "modules.ordering.invoiceTitle"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, "title":Ljava/lang/String;
    const-string v0, "%s: %s: %s"

    .line 919
    .local v0, "parameter":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mInvoiceRequested:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getCompanyNameOrPersonal()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getIsPODSet()Z
    .locals 1

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsPODSet:Z

    return v0
.end method

.method public getItemsCount()I
    .locals 4

    .prologue
    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, "count":I
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 983
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v3

    add-int/2addr v0, v3

    .line 984
    goto :goto_0

    .line 986
    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return v0
.end method

.method public getMostRecentOrderResponse()Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsDelivery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckoutResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckoutResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 1020
    :goto_0
    return-object v0

    .line 1014
    :cond_0
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsDelivery:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckinResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckinResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    goto :goto_0

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPreparePaymentResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPreparePaymentResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    goto :goto_0

    .line 1020
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    goto :goto_0
.end method

.method public getOfferSecondaryEnergy()D
    .locals 8

    .prologue
    .line 438
    const-wide/16 v2, 0x0

    .line 440
    .local v2, "ret":D
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 441
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 443
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 444
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalSecondaryEnergy()D

    move-result-wide v6

    add-double/2addr v2, v6

    goto :goto_0

    .line 450
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_2
    return-wide v2
.end method

.method public getOfferTotalEnergy()D
    .locals 8

    .prologue
    .line 500
    const-wide/16 v2, 0x0

    .line 502
    .local v2, "ret":D
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 503
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 504
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 505
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 506
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalEnergy()D

    move-result-wide v6

    add-double/2addr v2, v6

    goto :goto_0

    .line 512
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    :cond_2
    return-wide v2
.end method

.method public getOfferTotalValue()D
    .locals 6

    .prologue
    .line 406
    const-wide/16 v2, 0x0

    .line 408
    .local v2, "ret":D
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 409
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v4

    sget-object v5, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-eq v4, v5, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v2

    .line 414
    goto :goto_0

    .line 416
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_1
    return-wide v2
.end method

.method public getOffers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderOffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderRemark()Ljava/lang/String;
    .locals 5

    .prologue
    .line 907
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.ordering.orderRemark"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, "orderRemark":Ljava/lang/String;
    const-string v1, "%s: %s"

    .line 910
    .local v1, "parameter":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderRemark:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getOrderRemarkString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderTableService()Lcom/mcdonalds/sdk/modules/models/OrderTableService;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderTableService:Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    return-object v0
.end method

.method public getPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPayment:Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    return-object v0
.end method

.method public getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    return-object v0
.end method

.method public getPaymentMethodDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPaymentMethodDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    return-object v0
.end method

.method public getPaymentResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getAlipayResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getAlipayResult()Ljava/lang/String;

    move-result-object v0

    .line 815
    :goto_0
    return-object v0

    .line 812
    :cond_0
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mWechatPaymentResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getWechatPaymentResult()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreparePaymentResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPreparePaymentResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    return-object v0
.end method

.method public getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPriceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    return-object v0
.end method

.method public getProductSecondaryEnergy()D
    .locals 6

    .prologue
    .line 428
    const-wide/16 v2, 0x0

    .line 430
    .local v2, "ret":D
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 431
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalSecondaryEnergy()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 432
    goto :goto_0

    .line 434
    .end local v0    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-wide v2
.end method

.method public getProductTotalEnergy()D
    .locals 6

    .prologue
    .line 454
    const-wide/16 v2, 0x0

    .line 456
    .local v2, "ret":D
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 457
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalEnergy()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 458
    goto :goto_0

    .line 460
    .end local v0    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    return-wide v2
.end method

.method public getProductTotalValue()D
    .locals 8

    .prologue
    .line 393
    const-wide/16 v2, 0x0

    .line 395
    .local v2, "ret":D
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->allowDownCharge(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v0

    .line 396
    .local v0, "allowDownCharge":Z
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 397
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->isUnavailable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getTotalPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;Z)D

    move-result-wide v6

    add-double/2addr v2, v6

    goto :goto_0

    .line 402
    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    return-wide v2
.end method

.method public getProducts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method public getRecentId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mRecentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mRecentName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mStoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getTenderAmount()D
    .locals 2

    .prologue
    .line 786
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderAmount:D

    return-wide v0
.end method

.method public getTenderType()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderType:I

    return v0
.end method

.method public getTotalEnergy()D
    .locals 4

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProductTotalEnergy()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOfferTotalEnergy()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getTotalOrderCount()I
    .locals 7

    .prologue
    .line 528
    const/4 v3, 0x0

    .line 529
    .local v3, "ret":I
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 530
    .local v2, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    add-int/2addr v3, v5

    .line 531
    goto :goto_0

    .line 534
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 535
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 536
    .local v1, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 537
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    .line 538
    .local v0, "offerProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getSelectedProductOption()Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    move-result-object v2

    .line 539
    .restart local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-eqz v2, :cond_2

    .line 540
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_1

    .line 547
    .end local v0    # "offerProduct":Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;
    .end local v1    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    .end local v2    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_3
    return v3
.end method

.method public getTotalProductCount(I)I
    .locals 4
    .param p1, "productId"    # I

    .prologue
    .line 551
    const/4 v1, 0x0

    .line 552
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 557
    .local v0, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 564
    .end local v0    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    return v1
.end method

.method public getTotalSecondaryEnergy()D
    .locals 4

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProductSecondaryEnergy()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOfferSecondaryEnergy()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getTotalTax()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getCheckinResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalTax()Ljava/lang/Double;

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalTax()Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalValue()D
    .locals 4

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProductTotalValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOfferTotalValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getTotalizeBeforeCheckin()Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeBeforeCheckin:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    return-object v0
.end method

.method public getTotalizeResult()Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    return-object v0
.end method

.method public getUnavailableProductCodes()Ljava/util/List;
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
    .line 972
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mUnavailableProductCodes:Ljava/util/List;

    return-object v0
.end method

.method public getWechatPaymentResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mWechatPaymentResult:I

    if-nez v0, :cond_0

    .line 803
    const-string v0, "SUCCESS"

    .line 805
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeliveryFeeOffer()Z
    .locals 4

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 490
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferType()Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    if-ne v2, v3, :cond_0

    .line 491
    const/4 v1, 0x1

    .line 494
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasOffer(Lcom/mcdonalds/sdk/modules/models/Offer;)Z
    .locals 5
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 303
    .local v0, "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    const/4 v1, 0x1

    .line 309
    .end local v0    # "orderOffer":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_1
    return v1
.end method

.method public hasOffers()Z
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveProducts()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 283
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 297
    :goto_0
    return v3

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 289
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOrderOfferProducts()Ljava/util/List;

    move-result-object v1

    .line 291
    .local v1, "orderOfferProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    if-eqz v1, :cond_1

    move v3, v4

    .line 292
    goto :goto_0

    .line 288
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    .end local v0    # "i":I
    .end local v1    # "orderOfferProducts":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;>;"
    .end local v2    # "size":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invoiceRequested()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mInvoiceRequested:Z

    return v0
.end method

.method public isDelivery()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsDelivery:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getBasketCounter()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormalOrder()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsNormalOrder:Z

    return v0
.end method

.method public isOrderRemarkAvailable()Z
    .locals 1

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderRemarkAvailable:Z

    return v0
.end method

.method public isZeroPriced()Z
    .locals 1

    .prologue
    .line 964
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mZeroPriced:Z

    return v0
.end method

.method public needsUpdatedRecipes()Z
    .locals 1

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mNeedsUpdatedRecipes:Z

    return v0
.end method

.method public removeOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
    .locals 2
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 372
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->setEnabledMenuTypes()V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v0, "Order"

    const-string v1, "Offer not in basket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 3
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 333
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 334
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 336
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    if-ne v1, p1, :cond_0

    .line 337
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 338
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->setEnabledMenuTypes()V

    goto :goto_0

    .line 341
    .end local v1    # "product":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_1
    return-void
.end method

.method public setAlipayResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "alipayResult"    # Ljava/lang/String;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mAlipayResult:Ljava/lang/String;

    .line 799
    return-void
.end method

.method public setCheckinResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V
    .locals 0
    .param p1, "checkinResult"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckinResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 727
    return-void
.end method

.method public setCheckoutResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V
    .locals 0
    .param p1, "mCheckoutResult"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckoutResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 735
    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 883
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCompanyName:Ljava/lang/String;

    .line 884
    return-void
.end method

.method public setDeliveryAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
    .locals 0
    .param p1, "deliveryAddress"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 767
    return-void
.end method

.method public setDeliveryDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "deliveryDate"    # Ljava/util/Date;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryDate:Ljava/util/Date;

    .line 743
    return-void
.end method

.method public setDeliveryDateString(Ljava/lang/String;)V
    .locals 0
    .param p1, "deliveryDateString"    # Ljava/lang/String;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryDateString:Ljava/lang/String;

    .line 751
    return-void
.end method

.method public setDeliveryStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 0
    .param p1, "deliveryStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 775
    return-void
.end method

.method public setFavoriteId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "favoriteId"    # Ljava/lang/Integer;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mFavoriteId:Ljava/lang/Integer;

    .line 679
    return-void
.end method

.method public setFavoriteName(Ljava/lang/String;)V
    .locals 0
    .param p1, "favoriteName"    # Ljava/lang/String;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mFavoriteName:Ljava/lang/String;

    .line 687
    return-void
.end method

.method public setInvoiceRequested(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 932
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mInvoiceRequested:Z

    .line 933
    return-void
.end method

.method public setIsDelivery(Z)V
    .locals 0
    .param p1, "isDelivery"    # Z

    .prologue
    .line 694
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsDelivery:Z

    .line 695
    return-void
.end method

.method public setIsPODSet(Z)V
    .locals 0
    .param p1, "isPODSet"    # Z

    .prologue
    .line 948
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsPODSet:Z

    .line 949
    return-void
.end method

.method public setNeedsUpdatedRecipes(Z)V
    .locals 0
    .param p1, "needsUpdatedRecipes"    # Z

    .prologue
    .line 849
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mNeedsUpdatedRecipes:Z

    .line 850
    return-void
.end method

.method public setNormalOrder(Z)V
    .locals 0
    .param p1, "normalOrder"    # Z

    .prologue
    .line 758
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsNormalOrder:Z

    .line 759
    return-void
.end method

.method public setOrderNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderNumber"    # Ljava/lang/String;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderNumber:Ljava/lang/String;

    .line 671
    return-void
.end method

.method public setOrderRemark(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderRemark"    # Ljava/lang/String;

    .prologue
    .line 899
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderRemark:Ljava/lang/String;

    .line 900
    return-void
.end method

.method public setOrderRemarkAvailable(Z)V
    .locals 0
    .param p1, "avaliable"    # Z

    .prologue
    .line 924
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderRemarkAvailable:Z

    .line 925
    return-void
.end method

.method public setOrderTableService(Lcom/mcdonalds/sdk/modules/models/OrderTableService;)V
    .locals 0
    .param p1, "orderTableService"    # Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    .prologue
    .line 960
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderTableService:Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    .line 961
    return-void
.end method

.method public setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V
    .locals 0
    .param p1, "payment"    # Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPayment:Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    .line 631
    return-void
.end method

.method public setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V
    .locals 0
    .param p1, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 647
    return-void
.end method

.method public setPaymentMethodDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentMethodDisplayName"    # Ljava/lang/String;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPaymentMethodDisplayName:Ljava/lang/String;

    .line 834
    return-void
.end method

.method public setPaymentMode(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V
    .locals 0
    .param p1, "paymentMode"    # Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 639
    return-void
.end method

.method public setPreparePaymentResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V
    .locals 0
    .param p1, "preparePaymentResult"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPreparePaymentResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 719
    return-void
.end method

.method public setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V
    .locals 0
    .param p1, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPriceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .line 610
    return-void
.end method

.method public setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 618
    return-void
.end method

.method public setRecentId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "recentId"    # Ljava/lang/Integer;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mRecentId:Ljava/lang/Integer;

    .line 655
    return-void
.end method

.method public setRecentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "recentName"    # Ljava/lang/String;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mRecentName:Ljava/lang/String;

    .line 663
    return-void
.end method

.method public setShowUpsell(Z)V
    .locals 0
    .param p1, "showUpsell"    # Z

    .prologue
    .line 944
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mShowUpsell:Z

    .line 945
    return-void
.end method

.method public setStoreId(I)V
    .locals 1
    .param p1, "storeId"    # I

    .prologue
    .line 580
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 589
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 590
    :cond_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mNeedsUpdatedRecipes:Z

    .line 601
    :goto_0
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mStoreId:Ljava/lang/String;

    .line 602
    return-void

    .line 592
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mStoreId:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 593
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mNeedsUpdatedRecipes:Z

    goto :goto_0

    .line 596
    :cond_2
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mNeedsUpdatedRecipes:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mStoreId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mNeedsUpdatedRecipes:Z

    goto :goto_0
.end method

.method public setTenderAmount(D)V
    .locals 1
    .param p1, "tenderAmount"    # D

    .prologue
    .line 790
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderAmount:D

    .line 791
    return-void
.end method

.method public setTenderType(I)V
    .locals 0
    .param p1, "tenderType"    # I

    .prologue
    .line 782
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderType:I

    .line 783
    return-void
.end method

.method public setTotalizeBeforeCheckin(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V
    .locals 0
    .param p1, "totalizeResult"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeBeforeCheckin:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 711
    return-void
.end method

.method public setTotalizeResult(Lcom/mcdonalds/sdk/modules/models/OrderResponse;)V
    .locals 0
    .param p1, "totalizeResult"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    .line 703
    return-void
.end method

.method public setUnavailableProductCodes(Ljava/util/List;)V
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
    .line 976
    .local p1, "unavailableProductCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mUnavailableProductCodes:Ljava/util/List;

    .line 977
    return-void
.end method

.method public setWechatPaymentResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 825
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mWechatPaymentResult:I

    .line 826
    return-void
.end method

.method public setZeroPriced(Z)V
    .locals 0
    .param p1, "mZeroPriced"    # Z

    .prologue
    .line 968
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mZeroPriced:Z

    .line 969
    return-void
.end method

.method public showUpsell()Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mShowUpsell:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Order{mProducts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStoreId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mStoreId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mPriceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPriceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1067
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProducts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1068
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOffers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1069
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mStoreId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPriceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1072
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPayment:Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1073
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mRecentId:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1074
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mRecentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mFavoriteId:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1077
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mFavoriteName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1078
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsDelivery:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1079
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mEnabledMenuTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1080
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1081
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 1082
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPreparePaymentResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 1083
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTotalizeBeforeCheckin:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 1084
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckinResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 1085
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mCheckoutResult:Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 1086
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_2
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1087
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryDateString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1089
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1090
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mTenderAmount:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1092
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mNeedsUpdatedRecipes:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1093
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mIsPODSet:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1094
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mOrderTableService:Lcom/mcdonalds/sdk/modules/models/OrderTableService;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1095
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order;->mPriceType:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->ordinal()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1078
    goto :goto_1

    .line 1086
    :cond_2
    const-wide/16 v4, -0x1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 1092
    goto :goto_3

    :cond_4
    move v1, v2

    .line 1093
    goto :goto_4
.end method
