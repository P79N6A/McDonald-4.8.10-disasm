.class public Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;
.super Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
.source "TagManagerWrapper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONFIG_KEY:Ljava/lang/String; = "TagManager"

.field public static final KEY_CONTAINER_ID:Ljava/lang/String; = "analytics.TagManager.containerId"

.field public static final KEY_ENVIRONMENT_TYPE:Ljava/lang/String; = "analytics.TagManager.environmentType"

.field public static final KEY_LOG_ANALYTICS:Ljava/lang/String; = "log.analytics"

.field public static final KEY_MARKET_ID:Ljava/lang/String; = "analytics.TagManager.marketId"

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mCustomParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEnvironment:Ljava/lang/String;

.field private mInitialized:Z

.field private mInitializing:Z

.field private mMarket:Ljava/lang/String;

.field private mPendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v3, "1.0"

    iput-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mVersion:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "analytics.TagManager.marketId"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mMarket:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "analytics.TagManager.environmentType"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mEnvironment:Ljava/lang/String;

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 65
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mPendingEvents:Ljava/util/List;

    .line 72
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "log.analytics"

    .line 73
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 75
    .local v0, "debuggable":Z
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    .line 76
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/tagmanager/TagManager;->setVerboseLoggingEnabled(Z)V

    .line 77
    return-void

    .line 66
    .end local v0    # "debuggable":Z
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private clearDataLayerVariables(Ljava/util/List;)V
    .locals 4
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
    .line 321
    .local p1, "variables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v0, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    .local v1, "var":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 326
    .end local v1    # "var":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 327
    return-void
.end method

.method private dispatchPendingEvents()V
    .locals 4

    .prologue
    .line 117
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mPendingEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mPendingEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;

    .line 123
    .local v0, "event":Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;->getType()Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;->getArgs()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->log(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 128
    .end local v0    # "event":Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;>;"
    :cond_0
    return-void
.end method

.method private putDefaultCustoms()V
    .locals 5

    .prologue
    .line 264
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    .line 266
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mVersion:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mEnvironment:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "language":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mMarket:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->getFormattedLocation()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 276
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    return-void
.end method

.method private trackCustom(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;Z)V
    .locals 10
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .param p2, "shouldSend"    # Z

    .prologue
    .line 238
    :try_start_0
    const-string v5, "DATAKEY_CUSTOM"

    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 240
    .local v0, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 242
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 244
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 245
    .local v3, "key":I
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 246
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 247
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v5, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v3    # "key":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 253
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v5

    const-string v6, "MCDTagEventGAIOpenScreen"

    iget-object v7, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/tagmanager/DataLayer;->pushEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v0    # "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/ClassCastException;
    sget-object v5, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v6, "error logging custom"

    invoke-static {v5, v6, v1}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private trackECommerce(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 12
    .param p2, "eCommerce"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 218
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 219
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 220
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    const-string v1, "ecommerce"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "promoView"

    aput-object v3, v2, v10

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "promotions"

    aput-object v4, v3, v10

    new-array v4, v11, [Ljava/lang/Object;

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "id"

    aput-object v6, v5, v10

    .line 225
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const-string v6, "name"

    aput-object v6, v5, v8

    const/4 v6, 0x3

    .line 226
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "creative"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "%s - %s"

    new-array v8, v8, [Ljava/lang/Object;

    .line 227
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "position"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "In app offers"

    aput-object v7, v5, v6

    .line 224
    invoke-static {v5}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    aput-object v5, v4, v10

    .line 223
    invoke-static {v4}, Lcom/google/android/gms/tagmanager/DataLayer;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v11

    .line 222
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    aput-object v3, v2, v11

    .line 221
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 220
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_0
    return-void
.end method

.method private trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 9
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    const/4 v8, 0x0

    .line 189
    const-string v5, "ACTION"

    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    .local v0, "action":Ljava/lang/String;
    const-string v5, "CATEGORY"

    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    .local v1, "category":Ljava/lang/String;
    const-string v5, "LABEL"

    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    .local v2, "label":Ljava/lang/String;
    const-string v5, "IMPRESSION"

    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 194
    .local v3, "promotion":Lcom/mcdonalds/sdk/modules/models/Offer;
    if-eqz v0, :cond_0

    .line 196
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "action"

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    const-string v7, "category"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v1, v5, v6

    const/4 v6, 0x4

    const-string v7, "label"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v2, v5, v6

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 202
    .local v4, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v5, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CATEGORY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ACTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", LABEL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0, p1, v8}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->trackCustom(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;Z)V

    .line 206
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 208
    invoke-direct {p0, v4, v3}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->trackECommerce(Ljava/util/Map;Ljava/lang/Object;)V

    .line 210
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v5

    const-string v6, "MCDTagEventGAIAction"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/tagmanager/DataLayer;->pushEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v5}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->clearDataLayerVariables(Ljava/util/List;)V

    .line 215
    .end local v4    # "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private trackScreen(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 6
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    const/4 v5, 0x0

    .line 167
    const-string v2, "ACTION"

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "screenName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 170
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "screenName"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 174
    .local v1, "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCREEN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0, p1, v5}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->trackCustom(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;Z)V

    .line 178
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mCustomParams:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 180
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v2

    const-string v3, "MCDTagEventGAIOpenScreen"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->pushEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->clearDataLayerVariables(Ljava/util/List;)V

    .line 185
    .end local v1    # "update":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private trackTransaction(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 7
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 286
    :try_start_0
    const-string v3, "PRODUCT_LIST"

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 287
    .local v1, "products":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v3, "TRANSACTION_MAP"

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 289
    .local v2, "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 291
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    const-string v3, "transactionProducts"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v3

    const-string v4, "MCDTagEventGAITransaction"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/tagmanager/DataLayer;->pushEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 298
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->clearDataLayerVariables(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v1    # "products":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "transaction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v3, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "error logging transaction"

    invoke-static {v3, v4, v0}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 7

    .prologue
    .line 82
    iget-boolean v5, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mInitialized:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mInitializing:Z

    if-nez v5, :cond_0

    .line 84
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mInitializing:Z

    .line 86
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "analytics.TagManager.containerId"

    .line 87
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "containerId":Ljava/lang/String;
    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "resourceName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "raw"

    invoke-virtual {v5, v4, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 93
    .local v3, "resourceId":I
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v5, v0, v3}, Lcom/google/android/gms/tagmanager/TagManager;->loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    .line 98
    .local v2, "pending":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/tagmanager/ContainerHolder;>;"
    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 100
    .end local v0    # "containerId":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pending":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/tagmanager/ContainerHolder;>;"
    .end local v3    # "resourceId":I
    .end local v4    # "resourceName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public log(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 2
    .param p1, "event"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .param p2, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mInitializing:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mPendingEvents:Ljava/util/List;

    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;

    invoke-direct {v1, p1, p2}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;-><init>(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->putDefaultCustoms()V

    .line 141
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$1;->$SwitchMap$com$mcdonalds$sdk$services$analytics$AnalyticType:[I

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->trackScreen(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_0

    .line 152
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->trackCustom(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;Z)V

    goto :goto_0

    .line 156
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->trackTransaction(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .locals 1
    .param p1, "containerHolder"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mInitializing:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->mInitialized:Z

    .line 108
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;->dispatchPendingEvents()V

    .line 109
    return-void
.end method
