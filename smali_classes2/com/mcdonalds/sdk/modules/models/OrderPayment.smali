.class public Lcom/mcdonalds/sdk/modules/models/OrderPayment;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OrderPayment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_PAYMENT_DATA_ID:I = -0x1


# instance fields
.field private mCVV:Ljava/lang/String;

.field private mCustomerPaymentMethodId:I

.field private mDeviceFingerPrintId:Ljava/lang/String;

.field private mIpAddress:Ljava/lang/String;

.field private mNewCardStub:Z

.field private mOrderPaymentId:Ljava/lang/String;

.field private mPOD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

.field private mPaymentDataId:I

.field private mPaymentMethodId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderPayment$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPaymentDataId:I

    .line 142
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 144
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 26
    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPaymentDataId:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .local v0, "tmpMPOD":I
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPOD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mCustomerPaymentMethodId:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPaymentMethodId:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mOrderPaymentId:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPaymentDataId:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mCVV:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mIpAddress:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mDeviceFingerPrintId:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mNewCardStub:Z

    .line 155
    return-void

    .line 146
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->values()[Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0

    .line 154
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static fromCashPayment(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    .locals 2
    .param p0, "cashPaymentMethodId"    # Ljava/lang/Integer;

    .prologue
    .line 44
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;-><init>()V

    .line 45
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPaymentMethodId(I)V

    .line 47
    return-object v0
.end method

.method public static fromPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    .locals 2
    .param p0, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    .line 34
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;-><init>()V

    .line 35
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIdentifier()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setCustomerPaymentMethodId(I)V

    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getPaymentMethodId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setPaymentMethodId(I)V

    .line 37
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->isNewCardStub()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->setNewCardStub(Z)V

    .line 38
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getCVV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mCVV:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerPaymentMethodId()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mCustomerPaymentMethodId:I

    return v0
.end method

.method public getDeviceFingerPrintId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mDeviceFingerPrintId:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderPaymentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mOrderPaymentId:Ljava/lang/String;

    return-object v0
.end method

.method public getPOD()Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPOD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    return-object v0
.end method

.method public getPaymentDataId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPaymentDataId:I

    return v0
.end method

.method public getPaymentMethodId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPaymentMethodId:I

    return v0
.end method

.method public isNewCardStub()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mNewCardStub:Z

    return v0
.end method

.method public setCVV(Ljava/lang/String;)V
    .locals 0
    .param p1, "CVV"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mCVV:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setCustomerPaymentMethodId(I)V
    .locals 0
    .param p1, "customerPaymentMethodId"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mCustomerPaymentMethodId:I

    .line 64
    return-void
.end method

.method public setDeviceFingerPrintId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceFingerPrintId"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mDeviceFingerPrintId:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mIpAddress:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setNewCardStub(Z)V
    .locals 0
    .param p1, "newCardStub"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mNewCardStub:Z

    .line 120
    return-void
.end method

.method public setOrderPaymentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderPaymentId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mOrderPaymentId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPOD(Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;)V
    .locals 0
    .param p1, "POD"    # Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPOD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    .line 56
    return-void
.end method

.method public setPaymentDataId(I)V
    .locals 0
    .param p1, "paymentDataId"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPaymentDataId:I

    .line 88
    return-void
.end method

.method public setPaymentMethodId(I)V
    .locals 0
    .param p1, "paymentMethodId"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPaymentMethodId:I

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPOD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mCustomerPaymentMethodId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPaymentMethodId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mOrderPaymentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPaymentDataId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mCVV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mDeviceFingerPrintId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mNewCardStub:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 138
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mNewCardStub:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderPayment;->mPOD:Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PointOfDistribution;->ordinal()I

    move-result v0

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
