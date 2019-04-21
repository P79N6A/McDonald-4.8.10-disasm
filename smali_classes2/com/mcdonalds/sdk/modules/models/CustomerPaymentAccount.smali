.class public Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "CustomerPaymentAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mCustomerPaymentMethodId:I

.field private mExpired:Z

.field private mNickName:Ljava/lang/String;

.field private mOneTimePayment:Z

.field private mPaymentMethodId:I

.field private mPaymentMode:Ljava/lang/String;

.field private mPreferred:Z

.field private mSchemaId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 117
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mExpired:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPreferred:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mOneTimePayment:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mAccountId:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mNickName:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mCustomerPaymentMethodId:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPaymentMethodId:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mSchemaId:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPaymentMode:Ljava/lang/String;

    .line 129
    return-void

    :cond_0
    move v0, v2

    .line 120
    goto :goto_0

    :cond_1
    move v0, v2

    .line 121
    goto :goto_1

    :cond_2
    move v1, v2

    .line 122
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerPaymentMethodId()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mCustomerPaymentMethodId:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPaymentMethodId:I

    return v0
.end method

.method public getPaymentMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPaymentMode:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mSchemaId:I

    return v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mExpired:Z

    return v0
.end method

.method public isOneTimePayment()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mOneTimePayment:Z

    return v0
.end method

.method public isPreferred()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPreferred:Z

    return v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mAccountId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setCustomerPaymentMethodId(I)V
    .locals 0
    .param p1, "customerPaymentMethodId"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mCustomerPaymentMethodId:I

    .line 71
    return-void
.end method

.method public setExpired(Z)V
    .locals 0
    .param p1, "expired"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mExpired:Z

    .line 31
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mNickName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setOneTimePayment(Z)V
    .locals 0
    .param p1, "oneTimePayment"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mOneTimePayment:Z

    .line 47
    return-void
.end method

.method public setPaymentMethodId(I)V
    .locals 0
    .param p1, "paymentMethodId"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPaymentMethodId:I

    .line 79
    return-void
.end method

.method public setPaymentMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentMode"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPaymentMode:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setPreferred(Z)V
    .locals 0
    .param p1, "preferred"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPreferred:Z

    .line 39
    return-void
.end method

.method public setSchemaId(I)V
    .locals 0
    .param p1, "schemaId"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mSchemaId:I

    .line 87
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mExpired:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 106
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPreferred:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mOneTimePayment:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mAccountId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mCustomerPaymentMethodId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPaymentMethodId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mSchemaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->mPaymentMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return-void

    :cond_0
    move v0, v2

    .line 105
    goto :goto_0

    :cond_1
    move v0, v2

    .line 106
    goto :goto_1

    :cond_2
    move v1, v2

    .line 107
    goto :goto_2
.end method
