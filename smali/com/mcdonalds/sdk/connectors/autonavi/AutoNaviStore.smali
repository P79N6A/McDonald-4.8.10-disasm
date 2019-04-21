.class public Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;
.super Ljava/lang/Object;
.source "AutoNaviStore.java"


# static fields
.field private static s24Hours:Ljava/lang/String;

.field private static sDelivery:Ljava/lang/String;

.field private static sDriveThru:Ljava/lang/String;

.field private static sFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFiltersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sKiosk:Ljava/lang/String;

.field private static sMcCafe:Ljava/lang/String;

.field private static sMobileOffer:Ljava/lang/String;

.field private static sMobileOrdering:Ljava/lang/String;

.field private static sOpenAllDay:Ljava/lang/String;

.field private static sPlayland:Ljava/lang/String;

.field private static sWiFi:Ljava/lang/String;


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_address"
    .end annotation
.end field

.field private chineseAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreAddress_CN"
    .end annotation
.end field

.field private chineseCityName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CityName_CN"
    .end annotation
.end field

.field private chineseName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreName_CN"
    .end annotation
.end field

.field private createtime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_createtime"
    .end annotation
.end field

.field private distance:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_distance"
    .end annotation
.end field

.field private driveThrough:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsDriveThrough"
    .end annotation
.end field

.field private englishAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreAddress_EN"
    .end annotation
.end field

.field private englishCityName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CityName_EN"
    .end annotation
.end field

.field private englishName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreName_EN"
    .end annotation
.end field

.field private hasMDS:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HasMDS"
    .end annotation
.end field

.field private hasMobileOffers:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HasMobileOffers"
    .end annotation
.end field

.field private hasMobileOrdering:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HasMobileOrdering"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StoreCode"
    .end annotation
.end field

.field private kiosk:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HasKIOSK"
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_location"
    .end annotation
.end field

.field private locationX:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LocationX"
    .end annotation
.end field

.field private locationY:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LocationY"
    .end annotation
.end field

.field private mcCafe:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HasMcCafe"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_name"
    .end annotation
.end field

.field private open:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsOpen"
    .end annotation
.end field

.field private open24Hours:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Is24"
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PhoneNumber"
    .end annotation
.end field

.field private playground:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HasPlayland"
    .end annotation
.end field

.field private updatetime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_updatetime"
    .end annotation
.end field

.field private wifi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HasWifi"
    .end annotation
.end field

.field private zipCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ZipCode"
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

