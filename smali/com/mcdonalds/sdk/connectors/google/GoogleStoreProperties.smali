.class public Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;
.super Ljava/lang/Object;
.source "GoogleStoreProperties.java"


# instance fields
.field private mAddressLine:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AddressLine"
    .end annotation
.end field

.field private mApplicationURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "applicationURL"
    .end annotation
.end field

.field private mCity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PrimaryCity"
    .end annotation
.end field

.field private mCountryRegion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CountryRegion"
    .end annotation
.end field

.field private mDistance:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "distance"
    .end annotation
.end field

.field private mDriveThru:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DriveThru"
    .end annotation
.end field

.field private mEntityID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EntityID"
    .end annotation
.end field

.field private mGiftCards:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GiftCards"
    .end annotation
.end field

.field private mGx_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gx_id"
    .end annotation
.end field

.field private mMobileOffers:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MobileOffers"
    .end annotation
.end field

.field private mMobileOrdering:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MobileOrdering"
    .end annotation
.end field

.field private mNatlStrNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NatlStrNumber"
    .end annotation
.end field

.field private mPhoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PhoneNumber"
    .end annotation
.end field

.field private mPlayLand:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PlayLand"
    .end annotation
.end field

.field private mPostalCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PostalCode"
    .end annotation
.end field

.field private mRegion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Region"
    .end annotation
.end field

.field private mSiteIdNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SiteIdNumber"
    .end annotation
.end field

.field private mStoreType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreType"
    .end annotation
.end field

.field private mStoreURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storeURL"
    .end annotation
.end field

.field private mSubdivision:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Subdivision"
    .end annotation
.end field

.field private mWifi:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "WiFi"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mAddressLine:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mApplicationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mCountryRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mDistance:D

    return-wide v0
.end method

.method public getDriveThru()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mDriveThru:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mEntityID:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftCards()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mGiftCards:Ljava/lang/String;

    return-object v0
.end method

.method public getGxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mGx_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileOffers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mMobileOffers:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileOrdering()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mMobileOrdering:Ljava/lang/String;

    return-object v0
.end method

.method public getNatlStrNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mNatlStrNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayLand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mPlayLand:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteIdNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mSiteIdNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mStoreURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSubdivision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mSubdivision:Ljava/lang/String;

    return-object v0
.end method

.method public getWifi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mWifi:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressLine"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mAddressLine:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setApplicationURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationURL"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mApplicationURL:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mCity:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setCountryRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryRegion"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mCountryRegion:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setDistance(D)V
    .locals 1
    .param p1, "distance"    # D

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mDistance:D

    .line 222
    return-void
.end method

.method public setDriveThru(Ljava/lang/String;)V
    .locals 0
    .param p1, "driveThru"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mDriveThru:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setEntityID(Ljava/lang/String;)V
    .locals 0
    .param p1, "entityID"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mEntityID:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setGiftCards(Ljava/lang/String;)V
    .locals 0
    .param p1, "giftCards"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mGiftCards:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setGxId(Ljava/lang/String;)V
    .locals 0
    .param p1, "gx_id"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mGx_id:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setMobileOffers(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobileOffers"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mMobileOffers:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setMobileOrdering(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobileOrdering"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mMobileOrdering:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setNatlStrNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "natlStrNumber"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mNatlStrNumber:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mPhoneNumber:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setPlayLand(Ljava/lang/String;)V
    .locals 0
    .param p1, "playLand"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mPlayLand:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mPostalCode:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mRegion:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setSiteIdNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "siteIdNumber"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mSiteIdNumber:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setStoreType(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeType"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mStoreType:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setStoreURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeURL"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mStoreURL:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setSubdivision(Ljava/lang/String;)V
    .locals 0
    .param p1, "subdivision"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mSubdivision:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setWifi(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifi"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleStoreProperties;->mWifi:Ljava/lang/String;

    .line 134
    return-void
.end method
