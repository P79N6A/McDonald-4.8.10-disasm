.class public Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;
.super Ljava/lang/Object;
.source "MiddlewareStoreLocatorStore.java"


# static fields
.field public static final DEFAULT_POD:Ljava/lang/String; = "LOBBY"

.field private static final DELIMITER:Ljava/lang/String; = ", "

.field private static final KEY_FILTERS:Ljava/lang/String; = "connectors.MiddlewareStoreLocator.storeLocator.filters"

.field public static final KEY_POD_OPENING_HOURS:Ljava/lang/String; = "connectors.MiddlewareStoreLocator.storeLocator.openingHoursPOD"

.field public static final KEY_STORE_ID_TYPE:Ljava/lang/String; = "connectors.MiddlewareStoreLocator.storeLocator.storeIdType"

.field public static final KEY_TIMEZONE_CONVERSION:Ljava/lang/String; = "connectors.MiddlewareStoreLocator.storeLocator.serverTimeZoneAbbreviation"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final OPEN:Ljava/lang/String; = "OPEN"

.field private static final START_OR_END_TIME_EXCEEDING_THRESHOLD:Ljava/lang/String; = "Error: start time %s or end time %s exceeding threshold %d"

.field private static final STORE_DEVICE_TIME_ZONE_START_END_TIME:Ljava/lang/String; = "Store device time zone start and end time: "

.field private static final STORE_START_END_TIME:Ljava/lang/String; = "Store start and end time: "

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_TIME:J = 0x55d4a80L

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

.field private static sFiltersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field public countryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countryCode"
    .end annotation
.end field

.field public identifiers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "identifiers"
    .end annotation
.end field

.field public locale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localization"
    .end annotation
.end field

.field public marketCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "marketCode"
    .end annotation
.end field

.field public numbers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storeNumbers"
    .end annotation
.end field

.field public publicName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "publicName"
    .end annotation
.end field

.field public storeAttributes:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttributeList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storeAttributes"
    .end annotation
.end field

.field public storeGeneralStatus:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreGeneralStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "generalStatus"
    .end annotation
.end field

.field public storeServices:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storeServices"
    .end annotation
.end field

.field public storeType:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storeType"
    .end annotation
.end field

