.class public Lcom/mcdonalds/sdk/modules/models/PaymentCard;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "PaymentCard.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mExpiration:Ljava/lang/String;

.field private mHolderName:Ljava/lang/String;

.field private mIdentifier:Ljava/lang/Integer;

.field private mIsOneTimePayment:Ljava/lang/Boolean;

.field private mIsPreferred:Ljava/lang/Boolean;

.field private mIsValid:Ljava/lang/Boolean;

.field private mNewCardStub:Z

.field private mNickName:Ljava/lang/String;

.field private mPaymentMethodId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PaymentCard$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIdentifier:Ljava/lang/Integer;

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mPaymentMethodId:Ljava/lang/Integer;

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsPreferred:Ljava/lang/Boolean;

    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsValid:Ljava/lang/Boolean;

    .line 121
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIdentifier:Ljava/lang/Integer;

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mPaymentMethodId:Ljava/lang/Integer;

    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsPreferred:Ljava/lang/Boolean;

    .line 16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsValid:Ljava/lang/Boolean;

    .line 124
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIdentifier:Ljava/lang/Integer;

    .line 125
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mPaymentMethodId:Ljava/lang/Integer;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mAlias:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mExpiration:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mHolderName:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mNickName:Ljava/lang/String;

    .line 130
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsPreferred:Ljava/lang/Boolean;

    .line 131
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsValid:Ljava/lang/Boolean;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mNewCardStub:Z

    .line 133
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsOneTimePayment:Ljava/lang/Boolean;

    .line 134
    return-void

    :cond_0
    move v0, v2

    .line 132
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 148
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    if-nez v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 152
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .line 154
    .local v0, "other":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIdentifier:Ljava/lang/Integer;

    if-nez v2, :cond_b

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIdentifier()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mPaymentMethodId:Ljava/lang/Integer;

    if-nez v2, :cond_c

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getPaymentMethodId()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 160
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mAlias:Ljava/lang/String;

    if-nez v2, :cond_d

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getAlias()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 163
    :cond_4
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mExpiration:Ljava/lang/String;

    if-nez v2, :cond_e

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getExpiration()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 166
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mHolderName:Ljava/lang/String;

    if-nez v2, :cond_f

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getHolderName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 169
    :cond_6
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mNickName:Ljava/lang/String;

    if-nez v2, :cond_10

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 172
    :cond_7
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsPreferred:Ljava/lang/Boolean;

    if-nez v2, :cond_11

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->isPreferred()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    .line 175
    :cond_8
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsValid:Ljava/lang/Boolean;

    if-nez v2, :cond_12

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIsValid()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    .line 179
    :cond_9
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsOneTimePayment:Ljava/lang/Boolean;

    if-nez v2, :cond_13

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIsOneTimePayment()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    .line 183
    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    .line 154
    :cond_b
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIdentifier:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIdentifier()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 157
    :cond_c
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mPaymentMethodId:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getPaymentMethodId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 160
    :cond_d
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    .line 163
    :cond_e
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mExpiration:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getExpiration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 166
    :cond_f
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mHolderName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getHolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    .line 169
    :cond_10
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mNickName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    .line 172
    :cond_11
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsPreferred:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->isPreferred()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 175
    :cond_12
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsValid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIsValid()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    .line 179
    :cond_13
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsOneTimePayment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIsOneTimePayment()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mExpiration:Ljava/lang/String;

    return-object v0
.end method

.method public getHolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mHolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIdentifier:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsOneTimePayment()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsOneTimePayment:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsValid()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsValid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mPaymentMethodId:Ljava/lang/Integer;

    return-object v0
.end method

.method public isNewCardStub()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mNewCardStub:Z

    return v0
.end method

.method public isPreferred()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsPreferred:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mAlias:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setExpiration(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiration"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mExpiration:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setHolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "holderName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mHolderName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setIdentifier(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/Integer;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIdentifier:Ljava/lang/Integer;

    .line 27
    return-void
.end method

.method public setIsOneTimePayment(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isOneTimePayment"    # Ljava/lang/Boolean;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsOneTimePayment:Ljava/lang/Boolean;

    .line 99
    return-void
.end method

.method public setIsPreferred(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isPreferred"    # Ljava/lang/Boolean;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsPreferred:Ljava/lang/Boolean;

    .line 75
    return-void
.end method

.method public setIsValid(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "mIsValid"    # Ljava/lang/Boolean;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsValid:Ljava/lang/Boolean;

    .line 83
    return-void
.end method

.method public setNewCardStub(Z)V
    .locals 0
    .param p1, "newCardStub"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mNewCardStub:Z

    .line 91
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mNickName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPaymentMethodId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "paymentMethodId"    # Ljava/lang/Integer;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mPaymentMethodId:Ljava/lang/Integer;

    .line 35
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIdentifier:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mPaymentMethodId:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mExpiration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mHolderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsPreferred:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsValid:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 116
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mNewCardStub:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->mIsOneTimePayment:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 118
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
