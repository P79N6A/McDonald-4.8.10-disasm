.class public Lcom/mcdonalds/sdk/modules/models/OrderView;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OrderView.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCheckInCode:Ljava/lang/String;

.field private mConfirmationNeeded:Z

.field private mDeliveryFee:Ljava/lang/Double;

.field private mEstimatedDeliveryTime:Ljava/util/Date;

.field private mFacilityOpeningHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLargeOrder:Z

.field private mNickName:Ljava/lang/String;

.field private mOrderDate:Ljava/util/Date;

.field private mOrderDt:Ljava/lang/String;

.field private mOrderNumber:Ljava/lang/String;

.field private mOrderPaymentId:Ljava/lang/String;

.field private mOrderProductionResponse:Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

.field private mOrderValue:Ljava/lang/Double;

.field private mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation
.end field

.field private mPromotionalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PromotionView;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreID:Ljava/lang/String;

.field private mTotalDiscount:Ljava/lang/Double;

.field private mTotalDue:Ljava/lang/Double;

.field private mTotalEnergy:Ljava/lang/Integer;

.field private mTotalTax:Ljava/lang/Double;

.field private mTotalValue:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderView$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderView$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OrderView;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 237
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    .line 239
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mStoreID:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mNickName:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderNumber:Ljava/lang/String;

    .line 243
    const-class v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderValue:Ljava/lang/Double;

    .line 244
    const-class v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalValue:Ljava/lang/Double;

    .line 245
    const-class v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalTax:Ljava/lang/Double;

    .line 246
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalEnergy:Ljava/lang/Integer;

    .line 247
    const-class v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalDiscount:Ljava/lang/Double;

    .line 248
    const-class v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalDue:Ljava/lang/Double;

    .line 249
    const-class v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mDeliveryFee:Ljava/lang/Double;

    .line 251
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mProducts:Ljava/util/List;

    .line 252
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mProducts:Ljava/util/List;

    const-class v6, Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 254
    const-class v4, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderProductionResponse:Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    .line 255
    const-class v4, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 257
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mPromotionalItems:Ljava/util/List;

    .line 258
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mPromotionalItems:Ljava/util/List;

    const-class v6, Lcom/mcdonalds/sdk/modules/models/PromotionView;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 261
    .local v2, "tmpMOrderDate":J
    cmp-long v4, v2, v8

    if-nez v4, :cond_0

    move-object v4, v5

    :goto_0
    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderDate:Ljava/util/Date;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 263
    .local v0, "tmpMEstimatedDeliveryTime":J
    cmp-long v4, v0, v8

    if-nez v4, :cond_1

    :goto_1
    iput-object v5, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mEstimatedDeliveryTime:Ljava/util/Date;

    .line 265
    return-void

    .line 261
    .end local v0    # "tmpMEstimatedDeliveryTime":J
    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 263
    .restart local v0    # "tmpMEstimatedDeliveryTime":J
    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public getCheckInCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mCheckInCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryFee()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mDeliveryFee:Ljava/lang/Double;

    return-object v0
.end method

.method public getEstimatedDeliveryTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mEstimatedDeliveryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFacilityOpeningHours()Ljava/util/List;
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
    .line 290
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mFacilityOpeningHours:Ljava/util/List;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderDate:Ljava/util/Date;

    return-object v0
.end method

.method public getOrderDt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderDt:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderPaymentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderPaymentId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderProductionResponse()Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderProductionResponse:Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    return-object v0
.end method

.method public getOrderValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderValue:Ljava/lang/Double;

    return-object v0
.end method

.method public getPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    return-object v0
.end method

.method public getProductValidationErrorCode(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)I
    .locals 5
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v2, 0x1

    .line 196
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 197
    .local v0, "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {p1, v0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Lcom/mcdonalds/sdk/modules/models/ProductView;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 206
    .end local v0    # "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_1
    :goto_0
    return v2

    .line 200
    .restart local v0    # "productView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_2
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getSubProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v1

    .line 201
    .local v1, "subProductView":Lcom/mcdonalds/sdk/modules/models/ProductView;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getValidationErrorCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mProducts:Ljava/util/List;

    return-object v0
.end method

.method public getPromotionalItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PromotionView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mPromotionalItems:Ljava/util/List;

    return-object v0
.end method

.method public getStoreID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mStoreID:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDiscount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalDiscount:Ljava/lang/Double;

    return-object v0