.field public uniqueID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public urls:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURLList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "urls"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->sFiltersMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertTimeToTimeZone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "origTime"    # Ljava/lang/String;
    .param p2, "timezone"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 371
    .local v0, "timeInLong":J
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 372
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDayOfWeek(Ljava/lang/String;)I
    .locals 2
    .param p1, "dayOfWeek"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 469
    if-nez p1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 473
    :cond_1
    const-string v1, "SUNDAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    const-string v1, "MONDAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    const/4 v0, 0x1

    goto :goto_0

    .line 477
    :cond_2
    const-string v1, "TUESDAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 478
    const/4 v0, 0x2

    goto :goto_0

    .line 479
    :cond_3
    const-string v1, "WEDNESDAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 480
    const/4 v0, 0x3

    goto :goto_0

    .line 481
    :cond_4
    const-string v1, "THURSDAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 482
    const/4 v0, 0x4

    goto :goto_0

    .line 483
    :cond_5
    const-string v1, "FRIDAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 484
    const/4 v0, 0x5

    goto :goto_0

    .line 485
    :cond_6
    const-string v1, "SATURDAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private getDayOfWeekServices()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v2, "dayOfWeekServices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;>;"
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeServices:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;

    iget-object v3, v5, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;->dayOfWeekService:Ljava/util/List;

    .line 352
    .local v3, "daysofServices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;

    .line 353
    .local v1, "dayOfWeekService":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;
    iget-object v0, v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;->dayOfWeek:Ljava/lang/String;

    .line 354
    .local v0, "day":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "null"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 357
    const/4 v4, 0x0

    .line 358
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 359
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    check-cast v4, Ljava/util/List;

    .line 363
    .restart local v4    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    :goto_1
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 361
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    goto :goto_1

    .line 366
    .end local v0    # "day":Ljava/lang/String;
    .end local v1    # "dayOfWeekService":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    :cond_2
    return-object v2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    const-string v9, "connectors.MiddlewareStoreLocator.storeLocator.filters"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 99
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->sFilters:Ljava/util/List;

    .line 100
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->sFiltersMap:Ljava/util/HashMap;

    .line 102
    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    .line 103
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 104
    .local v7, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 105
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    .local v0, "filter":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "store_locator_filter_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "resourceKey":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v5, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 109
    .local v4, "resourceId":I
    if-lez v4, :cond_0

    .line 110
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "fromFilter":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 112
    invoke-virtual {v7, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v2    # "fromFilter":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "filter":Ljava/lang/String;
    .end local v4    # "resourceId":I
    .end local v5    # "resourceKey":Ljava/lang/String;
    :cond_1
    sget-object v8, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->sFilters:Ljava/util/List;

    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    sget-object v8, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->sFiltersMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 120
    .end local v3    # "i":I
    .end local v6    # "size":I
    .end local v7    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public static init(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "filtersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->sFiltersMap:Ljava/util/HashMap;

    .line 124
    return-void
.end method

.method private setAddressData(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 1
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    if-eqz v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->addressLine1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->addressLine1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setAddress1(Ljava/lang/String;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->city:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setCity(Ljava/lang/String;)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->state:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setState(Ljava/lang/String;)V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->zip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->zip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPostalCode(Ljava/lang/String;)V

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->country:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setCountry(Ljava/lang/String;)V

    .line 402
    :cond_4
    return-void
.end method

.method private setData(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 6
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v5, 0x0

    .line 169
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->setAddressData(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->setStoreLocation(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->setStoreFacilities(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->setPrimaryPhoneNumer(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 176
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeGeneralStatus:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreGeneralStatus;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeGeneralStatus:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreGeneralStatus;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreGeneralStatus;->status:Ljava/lang/String;

    const-string v4, "OPEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setGeneralStatusIsOpen(Z)V

    .line 181
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->numbers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->numbers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;->phoneNumbers:Ljava/util/List;

    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->numbers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;->phoneNumbers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorPhoneNumber;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorPhoneNumber;->number:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPhoneNumber(Ljava/lang/String;)V

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->urls:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURLList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->urls:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURLList;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURLList;->urlList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->urls:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURLList;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURLList;->urlList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 187
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->urls:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURLList;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURLList;->urlList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURL;

    .line 189
    .local v2, "url":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURL;
    iget-object v3, v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURL;->urlType:Ljava/lang/String;

    const-string v4, "STORE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 190
    iget-object v3, v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURL;->url:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreURL(Ljava/lang/String;)V

    .line 196
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "url":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURL;
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeType:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreType;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeType:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreType;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreType;->storeTypeCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 197
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeType:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreType;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreType;->storeTypeCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreType(Ljava/lang/String;)V

    .line 199
    :cond_3
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->setStoreOperationHours(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 201
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->publicName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 202
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->publicName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPublicName(Ljava/lang/String;)V

    .line 204
    :cond_4
    return-void

    .line 186
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    .restart local v2    # "url":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorURL;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setPrimaryPhoneNumer(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 5
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 456
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->numbers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->numbers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;->phoneNumbers:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->numbers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;->phoneNumbers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->numbers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;->phoneNumbers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 458
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->numbers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreNumbers;->phoneNumbers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorPhoneNumber;

    .line 460
    .local v2, "storePhoneNumber":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorPhoneNumber;
    iget-object v3, v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorPhoneNumber;->type:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorPhoneNumber;->type:Ljava/lang/String;

    const-string v4, "PRIMARY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    iget-object v3, v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorPhoneNumber;->number:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPhoneNumber(Ljava/lang/String;)V

    .line 466
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "storePhoneNumber":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorPhoneNumber;
    :cond_0
    return-void

    .line 457
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    .restart local v2    # "storePhoneNumber":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorPhoneNumber;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setStoreFacilities(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 9
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v1, "facilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v5, "storeFacilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeAttributes:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttributeList;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttributeList;->attributeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 414
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeAttributes:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttributeList;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttributeList;->attributeList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttribute;

    .line 416
    .local v0, "attribute":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttribute;
    sget-object v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->sFiltersMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 417
    .local v2, "filterKey":Ljava/lang/String;
    sget-object v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->sFiltersMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttribute;->type:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 418
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    .end local v2    # "filterKey":Ljava/lang/String;
    :cond_1
    iget-object v6, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttribute;->type:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "attribute":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAttribute;
    :cond_2
    const-string v6, "MOBILEOFFERS"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setHasMobileOffers(Ljava/lang/Boolean;)V

    .line 426
    const-string v6, "MOBILEORDERS"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setHasMobileOrdering(Ljava/lang/Boolean;)V

    .line 428
    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setFacilityNames(Ljava/util/List;)V

    .line 429
    return-void
.end method

.method private setStoreLocation(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 2
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->location:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorLocation;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->location:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorLocation;

    iget-wide v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorLocation;->longitude:D

    invoke-virtual {p1, v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLongitude(D)V

    .line 442
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->address:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorAddress;->location:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorLocation;

    iget-wide v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorLocation;->latitude:D

    invoke-virtual {p1, v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLatitude(D)V

    .line 445
    :cond_0
    return-void
.end method

.method private setStoreLongestOperationHours(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 28
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeServices:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 343
    :goto_0
    return-void

    .line 296
    :cond_0
    const/16 v20, 0x7

    const/16 v21, 0x2

    filled-new-array/range {v20 .. v21}, [I

    move-result-object v20

    const-class v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Ljava/lang/String;

    .line 297
    .local v13, "operatingHoursArray":[[Ljava/lang/String;
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v10, v0, [Ljava/lang/String;

    .line 298
    .local v10, "listHours":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->getDayOfWeekServices()Ljava/util/HashMap;

    move-result-object v4

    .line 299
    .local v4, "dayOfWeekServices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 300
    .local v5, "daysOfweek":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v20

    const-string v21, "connectors.MiddlewareStoreLocator.storeLocator.serverTimeZoneAbbreviation"

    invoke-virtual/range {v20 .. v21}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 301
    .local v17, "timeZone":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 302
    .local v2, "day":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 303
    .local v14, "services":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    const-string v15, ""

    .local v15, "smallestStartTime":Ljava/lang/String;
    const-string v11, ""

    .line 305
    .local v11, "longestEndTime":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_8

    .line 306
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;->startTime:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 307
    .local v16, "startTime":Ljava/lang/String;
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;->endTime:Ljava/lang/String;

    .line 308
    .local v6, "endTime":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 309
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 310
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    cmp-long v20, v22, v24

    if-lez v20, :cond_2

    .line 311
    :cond_1
    move-object/from16 v15, v16

    .line 313
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 314
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 315
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    cmp-long v20, v22, v24

    if-gez v20, :cond_4

    .line 316
    :cond_3
    move-object v11, v6

    .line 318
    :cond_4
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/32 v24, 0x55d4a80

    cmp-long v20, v22, v24

    if-gtz v20, :cond_6

    .line 319
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/32 v24, 0x55d4a80

    cmp-long v20, v22, v24

    if-lez v20, :cond_7

    .line 320
    :cond_6
    sget-object v20, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->TAG:Ljava/lang/String;

    const-string v22, "Error: start time %s or end time %s exceeding threshold %d"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v6, v23, v24

    const/16 v24, 0x2

    const-wide/32 v26, 0x55d4a80

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 323
    .end local v6    # "endTime":Ljava/lang/String;
    .end local v16    # "startTime":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->getDayOfWeek(Ljava/lang/String;)I

    move-result v3

    .line 324
    .local v3, "dayOfWeek":I
    sget-object v20, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Store start and end time: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {v15, v11}, Lcom/mcdonalds/sdk/utils/DateUtils;->is24HourOpen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 326
    .local v9, "is24Hour":Z
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/mcdonalds/sdk/utils/DateUtils;->getHoursTimeInTimeZone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, "fromTime":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/mcdonalds/sdk/utils/DateUtils;->getHoursTimeInTimeZone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 328
    .local v19, "toTime":Ljava/lang/String;
    sget-object v20, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Store device time zone start and end time: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz v9, :cond_9

    .line 330
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v20

    sget v22, Lcom/mcdonalds/sdk/R$string;->label_open_all_day:I

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 331
    .local v12, "openAllDayString":Ljava/lang/String;
    aput-object v12, v10, v3

    .line 338
    .end local v12    # "openAllDayString":Ljava/lang/String;
    :goto_3
    aget-object v20, v13, v3

    const/16 v22, 0x0

    aput-object v7, v20, v22

    .line 339
    aget-object v20, v13, v3

    const/16 v22, 0x1

    aput-object v19, v20, v22

    goto/16 :goto_1

    .line 334
    :cond_9
    const-string v20, "%1$s %2$s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v7, v22, v23

    const/16 v23, 0x1

    aput-object v19, v22, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 335
    .local v18, "toAndFrom":Ljava/lang/String;
    aput-object v18, v10, v3

    goto :goto_3

    .line 341
    .end local v2    # "day":Ljava/lang/String;
    .end local v3    # "dayOfWeek":I
    .end local v7    # "fromTime":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "is24Hour":Z
    .end local v11    # "longestEndTime":Ljava/lang/String;
    .end local v14    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    .end local v15    # "smallestStartTime":Ljava/lang/String;
    .end local v18    # "toAndFrom":Ljava/lang/String;
    .end local v19    # "toTime":Ljava/lang/String;
    :cond_a
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setmStoreLongestHour(Ljava/util/List;)V

    .line 342
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setmStoreLongestOperatingHours(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private setStoreOperationHours(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 22
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 207
    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v8, v0, [Ljava/lang/String;

    .line 208
    .local v8, "listHoursArray":[Ljava/lang/String;
    const/16 v19, 0x7

    const/16 v20, 0x2

    filled-new-array/range {v19 .. v20}, [I

    move-result-object v19

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    .line 209
    .local v9, "operatingHoursArray":[[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v7, "listHours":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v10, "operatingHoursList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v19

    const-string v20, "connectors.MiddlewareStoreLocator.storeLocator.openingHoursPOD"

    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "configServiceValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 214
    :cond_0
    const-string v2, "LOBBY"

    .line 217
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeServices:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 218
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    .line 219
    .local v18, "weekDays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeServices:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;->dayOfWeekService:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_3

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeServices:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;->dayOfWeekService:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;->dayOfWeek:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->getDayOfWeek(Ljava/lang/String;)I

    move-result v3

    .line 221
    .local v3, "dayOfWeek":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 222
    .local v12, "servicesForDay":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    if-nez v12, :cond_2

    .line 223
    new-instance v12, Ljava/util/HashMap;

    .end local v12    # "servicesForDay":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 224
    .restart local v12    # "servicesForDay":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeServices:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;->dayOfWeekService:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;->service:Ljava/lang/String;

    .line 228
    .local v13, "servicevalue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->storeServices:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreServices;->dayOfWeekService:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 231
    .end local v3    # "dayOfWeek":I
    .end local v12    # "servicesForDay":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    .end local v13    # "servicevalue":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "dayOfWeek":I
    :goto_1
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ge v3, v0, :cond_8

    .line 232
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 234
    .restart local v12    # "servicesForDay":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    const/4 v11, 0x0

    .line 237
    .local v11, "service":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;
    if-eqz v12, :cond_4

    .line 238
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "service":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;
    check-cast v11, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;

    .line 241
    .restart local v11    # "service":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;
    if-nez v11, :cond_4

    .line 243
    const-string v19, "LOBBY"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "service":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;
    check-cast v11, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;

    .line 247
    .restart local v11    # "service":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;
    :cond_4
    if-eqz v11, :cond_6

    .line 248
    iget-object v14, v11, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;->startTime:Ljava/lang/String;

    .line 249
    .local v14, "startTime":Ljava/lang/String;
    iget-object v4, v11, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;->endTime:Ljava/lang/String;

    .line 251
    .local v4, "endTime":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v19

    const-string v20, "connectors.MiddlewareStoreLocator.storeLocator.serverTimeZoneAbbreviation"

    invoke-virtual/range {v19 .. v20}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 253
    .local v15, "timeZone":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 254
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->convertTimeToTimeZone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 255
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->convertTimeToTimeZone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    :cond_5
    invoke-static {v14}, Lcom/mcdonalds/sdk/utils/DateUtils;->getTimeInHours(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "fromTime":Ljava/lang/String;
    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/DateUtils;->getTimeInHours(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 260
    .local v17, "toTime":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/mcdonalds/sdk/utils/DateUtils;->areTimesEqualOrWithinAMinute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 261
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v19

    sget v20, Lcom/mcdonalds/sdk/R$string;->label_open_all_day:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v8, v3

    .line 266
    :goto_2
    aget-object v19, v9, v3

    const/16 v20, 0x0

    aput-object v5, v19, v20

    .line 267
    aget-object v19, v9, v3

    const/16 v20, 0x1

    aput-object v17, v19, v20

    .line 231
    .end local v4    # "endTime":Ljava/lang/String;
    .end local v5    # "fromTime":Ljava/lang/String;
    .end local v14    # "startTime":Ljava/lang/String;
    .end local v15    # "timeZone":Ljava/lang/String;
    .end local v17    # "toTime":Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 263
    .restart local v4    # "endTime":Ljava/lang/String;
    .restart local v5    # "fromTime":Ljava/lang/String;
    .restart local v14    # "startTime":Ljava/lang/String;
    .restart local v15    # "timeZone":Ljava/lang/String;
    .restart local v17    # "toTime":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v19

    sget v20, Lcom/mcdonalds/sdk/R$string;->store_opening_hours_range:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v5, v20, v21

    const/16 v21, 0x1

    aput-object v17, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 264
    .local v16, "toAndFrom":Ljava/lang/String;
    aput-object v16, v8, v3

    goto :goto_2

    .line 271
    .end local v4    # "endTime":Ljava/lang/String;
    .end local v5    # "fromTime":Ljava/lang/String;
    .end local v11    # "service":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;
    .end local v12    # "servicesForDay":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;"
    .end local v14    # "startTime":Ljava/lang/String;
    .end local v15    # "timeZone":Ljava/lang/String;
    .end local v16    # "toAndFrom":Ljava/lang/String;
    .end local v17    # "toTime":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    :goto_3
    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_9

    .line 272
    aget-object v19, v8, v6

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    aget-object v19, v9, v6

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 276
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreHours(Ljava/util/List;)V

    .line 277
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreOperatingHours(Ljava/util/List;)V

    .line 279
    .end local v3    # "dayOfWeek":I
    .end local v6    # "i":I
    .end local v18    # "weekDays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareDayOfWeekService;>;>;"
    :cond_a
    return-void
.end method


# virtual methods
.method public toStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 8

    .prologue
    .line 136
    new-instance v4, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;-><init>()V

    .line 138
    .local v4, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->identifiers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;->storeIdentifier:Ljava/util/List;

    invoke-static {v6}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 141
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->identifiers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;->storeIdentifier:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;

    .line 143
    .local v1, "identifier":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "connectors.MiddlewareStoreLocator.storeLocator.storeIdType"

    .line 144
    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "identifierType":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 147
    const/4 v0, 0x1

    .local v0, "i":I
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->identifiers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;->storeIdentifier:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 149
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->identifiers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;->storeIdentifier:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;->identifierType:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->identifiers:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorIdentifier;->storeIdentifier:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "identifier":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;
    check-cast v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;

    .line 156
    .end local v0    # "i":I
    .end local v3    # "size":I
    .restart local v1    # "identifier":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;
    :cond_0
    if-eqz v1, :cond_1

    iget-object v6, v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;->identifierValue:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;->identifierValue:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 157
    iget-object v6, v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;->identifierValue:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 158
    .local v5, "storeId":I
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreId(I)V

    .line 162
    .end local v1    # "identifier":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;
    .end local v2    # "identifierType":Ljava/lang/String;
    .end local v5    # "storeId":I
    :cond_1
    invoke-direct {p0, v4}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStore;->setData(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 164
    return-object v4

    .line 147
    .restart local v0    # "i":I
    .restart local v1    # "identifier":Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/model/MiddlewareStoreLocatorStoreIdentifier;
    .restart local v2    # "identifierType":Ljava/lang/String;
    .restart local v3    # "size":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
