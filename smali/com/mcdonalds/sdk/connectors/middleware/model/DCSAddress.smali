.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;
.super Ljava/lang/Object;
.source "DCSAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;
    }
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE_CODE:Ljava/lang/String; = "zh"

.field private static final KEY_CONFIG_LANGUAGE_NAME:Ljava/lang/String; = "connectors.Middleware.languageName"

.field private static final TYPE_BILLING:Ljava/lang/String; = "billing"

.field private static final TYPE_DELIVERY:Ljava/lang/String; = "delivery"

.field private static final TYPE_HOME1:Ljava/lang/String; = "home1"

.field private static final TYPE_HOME2:Ljava/lang/String; = "home2"

.field private static final TYPE_OFFICE1:Ljava/lang/String; = "ofice1"

.field private static final TYPE_OFFICE2:Ljava/lang/String; = "ofice2"

.field private static final TYPE_OTHER:Ljava/lang/String; = "other"


# instance fields
.field public activeInd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activeInd"
    .end annotation
.end field

.field public allowPromotions:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowPromotions"
    .end annotation
.end field

.field public details:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;",
            ">;"
        }
    .end annotation
.end field

.field public primaryInd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primaryInd"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addressType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCustomerAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;
    .locals 2
    .param p0, "customerAddress"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    .line 50
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;-><init>()V

    .line 52
    .local v0, "dcsAddress":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getDCSAddressType(Lcom/mcdonalds/sdk/modules/models/AddressType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->type:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Y"

    :goto_0
    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->primaryInd:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isAllowPromotionsToAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Y"

    :goto_1
    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->allowPromotions:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getDCSAddressDetails(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->details:Ljava/util/List;

    .line 58
    return-object v0

    .line 53
    :cond_0
    const-string v1, "N"

    goto :goto_0

    .line 54
    :cond_1
    const-string v1, "N"

    goto :goto_1
.end method

.method public static fromZipCode(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;
    .locals 2
    .param p0, "zipCode"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;-><init>()V

    .line 64
    .local v0, "dcsAddress":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;
    const-string v1, "other"

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->type:Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getDCSAddressDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->details:Ljava/util/List;

    .line 67
    return-object v0
.end method

.method private getAddressAliasValueList(Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "type"    # Lcom/mcdonalds/sdk/modules/models/AddressAliasType;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/AddressAliasType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;-><init>()V

    .line 269
    .local v0, "aliasValue":Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->setAliasType(Lcom/mcdonalds/sdk/modules/models/AddressAliasType;)V

    .line 270
    invoke-virtual {v0, p2}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->setAlias(Ljava/lang/String;)V

    .line 271
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;
    .locals 2
    .param p1, "elementType"    # Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    .param p2, "aliasType"    # Lcom/mcdonalds/sdk/modules/models/AddressAliasType;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;-><init>()V

    .line 262
    .local v0, "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->setAddressElementType(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)V

    .line 263
    invoke-direct {p0, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressAliasValueList(Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->setValue(Ljava/util/List;)V

    .line 264
    return-object v0
.end method

.method private static getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElement;)Ljava/lang/String;
    .locals 3
    .param p0, "element"    # Lcom/mcdonalds/sdk/modules/models/AddressElement;

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "aliasValues":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;>;"
    invoke-static {v1}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    .line 200
    .local v0, "aliasValue":Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAlias()Ljava/lang/String;

    move-result-object v2

    .line 202
    .end local v0    # "aliasValue":Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getAddressElements(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;)Ljava/util/List;
    .locals 6
    .param p1, "dcsAddressDetails"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;->locale:Ljava/lang/String;

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    .line 232
    .local v1, "type":Lcom/mcdonalds/sdk/modules/models/AddressAliasType;
    :goto_0
    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;->addressLineDetails:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;

    .line 234
    .local v0, "addressLineDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;
    const/16 v2, 0x16

    new-array v2, v2, [Lcom/mcdonalds/sdk/modules/models/AddressElement;

    const/4 v3, 0x0

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Area:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->area:Ljava/lang/String;

    .line 235
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Building:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->building:Ljava/lang/String;

    .line 236
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->City:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->city:Ljava/lang/String;

    .line 237
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Company:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->company:Ljava/lang/String;

    .line 238
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Department:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->department:Ljava/lang/String;

    .line 239
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->District:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->district:Ljava/lang/String;

    .line 240
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Garden:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->garden:Ljava/lang/String;

    .line 241
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->State:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->state:Ljava/lang/String;

    .line 242
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->OneLineAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->addressLine1:Ljava/lang/String;

    .line 243
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->StreetType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->streetType:Ljava/lang/String;

    .line 244
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Suburb:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->suburb:Ljava/lang/String;

    .line 245
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ZipCode:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->zipCode:Ljava/lang/String;

    .line 246
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Block:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->block:Ljava/lang/String;

    .line 247
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Level:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->level:Ljava/lang/String;

    .line 248
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Unit:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->unit:Ljava/lang/String;

    .line 249
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->HouseNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->houseNumber:Ljava/lang/String;

    .line 250
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->AddressPreferenceTypeID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->addressPreferenceTypeID:Ljava/lang/String;

    .line 251
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->StreetLonNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->streetLonNumber:Ljava/lang/String;

    .line 252
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Remark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->remark:Ljava/lang/String;

    .line 253
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Latitude:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->latitude:Ljava/lang/String;

    .line 254
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Longitude:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->longitude:Ljava/lang/String;

    .line 255
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Landmark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    iget-object v5, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->landmark:Ljava/lang/String;

    .line 256
    invoke-direct {p0, v4, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElement(Lcom/mcdonalds/sdk/modules/models/AddressElementType;Lcom/mcdonalds/sdk/modules/models/AddressAliasType;Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElement;

    move-result-object v4

    aput-object v4, v2, v3

    .line 234
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 229
    .end local v0    # "addressLineDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;
    .end local v1    # "type":Lcom/mcdonalds/sdk/modules/models/AddressAliasType;
    :cond_0
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->English:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    .restart local v1    # "type":Lcom/mcdonalds/sdk/modules/models/AddressAliasType;
    goto/16 :goto_0
.end method

.method private getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->type:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 220
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Other:Lcom/mcdonalds/sdk/modules/models/AddressType;

    :goto_1
    return-object v0

    .line 206
    :sswitch_0
    const-string v2, "home1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "ofice1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "home2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "ofice2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "billing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "delivery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 208
    :pswitch_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Home1:Lcom/mcdonalds/sdk/modules/models/AddressType;

    goto :goto_1

    .line 210
    :pswitch_1
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Office1:Lcom/mcdonalds/sdk/modules/models/AddressType;

    goto :goto_1

    .line 212
    :pswitch_2
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Home2:Lcom/mcdonalds/sdk/modules/models/AddressType;

    goto :goto_1

    .line 214
    :pswitch_3
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Office2:Lcom/mcdonalds/sdk/modules/models/AddressType;

    goto :goto_1

    .line 216
    :pswitch_4
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Billing:Lcom/mcdonalds/sdk/modules/models/AddressType;

    goto :goto_1

    .line 218
    :pswitch_5
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressType;->Delivery:Lcom/mcdonalds/sdk/modules/models/AddressType;

    goto :goto_1

    .line 206
    :sswitch_data_0
    .sparse-switch
        -0x3cc77aa3 -> :sswitch_1
        -0x3cc77aa2 -> :sswitch_3
        -0x68bdd85 -> :sswitch_4
        0x5eda732 -> :sswitch_0
        0x5eda733 -> :sswitch_2
        0x31151bf4 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getDCSAddressDetails(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "zipCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;-><init>()V

    .line 107
    .local v1, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;->locale:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;-><init>()V

    .line 110
    .local v0, "addressLineDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;
    iput-object p0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->zipCode:Ljava/lang/String;

    .line 111
    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;->addressLineDetails:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;

    .line 112
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static getDCSAddressDetails(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElement;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "addressElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;-><init>()V

    .line 118
    .local v1, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;->locale:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;-><init>()V

    .line 121
    .local v0, "addressLineDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    .line 122
    .local v2, "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElement;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "value":Ljava/lang/String;
    sget-object v5, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$1;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->area:Ljava/lang/String;

    goto :goto_0

    .line 128
    :pswitch_1
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->building:Ljava/lang/String;

    goto :goto_0

    .line 131
    :pswitch_2
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->city:Ljava/lang/String;

    goto :goto_0

    .line 134
    :pswitch_3
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->company:Ljava/lang/String;

    goto :goto_0

    .line 137
    :pswitch_4
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->department:Ljava/lang/String;

    goto :goto_0

    .line 140
    :pswitch_5
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->district:Ljava/lang/String;

    goto :goto_0

    .line 143
    :pswitch_6
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->garden:Ljava/lang/String;

    goto :goto_0

    .line 146
    :pswitch_7
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->state:Ljava/lang/String;

    goto :goto_0

    .line 149
    :pswitch_8
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->addressLine1:Ljava/lang/String;

    goto :goto_0

    .line 152
    :pswitch_9
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->streetType:Ljava/lang/String;

    goto :goto_0

    .line 155
    :pswitch_a
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->suburb:Ljava/lang/String;

    goto :goto_0

    .line 158
    :pswitch_b
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->zipCode:Ljava/lang/String;

    goto :goto_0

    .line 161
    :pswitch_c
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->block:Ljava/lang/String;

    goto :goto_0

    .line 164
    :pswitch_d
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->level:Ljava/lang/String;

    goto :goto_0

    .line 167
    :pswitch_e
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->unit:Ljava/lang/String;

    goto :goto_0

    .line 170
    :pswitch_f
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->houseNumber:Ljava/lang/String;

    goto :goto_0

    .line 173
    :pswitch_10
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->addressPreferenceTypeID:Ljava/lang/String;

    goto :goto_0

    .line 176
    :pswitch_11
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->streetLonNumber:Ljava/lang/String;

    goto :goto_0

    .line 179
    :pswitch_12
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->remark:Ljava/lang/String;

    goto :goto_0

    .line 182
    :pswitch_13
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->latitude:Ljava/lang/String;

    goto :goto_0

    .line 185
    :pswitch_14
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->longitude:Ljava/lang/String;

    goto :goto_0

    .line 188
    :pswitch_15
    iput-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;->landmark:Ljava/lang/String;

    goto :goto_0

    .line 191
    .end local v2    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    iput-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;->addressLineDetails:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails$DCSAddressLineDetails;

    .line 193
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private static getDCSAddressType(Lcom/mcdonalds/sdk/modules/models/AddressType;)Ljava/lang/String;
    .locals 2
    .param p0, "addressType"    # Lcom/mcdonalds/sdk/modules/models/AddressType;

    .prologue
    .line 86
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$1;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressType:[I

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/AddressType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    const-string v0, "other"

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    const-string v0, "home1"

    goto :goto_0

    .line 90
    :pswitch_1
    const-string v0, "ofice1"

    goto :goto_0

    .line 92
    :pswitch_2
    const-string v0, "home2"

    goto :goto_0

    .line 94
    :pswitch_3
    const-string v0, "ofice2"

    goto :goto_0

    .line 96
    :pswitch_4
    const-string v0, "billing"

    goto :goto_0

    .line 98
    :pswitch_5
    const-string v0, "delivery"

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public toCustomerAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 71
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;-><init>()V

    .line 72
    .local v0, "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAddressType(Lcom/mcdonalds/sdk/modules/models/AddressType;)V

    .line 74
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->allowPromotions:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->allowPromotions:Ljava/lang/String;

    const-string v7, "Y"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v4

    .line 75
    .local v2, "allowPromotionsToAddress":Z
    :goto_0
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAllowPromotionsToAddress(Z)V

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "addressElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->details:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;

    .line 78
    .local v3, "dcsAddressDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;
    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->getAddressElements(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .end local v1    # "addressElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    .end local v2    # "allowPromotionsToAddress":Z
    .end local v3    # "dcsAddressDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress$DCSAddressDetails;
    :cond_0
    move v2, v5

    .line 74
    goto :goto_0

    .line 80
    .restart local v1    # "addressElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    .restart local v2    # "allowPromotionsToAddress":Z
    :cond_1
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAddressElements(Ljava/util/List;)V

    .line 81
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->primaryInd:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSAddress;->primaryInd:Ljava/lang/String;

    const-string v7, "Y"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setDefaultAddress(Z)V

    .line 82
    return-object v0

    :cond_2
    move v4, v5

    .line 81
    goto :goto_2
.end method
