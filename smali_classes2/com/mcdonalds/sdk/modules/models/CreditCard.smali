.class public Lcom/mcdonalds/sdk/modules/models/CreditCard;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "CreditCard.java"


# static fields
.field public static final TYPE_AMERICAN_EXPRESS:Ljava/lang/String; = "003"

.field public static final TYPE_JCB:Ljava/lang/String; = "007"

.field public static final TYPE_MASTER_CARD:Ljava/lang/String; = "002"

.field public static final TYPE_VISA:Ljava/lang/String; = "001"


# instance fields
.field private mAddressCity:Ljava/lang/String;

.field private mAddressCountry:Ljava/lang/String;

.field private mAddressPhone:Ljava/lang/String;

.field private mAddressPostalCode:Ljava/lang/String;

.field private mAddressState:Ljava/lang/String;

.field private mAddressStreet:Ljava/lang/String;

.field private mCardExpiryDate:Ljava/lang/String;

.field private mCardNumber:Ljava/lang/String;

.field private mCardSecurityCode:Ljava/lang/String;

.field private mCardType:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mForename:Ljava/lang/String;

.field private mNickname:Ljava/lang/String;

.field private mSurname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressCity:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressState:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressStreet:Ljava/lang/String;

    return-object v0
.end method

.method public getCardExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mCardExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardSecurityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mCardSecurityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mCardType:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getForename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mForename:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSurname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mSurname:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAddressCity"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressCity:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setAddressCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAddressCountry"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressCountry:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setAddressPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAddressPhone"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressPhone:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setAddressPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAddressPostalCode"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressPostalCode:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setAddressState(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAddressState"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressState:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setAddressStreet(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAddressStreet"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mAddressStreet:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setCardExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCardExpiryDate"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mCardExpiryDate:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCardNumber"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mCardNumber:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setCardSecurityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCardSecurityCode"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mCardSecurityCode:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCardType"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mCardType:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mEmail"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mEmail:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setForename(Ljava/lang/String;)V
    .locals 0
    .param p1, "mForename"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mForename:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNickname"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mNickname:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSurname(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSurname"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CreditCard;->mSurname:Ljava/lang/String;

    .line 45
    return-void
.end method