.method public static getFilterKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    .line 310
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFiltersMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getFilters()Ljava/util/List;
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
    .line 306
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFilters:Ljava/util/List;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x7

    .line 126
    sget v0, Lcom/mcdonalds/sdk/R$string;->sl_feature_wifi:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sWiFi:Ljava/lang/String;

    .line 127
    sget v0, Lcom/mcdonalds/sdk/R$string;->sl_feature_playland:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sPlayland:Ljava/lang/String;

    .line 128
    sget v0, Lcom/mcdonalds/sdk/R$string;->sl_feature_drivethru:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sDriveThru:Ljava/lang/String;

    .line 129
    sget v0, Lcom/mcdonalds/sdk/R$string;->facility_delivery:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sDelivery:Ljava/lang/String;

    .line 130
    sget v0, Lcom/mcdonalds/sdk/R$string;->facility_mobile_ordering:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMobileOrdering:Ljava/lang/String;

    .line 131
    sget v0, Lcom/mcdonalds/sdk/R$string;->facility_mobile_offers:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMobileOffer:Ljava/lang/String;

    .line 132
    sget v0, Lcom/mcdonalds/sdk/R$string;->facility_mccafe:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMcCafe:Ljava/lang/String;

    .line 133
    sget v0, Lcom/mcdonalds/sdk/R$string;->facility_has_kiosk:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sKiosk:Ljava/lang/String;

    .line 134
    sget v0, Lcom/mcdonalds/sdk/R$string;->facility_24_hours:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->s24Hours:Ljava/lang/String;

    .line 135
    sget v0, Lcom/mcdonalds/sdk/R$string;->label_open_all_day:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sOpenAllDay:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFilters:Ljava/util/List;

    .line 138
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFilters:Ljava/util/List;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sWiFi:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFilters:Ljava/util/List;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sPlayland:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFilters:Ljava/util/List;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sDriveThru:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFilters:Ljava/util/List;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sDelivery:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFilters:Ljava/util/List;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMobileOrdering:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFilters:Ljava/util/List;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMobileOffer:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFilters:Ljava/util/List;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMcCafe:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFilters:Ljava/util/List;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sKiosk:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFilters:Ljava/util/List;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->s24Hours:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFiltersMap:Ljava/util/Map;

    .line 150
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFiltersMap:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sWiFi:Ljava/lang/String;

    const-string v2, "HasWifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFiltersMap:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sPlayland:Ljava/lang/String;

    const-string v2, "HasPlayland"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFiltersMap:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sDriveThru:Ljava/lang/String;

    const-string v2, "IsDriveThrough"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFiltersMap:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sDelivery:Ljava/lang/String;

    const-string v2, "HasMDS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFiltersMap:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMobileOrdering:Ljava/lang/String;

    const-string v2, "HasMobileOrdering"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFiltersMap:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMobileOffer:Ljava/lang/String;

    const-string v2, "HasMobileOffers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFiltersMap:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMcCafe:Ljava/lang/String;

    const-string v2, "HasMcCafe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFiltersMap:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sKiosk:Ljava/lang/String;

    const-string v2, "HasKIOSK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sFiltersMap:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->s24Hours:Ljava/lang/String;

    const-string v2, "Is24"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method private setChineseData(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 1
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->chineseAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setAddress1(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->chineseCityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setCity(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private setEnglishData(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 1
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->englishAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->englishAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setAddress1(Ljava/lang/String;)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->englishCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->englishCityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setCity(Ljava/lang/String;)V

    .line 226
    :goto_1
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->chineseAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setAddress1(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->chineseCityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setCity(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setStoreFacilities(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 2
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "facilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sWiFi:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasPlayground()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sPlayland:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasDriveThrough()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sDriveThru:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMDS()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sDelivery:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMobileOrdering()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMobileOrdering:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMobileOffers()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 258
    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMobileOffer:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->isMcCafe()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sMcCafe:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_6
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasKiosk()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 266
    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sKiosk:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_7
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->isOpen24Hours()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 270
    sget-object v1, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->s24Hours:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_8
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setFacilityNames(Ljava/util/List;)V

    .line 274
    return-void
.end method

.method private setStoreLocation(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 10
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 285
    iget-wide v6, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->locationY:D

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_1

    .line 287
    iget-wide v6, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->locationY:D

    invoke-virtual {p1, v6, v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLongitude(D)V

    .line 288
    iget-wide v6, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->locationX:D

    invoke-virtual {p1, v6, v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLatitude(D)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->location:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "loc":[Ljava/lang/String;
    array-length v3, v2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 296
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 297
    .local v4, "longitude":D
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 299
    .local v0, "latitude":D
    invoke-virtual {p1, v4, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLongitude(D)V

    .line 300
    invoke-virtual {p1, v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLatitude(D)V

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getChineseAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->chineseAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getChineseCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->chineseCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getChineseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->chineseName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->createtime:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 523
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->distance:D

    return-wide v0
.end method

.method public getEnglishAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->englishAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEnglishCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->englishCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->englishName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->id:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationX()D
    .locals 2

    .prologue
    .line 483
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->locationX:D

    return-wide v0
.end method

.method public getLocationY()D
    .locals 2

    .prologue
    .line 491
    iget-wide v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->locationY:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->open:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->updatetime:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->zipCode:Ljava/lang/String;

    return-object v0
.end method

.method public hasDelivery()Z
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMDS()Z

    move-result v0

    return v0
.end method

.method public hasDriveThrough()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 375
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->driveThrough:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKiosk()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 443
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->kiosk:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMDS()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 347
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMDS:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMobileOffers()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 359
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMobileOffers:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMobileOrdering()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 367
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMobileOrdering:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlayground()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 467
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->playground:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWifi()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 419
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->wifi:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMcCafe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 459
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->mcCafe:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen24Hours()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 499
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->open24Hours:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->address:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setChineseAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "chineseAddress"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->chineseAddress:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setChineseCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "chineseCityName"    # Ljava/lang/String;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->chineseCityName:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setCreatetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createtime"    # Ljava/lang/String;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->createtime:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public setDistance(D)V
    .locals 1
    .param p1, "distance"    # D

    .prologue
    .line 527
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->distance:D

    .line 528
    return-void
.end method

.method public setDriveThrough(I)V
    .locals 0
    .param p1, "driveThrough"    # I

    .prologue
    .line 379
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->driveThrough:I

    .line 380
    return-void
.end method

.method public setEnglishAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "englishAddress"    # Ljava/lang/String;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->englishAddress:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public setEnglishCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "englishCityName"    # Ljava/lang/String;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->englishCityName:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public setEnglishName(Ljava/lang/String;)V
    .locals 0
    .param p1, "englishName"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->englishName:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setKiosk(I)V
    .locals 0
    .param p1, "kiosk"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->kiosk:I

    .line 448
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->location:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setLocationX(D)V
    .locals 1
    .param p1, "locationX"    # D

    .prologue
    .line 487
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->locationX:D

    .line 488
    return-void
.end method

.method public setLocationY(D)V
    .locals 1
    .param p1, "locationY"    # D

    .prologue
    .line 495
    iput-wide p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->locationY:D

    .line 496
    return-void
.end method

.method public setMDS(I)V
    .locals 0
    .param p1, "mds"    # I

    .prologue
    .line 351
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMDS:I

    .line 352
    return-void
.end method

.method public setMcCafe(I)V
    .locals 0
    .param p1, "mcCafe"    # I

    .prologue
    .line 463
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->mcCafe:I

    .line 464
    return-void
.end method

.method public setMobileOffers(I)V
    .locals 0
    .param p1, "mobileOffers"    # I

    .prologue
    .line 363
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMobileOffers:I

    .line 364
    return-void
.end method

.method public setMobileOrdering(I)V
    .locals 0
    .param p1, "mobileOredring"    # I

    .prologue
    .line 371
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMobileOrdering:I

    .line 372
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->name:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setOpen(Ljava/lang/String;)V
    .locals 0
    .param p1, "open"    # Ljava/lang/String;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->open:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setOpen24Hours(I)V
    .locals 0
    .param p1, "open24Hours"    # I

    .prologue
    .line 503
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->open24Hours:I

    .line 504
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->phoneNumber:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setPlayground(I)V
    .locals 0
    .param p1, "playground"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->playground:I

    .line 472
    return-void
.end method

.method public setUpdatetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatetime"    # Ljava/lang/String;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->updatetime:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public setWifi(I)V
    .locals 0
    .param p1, "wifi"    # I

    .prologue
    .line 423
    iput p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->wifi:I

    .line 424
    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "zipCode"    # Ljava/lang/String;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->zipCode:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public toStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 6

    .prologue
    .line 174
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 177
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 179
    .local v1, "inEnglish":Z
    new-instance v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;-><init>()V

    .line 180
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->id:I

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreId(I)V

    .line 182
    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->setEnglishData(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 188
    :goto_0
    iget-wide v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->distance:D

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setDistance(D)V

    .line 189
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPhoneNumber(Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->zipCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPostalCode(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMobileOffers()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setHasMobileOffers(Ljava/lang/Boolean;)V

    .line 192
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->hasMobileOrdering()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setHasMobileOrdering(Ljava/lang/Boolean;)V

    .line 193
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->isOpen24Hours()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v2, "listHours":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v4, 0x7

    if-ge v0, v4, :cond_1

    .line 196
    sget-object v4, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->sOpenAllDay:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "i":I
    .end local v2    # "listHours":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->setChineseData(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    goto :goto_0

    .line 198
    .restart local v0    # "i":I
    .restart local v2    # "listHours":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreHours(Ljava/util/List;)V

    .line 201
    .end local v0    # "i":I
    .end local v2    # "listHours":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->setStoreLocation(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 202
    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/connectors/autonavi/AutoNaviStore;->setStoreFacilities(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 204
    return-object v3
.end method