.end method

.method public getTotalDue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalDue:Ljava/lang/Double;

    return-object v0
.end method

.method public getTotalEnergy()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalEnergy:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotalTax()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalTax:Ljava/lang/Double;

    return-object v0
.end method

.method public getTotalValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalValue:Ljava/lang/Double;

    return-object v0
.end method

.method public isConfirmationNeeded()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mConfirmationNeeded:Z

    return v0
.end method

.method public isIsLargeOrder()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mIsLargeOrder:Z

    return v0
.end method

.method public setCheckInCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkInCode"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mCheckInCode:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setConfirmationNeeded(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mConfirmationNeeded:Z

    .line 193
    return-void
.end method

.method public setDeliveryFee(Ljava/lang/Double;)V
    .locals 0
    .param p1, "mDeliveryFee"    # Ljava/lang/Double;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mDeliveryFee:Ljava/lang/Double;

    .line 125
    return-void
.end method

.method public setEstimatedDeliveryTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mEstimatedDeliveryTime"    # Ljava/util/Date;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mEstimatedDeliveryTime:Ljava/util/Date;

    .line 177
    return-void
.end method

.method public setFacilityOpeningHours(Ljava/util/List;)V
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
    .line 286
    .local p1, "facilityOpeningHours":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FulfillmentFacilityOpeningHour;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mFacilityOpeningHours:Ljava/util/List;

    .line 287
    return-void
.end method

.method public setIsLargeOrder(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mIsLargeOrder:Z

    .line 185
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mNickName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setOrderDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "mOrderDate"    # Ljava/util/Date;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderDate:Ljava/util/Date;

    .line 169
    return-void
.end method

.method public setOrderDt(Ljava/lang/String;)V
    .locals 0
    .param p1, "mOrderDt"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderDt:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setOrderNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderNumber"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderNumber:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setOrderPaymentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderPaymentId"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderPaymentId:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setOrderProductionResponse(Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;)V
    .locals 0
    .param p1, "orderProductionResponse"    # Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderProductionResponse:Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    .line 141
    return-void
.end method

.method public setOrderValue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "orderValue"    # Ljava/lang/Double;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderValue:Ljava/lang/Double;

    .line 77
    return-void
.end method

.method public setPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)V
    .locals 0
    .param p1, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 149
    return-void
.end method

.method public setProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mProducts:Ljava/util/List;

    .line 133
    return-void
.end method

.method public setPromotionalItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PromotionView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "promotionalItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PromotionView;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mPromotionalItems:Ljava/util/List;

    .line 157
    return-void
.end method

.method public setPromotions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PromotionView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "promotionsList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PromotionView;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mPromotionalItems:Ljava/util/List;

    .line 161
    return-void
.end method

.method public setStoreID(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeID"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mStoreID:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTotalDiscount(Ljava/lang/Double;)V
    .locals 0
    .param p1, "totalDiscount"    # Ljava/lang/Double;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalDiscount:Ljava/lang/Double;

    .line 109
    return-void
.end method

.method public setTotalDue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "totalDue"    # Ljava/lang/Double;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalDue:Ljava/lang/Double;

    .line 117
    return-void
.end method

.method public setTotalEnergy(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "totalEnergy"    # Ljava/lang/Integer;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalEnergy:Ljava/lang/Integer;

    .line 101
    return-void
.end method

.method public setTotalTax(Ljava/lang/Double;)V
    .locals 0
    .param p1, "totalTax"    # Ljava/lang/Double;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalTax:Ljava/lang/Double;

    .line 93
    return-void
.end method

.method public setTotalValue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "totalValue"    # Ljava/lang/Double;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalValue:Ljava/lang/Double;

    .line 85
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mStoreID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderValue:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalValue:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalTax:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalEnergy:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalDiscount:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mTotalDue:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mDeliveryFee:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mProducts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 227
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderProductionResponse:Lcom/mcdonalds/sdk/modules/models/OrderProductionResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 228
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mPaymentCard:Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 229
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mPromotionalItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 230
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mOrderDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mEstimatedDeliveryTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mEstimatedDeliveryTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mIsLargeOrder:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 233
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderView;->mConfirmationNeeded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 234
    return-void

    :cond_1
    move-wide v0, v2

    .line 230
    goto :goto_0
.end method
