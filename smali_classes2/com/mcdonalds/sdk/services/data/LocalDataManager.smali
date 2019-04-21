.class public Lcom/mcdonalds/sdk/services/data/LocalDataManager;
.super Ljava/lang/Object;
.source "LocalDataManager.java"


# static fields
.field private static final CACHE_EXP_KEY_PREFIX:Ljava/lang/String; = "com.mcdonalds.app.diskCacheExpiration."

.field public static final FIRST_CATALOG_LOAD:Ljava/lang/String; = "first_catalog_load"

.field public static final KEY_CACHE_LATEST_ORDER:Ljava/lang/String; = "modules.ordering.cacheLatestOrderMinutes"

.field public static final KEY_CHECKIN_TIMER:Ljava/lang/String; = "CHECKIN_TIMER"

.field private static final KEY_DISABLE_BACKGROUND_ORDER_CACHING:Ljava/lang/String; = "modules.ordering.disableBackgroundOrderCaching"

.field private static final KEY_DUPLICATE_ORDER_CHECKIN_FLOW_ALERT_TIMER:Ljava/lang/String; = "interface.ordering.duplicateOrderCheckinFlowAlertTimer"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NOTIFICATION_REG_ID:Ljava/lang/String; = "NOTIFICATION_REG_ID"

.field public static final OFFERS_CACHE_KEY:Ljava/lang/String; = "OFFERS_CACHE_KEY"

.field private static final PREF_CURRENT_ORDER:Ljava/lang/String; = "PREF_CURRENT_ORDER"

.field private static final PREF_DEVICE_LANG:Ljava/lang/String; = "PREF_DEVICE_LANG"

.field private static final PREF_EDT_STRING:Ljava/lang/String; = "PREF_EDT_STRING"

.field public static final PREF_FIRST_LOGIN:Ljava/lang/String; = "PREF_FIRST_LOGIN"

.field public static final PREF_FIRST_TIME_DELIVERY:Ljava/lang/String; = "pref_first_time_delivery"

.field public static final PREF_FIRST_TIME_ORDERING:Ljava/lang/String; = "pref_first_time_ordering"

.field public static final PREF_FIRST_TIME_QR_SCAN:Ljava/lang/String; = "pref_first_time_qr_scan"

.field public static final PREF_FIRST_USE:Ljava/lang/String; = "pref_first_time_used"

.field public static final PREF_LAST_ACTIVE:Ljava/lang/String; = "last_active"

.field private static final PREF_LATEST_ORDER_IS_DRIVE_THRU:Ljava/lang/String; = "PREF_LATEST_ORDER_IS_DRIVE_THRU"

.field private static final PREF_LATEST_ORDER_NUMBER:Ljava/lang/String; = "PREF_LATEST_ORDER_NUMBER"

.field public static final PREF_LOCATION_SEARCH_TITLE:Ljava/lang/String; = "PREF_LOCATION_SEARCH_TITLE"

.field public static final PREF_MARKET_CATALOG_PREFIX:Ljava/lang/String; = "market_catalog"

.field public static final PREF_MODULE_NAME:Ljava/lang/String; = "pref_module_name"

.field private static final PREF_NUTRITION_CACHE_DATE:Ljava/lang/String; = "PREF_NUTRITION_CACHE_DATE"

.field private static final PREF_PUSH_OPT_IN_SHOWN:Ljava/lang/String; = "PREF_PUSH_OPT_IN_SHOWN"

.field private static final PREF_REMEMBER_LOGIN:Ljava/lang/String; = "PREF_REMEMBER_LOGIN"

.field private static final PREF_SAVED_LOGIN:Ljava/lang/String; = "PREF_SAVED_LOGIN"

.field private static final PREF_SAVED_LOGIN_PASS:Ljava/lang/String; = "PREF_SAVED_LOGIN_"

.field private static final PREF_SAVED_LOGIN_SOCIAL_NETWORK_ID:Ljava/lang/String; = "PREF_SAVED_LOGIN_SOCIAL_NETWORK_ID"

.field private static final PREF_SAVED_LOGIN_SOCIAL_NETWORK_TYPE:Ljava/lang/String; = "PREF_SAVED_LOGIN_SOCIAL_NETWORK_TYPE"

.field private static final PREF_STORE_CATALOGS:Ljava/lang/String; = "PREF_STORE_CATALOGS_9_"

.field public static final PREF_STORE_CATALOG_PREFIX:Ljava/lang/String; = "store_catalog"

.field private static final PREF_TUTORIAL_LAST_SHOWN_VERSION:Ljava/lang/String; = "pref_tutorial_last_shown_version"

.field private static final TAG:Ljava/lang/String;

.field private static final THIRTY_MINS_IN_MILLIS:J

.field public static final TIME_ZONE:Ljava/lang/String; = "timezone"

.field private static final VERSION_PREFS:Ljava/lang/String; = "VERSION_PREFS"

.field private static mSharedInstance:Lcom/mcdonalds/sdk/services/data/LocalDataManager;


# instance fields
.field private mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

.field private mCrypto:Lcom/mcdonalds/sdk/services/data/Crypto;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mVersionSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    const-class v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->TAG:Ljava/lang/String;

    .line 94
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->THIRTY_MINS_IN_MILLIS:J

    .line 98
    const-class v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->LOG_TAG:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedInstance:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 104
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCrypto:Lcom/mcdonalds/sdk/services/data/Crypto;

    .line 105
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    .line 132
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->initialize(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/services/data/LocalDataManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getCacheExpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)Lcom/mcdonalds/sdk/services/data/DiskCacheManager;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCacheExpKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.mcdonalds.app.diskCacheExpiration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedInstance:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedInstance:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .line 124
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedInstance:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    return-object v0
.end method

.method private isCacheValid(Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "serialize"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1020
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getCacheExpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "cacheExpKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    new-instance v5, Lcom/mcdonalds/sdk/services/data/LocalDataManager$10;

    invoke-direct {v5, p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$10;-><init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)V

    .line 1022
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1021
    invoke-virtual {v4, v0, v5, p2}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->get(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1024
    .local v1, "expirationTime":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 1026
    .end local v0    # "cacheExpKey":Ljava/lang/String;
    .end local v1    # "expirationTime":Ljava/lang/Long;
    :cond_1
    :goto_0
    return v3

    .line 1025
    :catch_0
    move-exception v2

    .line 1026
    .local v2, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private orderCacheFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 453
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/CacheUtils;->getOrderCacheFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static setSharedInstance(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)V
    .locals 0
    .param p0, "localDataManager"    # Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .prologue
    .line 128
    sput-object p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedInstance:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .line 129
    return-void
.end method


# virtual methods
.method public declared-synchronized addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expirationInterval"    # J

    .prologue
    .line 809
    monitor-enter p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;JZLcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    monitor-exit p0

    return-void

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addObjectToCache(Ljava/lang/String;Ljava/lang/Object;JZ)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expirationInterval"    # J
    .param p5, "serialize"    # Z

    .prologue
    .line 818
    monitor-enter p0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;JZLcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addObjectToCache(Ljava/lang/String;Ljava/lang/Object;JZLcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;)V
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expirationInterval"    # J
    .param p5, "serialize"    # Z
    .param p6, "listener"    # Lcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;

    .prologue
    .line 823
    monitor-enter p0

    if-nez p2, :cond_0

    .line 859
    :goto_0
    monitor-exit p0

    return-void

    .line 827
    :cond_0
    :try_start_0
    new-instance v1, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p2

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;-><init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;Ljava/lang/String;JZLjava/lang/Object;Lcom/mcdonalds/sdk/services/data/listeners/OnSaveCompletedListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 857
    instance-of v2, v1, Landroid/os/AsyncTask;

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 857
    :cond_1
    :try_start_1
    check-cast v1, Landroid/os/AsyncTask;

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized addObjectToCacheInstantly(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expirationInterval"    # J

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getCacheExpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "cacheExpKey":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-lez v3, :cond_0

    .line 865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 866
    .local v2, "expirationTime":Ljava/lang/Long;
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-virtual {v3, v0, v2}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 870
    .end local v2    # "expirationTime":Ljava/lang/Long;
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-virtual {v3, p1, p2}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    .end local v0    # "cacheExpKey":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-void

    .line 868
    .restart local v0    # "cacheExpKey":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->delete(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 871
    .end local v0    # "cacheExpKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 872
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "error trying to add object to cache"

    invoke-static {v3, v4, v1}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 863
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public cleanStoreCatalogTimestamps(I)V
    .locals 2
    .param p1, "storeId"    # I

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PREF_STORE_CATALOGS_9_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->deleteObjectFromCache(Ljava/lang/String;)Z

    .line 479
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 575
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 576
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 577
    return-void
.end method

.method public declared-synchronized clearCache()V
    .locals 2

    .prologue
    .line 1007
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    :goto_0
    monitor-exit p0

    return-void

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1007
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clearCatalogPreference()V
    .locals 6

    .prologue
    .line 580
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 581
    .local v0, "AllEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 582
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 583
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 584
    .local v3, "entryKey":Ljava/lang/String;
    const-string v5, "market_catalog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "store_catalog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 585
    :cond_1
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 589
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "entryKey":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 591
    return-void
.end method

.method public clearStoreCatalogPreference()V
    .locals 6

    .prologue
    .line 595
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 596
    .local v0, "AllEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 597
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 598
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 599
    .local v3, "entryKey":Ljava/lang/String;
    const-string v5, "store_catalog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 600
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 604
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "entryKey":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    return-void
.end method

.method public declared-synchronized deleteObjectFromCache(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 921
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->delete(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getCacheExpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->delete(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 924
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 921
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 638
    move v0, p2

    .line 641
    .local v0, "decrypted":Z
    :try_start_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "encrypted":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 644
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCrypto:Lcom/mcdonalds/sdk/services/data/Crypto;

    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/services/data/Crypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "temp":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 650
    .end local v1    # "encrypted":Ljava/lang/String;
    .end local v2    # "temp":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 647
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getCachedOffers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "storeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OFFERS_CACHE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/sdk/services/data/LocalDataManager$4;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$4;-><init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)V

    .line 545
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 543
    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;
    .locals 7

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->orderCacheFile()Ljava/io/File;

    move-result-object v2

    .line 401
    .local v2, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 403
    .local v5, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 406
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 407
    .local v3, "fileStream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 408
    .local v4, "inputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Order;

    move-object v5, v0

    .line 409
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .end local v4    # "inputStream":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    return-object v5

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    const-string v0, "PREF_DEVICE_LANG"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEdtString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 539
    const-string v0, "PREF_EDT_STRING"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstLogin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    const-string v0, "PREF_FIRST_LOGIN"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastActive(J)J
    .locals 3
    .param p1, "def"    # J

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_active"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLatestOrderNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    const-string v0, "PREF_LATEST_ORDER_NUMBER"

    new-instance v1, Lcom/mcdonalds/sdk/services/data/LocalDataManager$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$1;-><init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)V

    .line 458
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 457
    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "market"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v1, "%s_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "market_catalog"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "marketCatalog":Ljava/lang/String;
    const-string v1, "0001-01-01T00:00:00"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    const-string v0, "pref_module_name"

    const-string v1, "def"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationRegId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    const-string v0, "NOTIFICATION_REG_ID"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNutritionCacheDate()Ljava/util/Date;
    .locals 6

    .prologue
    .line 390
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "PREF_NUTRITION_CACHE_DATE"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public declared-synchronized getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 936
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "serialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 941
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getCacheExpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "cacheExpKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    new-instance v5, Lcom/mcdonalds/sdk/services/data/LocalDataManager$8;

    invoke-direct {v5, p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$8;-><init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)V

    .line 943
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 942
    invoke-virtual {v4, v0, v5, p3}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->get(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 946
    .local v2, "expirationTime":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 947
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->get(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 959
    .end local v0    # "cacheExpKey":Ljava/lang/String;
    .end local v2    # "expirationTime":Ljava/lang/Long;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 949
    .restart local v0    # "cacheExpKey":Ljava/lang/String;
    .restart local v2    # "expirationTime":Ljava/lang/Long;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-virtual {v4, p1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->delete(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 952
    .end local v0    # "cacheExpKey":Ljava/lang/String;
    .end local v2    # "expirationTime":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 955
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 941
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 957
    :catch_1
    move-exception v1

    .line 958
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getPrefRememberLogin()Z
    .locals 2

    .prologue
    .line 370
    const-string v0, "PREF_REMEMBER_LOGIN"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPrefSavedLogin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    const-string v0, "PREF_SAVED_LOGIN"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefSavedLoginPass()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    const-string v0, "PREF_SAVED_LOGIN_"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefSavedLoginSocialNetworkType()I
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PREF_SAVED_LOGIN_SOCIAL_NETWORK_TYPE"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPrefSavedSocialNetworkId()I
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PREF_SAVED_LOGIN_SOCIAL_NETWORK_ID"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPushNotificationOptInShownNum()I
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PREF_PUSH_OPT_IN_SHOWN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStoreCatalogTimestamps(I)Ljava/util/List;
    .locals 2
    .param p1, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PREF_STORE_CATALOGS_9_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/sdk/services/data/LocalDataManager$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$2;-><init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)V

    .line 473
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 472
    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getStoreCatalogVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "storeId"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v1, "%s_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "store_catalog"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "storeCatalog":Ljava/lang/String;
    const-string v1, "0001-01-01T00:00:00"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 615
    move-object v0, p2

    .line 618
    .local v0, "decrypted":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "encrypted":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 621
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCrypto:Lcom/mcdonalds/sdk/services/data/Crypto;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/data/Crypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 626
    .end local v1    # "encrypted":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 623
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    .local p2, "def":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 665
    .local v2, "decryptedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v6, p1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "encryptedJson":Ljava/lang/String;
    iget-object v6, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCrypto:Lcom/mcdonalds/sdk/services/data/Crypto;

    invoke-virtual {v6, v3}, Lcom/mcdonalds/sdk/services/data/Crypto;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "decryptedJson":Ljava/lang/String;
    new-instance v5, Lcom/google/gson/GsonBuilder;

    invoke-direct {v5}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 669
    .local v5, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    invoke-virtual {v5}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 671
    .local v4, "gson":Lcom/google/gson/Gson;
    new-instance v6, Lcom/mcdonalds/sdk/services/data/LocalDataManager$5;

    invoke-direct {v6, p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$5;-><init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)V

    .line 672
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 671
    instance-of v7, v4, Lcom/google/gson/Gson;

    if-nez v7, :cond_0

    invoke-virtual {v4, v1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .end local v4    # "gson":Lcom/google/gson/Gson;
    :goto_0
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 677
    .end local v1    # "decryptedJson":Ljava/lang/String;
    .end local v3    # "encryptedJson":Ljava/lang/String;
    .end local v5    # "gsonBuilder":Lcom/google/gson/GsonBuilder;
    :goto_1
    return-object v2

    .line 671
    .restart local v1    # "decryptedJson":Ljava/lang/String;
    .restart local v3    # "encryptedJson":Ljava/lang/String;
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    .restart local v5    # "gsonBuilder":Lcom/google/gson/GsonBuilder;
    :cond_0
    check-cast v4, Lcom/google/gson/Gson;

    .end local v4    # "gson":Lcom/google/gson/Gson;
    invoke-static {v4, v1, v6}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 674
    .end local v1    # "decryptedJson":Ljava/lang/String;
    .end local v3    # "encryptedJson":Ljava/lang/String;
    .end local v5    # "gsonBuilder":Lcom/google/gson/GsonBuilder;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public getTutorialLastShownVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mVersionSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_tutorial_last_shown_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasObjectInCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 998
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->hasObjectInCache(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasObjectInCache(Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "serialize"    # Z

    .prologue
    .line 972
    monitor-enter p0

    const/4 v3, 0x0

    .line 974
    .local v3, "hasObject":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getCacheExpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "cacheExpKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    new-instance v5, Lcom/mcdonalds/sdk/services/data/LocalDataManager$9;

    invoke-direct {v5, p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$9;-><init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)V

    .line 976
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 975
    invoke-virtual {v4, v0, v5, p2}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->get(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 979
    .local v2, "expirationTime":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 980
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-virtual {v4, p1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->hasObjectForKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 994
    .end local v0    # "cacheExpKey":Ljava/lang/String;
    .end local v2    # "expirationTime":Ljava/lang/Long;
    :goto_0
    monitor-exit p0

    return v3

    .line 983
    .restart local v0    # "cacheExpKey":Ljava/lang/String;
    .restart local v2    # "expirationTime":Ljava/lang/Long;
    :cond_1
    const/4 v3, 0x0

    .line 984
    :try_start_1
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    invoke-virtual {v4, p1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->delete(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 986
    .end local v0    # "cacheExpKey":Ljava/lang/String;
    .end local v2    # "expirationTime":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 989
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 972
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 990
    :catch_1
    move-exception v1

    .line 991
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 144
    const-string v1, "VERSION_PREFS"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mVersionSharedPreferences:Landroid/content/SharedPreferences;

    .line 146
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/data/DiskCacheManager;->getInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCacheManager:Lcom/mcdonalds/sdk/services/data/DiskCacheManager;

    .line 149
    :try_start_0
    new-instance v1, Lcom/mcdonalds/sdk/services/data/Crypto;

    invoke-direct {v1, p1}, Lcom/mcdonalds/sdk/services/data/Crypto;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCrypto:Lcom/mcdonalds/sdk/services/data/Crypto;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :goto_0
    return-object p0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v1, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isFirstCatalogLoad()Z
    .locals 2

    .prologue
    .line 173
    const-string v0, "first_catalog_load"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstTimeDelivery()Z
    .locals 2

    .prologue
    .line 224
    const-string v0, "pref_first_time_delivery"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstTimeOrdering()Z
    .locals 2

    .prologue
    .line 259
    const-string v0, "pref_first_time_ordering"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstTimeQrScan()Z
    .locals 2

    .prologue
    .line 267
    const-string v0, "pref_first_time_qr_scan"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLatestOrderDriveThru()Z
    .locals 3

    .prologue
    .line 518
    const-string v1, "PREF_LATEST_ORDER_IS_DRIVE_THRU"

    new-instance v2, Lcom/mcdonalds/sdk/services/data/LocalDataManager$3;

    invoke-direct {v2, p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$3;-><init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;)V

    .line 519
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 518
    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 521
    .local v0, "isDriveThru":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public isStoreCatalogDownloaded(Ljava/lang/String;)Z
    .locals 5
    .param p1, "storeId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 193
    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "store_catalog"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "storeCatalog":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isStoreCatalogOutDated(ILjava/util/List;)Z
    .locals 7
    .param p1, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 486
    .local p2, "latestVersions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCatalogManager;->desiredStoreCatalogTypes()Ljava/util/List;

    move-result-object v1

    .line 488
    .local v1, "desiredStoreCatalogs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 489
    .local v0, "desiredItem":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getStoreCatalogVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "versionCached":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;

    .line 491
    .local v2, "latestVersionItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
    iget-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->type:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v6, v0}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 492
    iget-object v6, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;->version:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 493
    const/4 v4, 0x1

    .line 498
    .end local v0    # "desiredItem":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    .end local v2    # "latestVersionItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;
    .end local v3    # "versionCached":Ljava/lang/String;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;Z)V

    .line 688
    return-void
.end method

.method public remove(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "immediately"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 698
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 699
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_0

    .line 700
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public removeSavedLogin()V
    .locals 1

    .prologue
    .line 344
    const-string v0, "PREF_SAVED_LOGIN"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 345
    const-string v0, "PREF_SAVED_LOGIN_"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 346
    const-string v0, "PREF_SAVED_LOGIN_SOCIAL_NETWORK_TYPE"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 347
    const-string v0, "PREF_SAVED_LOGIN_SOCIAL_NETWORK_ID"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 348
    const-string v0, "NOTIFICATION_REG_ID"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 349
    const-string v0, "PREF_CURRENT_ORDER"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->remove(Ljava/lang/String;)V

    .line 350
    const-string v0, "CACHE_KEY_CURRENT_PROFILE"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->deleteObjectFromCache(Ljava/lang/String;)Z

    .line 351
    const-string v0, "PREF_LATEST_ORDER_NUMBER"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->deleteObjectFromCache(Ljava/lang/String;)Z

    .line 352
    const-string v0, "CACHE_KEY_CURRENT_PROFILE"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->deleteObjectFromCache(Ljava/lang/String;)Z

    .line 353
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 754
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 755
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 756
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 757
    return-void
.end method

.method public set(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 798
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 799
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 800
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 801
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 715
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 717
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_0

    .line 718
    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCrypto:Lcom/mcdonalds/sdk/services/data/Crypto;

    invoke-virtual {v2, p2}, Lcom/mcdonalds/sdk/services/data/Crypto;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 719
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-object v2, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error trying to set value"

    invoke-static {v2, v3, v0}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 766
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 768
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_2

    .line 770
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 771
    .local v2, "gson":Lcom/google/gson/Gson;
    instance-of v4, v2, Lcom/google/gson/Gson;

    if-nez v4, :cond_1

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 775
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .local v3, "value":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 776
    :try_start_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCrypto:Lcom/mcdonalds/sdk/services/data/Crypto;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/services/data/Crypto;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 783
    :cond_0
    :goto_1
    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 788
    .end local v3    # "value":Ljava/lang/String;
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 789
    return-void

    .line 771
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    :cond_1
    check-cast v2, Lcom/google/gson/Gson;

    .end local v2    # "gson":Lcom/google/gson/Gson;
    invoke-static {v2, p2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 778
    .restart local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-object v4, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "error trying to set value"

    invoke-static {v4, v5, v0}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 786
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method public set(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 734
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 739
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mCrypto:Lcom/mcdonalds/sdk/services/data/Crypto;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/data/Crypto;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 740
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-object v2, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "error trying to set value"

    invoke-static {v2, v3, v0}, Lcom/mcdonalds/sdk/services/log/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCachedOffers(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "storeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p3, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OFFERS_CACHE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    .line 550
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 549
    invoke-virtual {p0, v0, p3, v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 551
    return-void
.end method

.method public setCheckinTimeStamp()V
    .locals 7

    .prologue
    .line 1032
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.ordering.duplicateOrderCheckinFlowAlertTimer"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1033
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.ordering.duplicateOrderCheckinFlowAlertTimer"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    .line 1034
    .local v0, "configTime":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1039
    .end local v0    # "configTime":J
    .local v2, "time":J
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v4

    const-string v5, "CHECKIN_TIMER"

    const-string v6, "CHECKIN_TIMER"

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCacheInstantly(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 1040
    return-void

    .line 1036
    .end local v2    # "time":J
    :cond_0
    const-wide/32 v2, 0x493e0

    .restart local v2    # "time":J
    goto :goto_0
.end method

.method public setCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 9
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    .line 424
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "modules.ordering.disableBackgroundOrderCaching"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->orderCacheFile()Ljava/io/File;

    move-result-object v1

    .line 426
    .local v1, "file":Ljava/io/File;
    if-nez p1, :cond_1

    .line 429
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 430
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 435
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->cloneOrderForEditing(Lcom/mcdonalds/sdk/modules/models/Order;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v6

    .line 437
    .local v6, "safeOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/modules/models/Order;->setPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V

    .line 438
    const/4 v4, 0x0

    .line 439
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    const/4 v2, 0x0

    .line 441
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->orderCacheFile()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 442
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .local v3, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 443
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_3
    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 444
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 445
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 446
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_1

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setDeviceLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceLang"    # Ljava/lang/String;

    .prologue
    .line 255
    const-string v0, "PREF_DEVICE_LANG"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public setEdtString(Ljava/lang/String;)V
    .locals 1
    .param p1, "edtString"    # Ljava/lang/String;

    .prologue
    .line 535
    const-string v0, "PREF_EDT_STRING"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public setFirstCatalogLoad(Z)V
    .locals 1
    .param p1, "firstCatalogLoad"    # Z

    .prologue
    .line 169
    const-string v0, "first_catalog_load"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Z)V

    .line 170
    return-void
.end method

.method public setFirstLogin(Ljava/lang/String;)V
    .locals 1
    .param p1, "firstLoginUser"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string v0, "PREF_FIRST_LOGIN"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public setFirstTimeDelivery(Z)V
    .locals 1
    .param p1, "firstTimeDelivery"    # Z

    .prologue
    .line 216
    const-string v0, "pref_first_time_delivery"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Z)V

    .line 217
    return-void
.end method

.method public setFirstTimeOrdering(Z)V
    .locals 1
    .param p1, "firstTimeOrdering"    # Z

    .prologue
    .line 212
    const-string v0, "pref_first_time_ordering"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Z)V

    .line 213
    return-void
.end method

.method public setFirstTimeQrScan(Z)V
    .locals 1
    .param p1, "firstTimeQrScan"    # Z

    .prologue
    .line 263
    const-string v0, "pref_first_time_qr_scan"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method public setLastActive(J)V
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 161
    const-string v0, "last_active"

    invoke-virtual {p0, v0, p1, p2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;J)V

    .line 162
    return-void
.end method

.method public setLatestOrderIsDriveThru(Z)V
    .locals 6
    .param p1, "isDriveThru"    # Z

    .prologue
    .line 525
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.ordering.cacheLatestOrderMinutes"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v0

    .line 527
    .local v0, "cacheTimeInMinutes":I
    if-lez v0, :cond_0

    .line 528
    const-string v1, "PREF_LATEST_ORDER_IS_DRIVE_THRU"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    const-string v1, "PREF_LATEST_ORDER_IS_DRIVE_THRU"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-wide v4, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->THIRTY_MINS_IN_MILLIS:J

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_0
.end method

.method public setLatestOrderNumber(Ljava/lang/String;)V
    .locals 6
    .param p1, "orderNumber"    # Ljava/lang/String;

    .prologue
    .line 462
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.ordering.cacheLatestOrderMinutes"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getIntForKey(Ljava/lang/String;)I

    move-result v0

    .line 464
    .local v0, "cacheTimeInMinutes":I
    if-lez v0, :cond_0

    .line 465
    const-string v1, "PREF_LATEST_ORDER_NUMBER"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    const-string v1, "PREF_LATEST_ORDER_NUMBER"

    sget-wide v2, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->THIRTY_MINS_IN_MILLIS:J

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_0
.end method

.method public setMarketCatalogVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "market"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v1, "%s_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "market_catalog"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "marketCatalog":Ljava/lang/String;
    invoke-virtual {p0, v0, p3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string v0, "pref_module_name"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public setNotificationRegId(Ljava/lang/String;)V
    .locals 1
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string v0, "NOTIFICATION_REG_ID"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public setNutritionCacheDate(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 379
    if-eqz p1, :cond_0

    .line 380
    const-string v0, "PREF_NUTRITION_CACHE_DATE"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;J)V

    .line 382
    :cond_0
    return-void
.end method

.method public setPrefRememberLogin(Z)V
    .locals 1
    .param p1, "shouldRemember"    # Z

    .prologue
    .line 361
    const-string v0, "PREF_REMEMBER_LOGIN"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Z)V

    .line 362
    return-void
.end method

.method public setPrefSavedLogin(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v0, "PREF_SAVED_LOGIN"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public setPrefSavedLoginPass(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v0, "PREF_SAVED_LOGIN_"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public setPrefSavedLoginSocialNetworkType(I)V
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 337
    const-string v0, "PREF_SAVED_LOGIN_SOCIAL_NETWORK_TYPE"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;I)V

    .line 338
    return-void
.end method

.method public setPrefSavedSocialNetworkId(I)V
    .locals 1
    .param p1, "socialNetworkId"    # I

    .prologue
    .line 307
    const-string v0, "PREF_SAVED_LOGIN_SOCIAL_NETWORK_ID"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;I)V

    .line 308
    return-void
.end method

.method public setPushNotificationOptInShownNum(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 558
    const-string v0, "PREF_PUSH_OPT_IN_SHOWN"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;I)V

    .line 559
    return-void
.end method

.method public setStoreCatalogDownloaded(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "storeId"    # Ljava/lang/String;
    .param p2, "isDownloaded"    # Z

    .prologue
    .line 178
    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "store_catalog"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "storeCatalog":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Z)V

    .line 180
    return-void
.end method

.method public setStoreCatalogTimestamps(ILjava/util/List;)V
    .locals 4
    .param p1, "storeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWCatalogVersionItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PREF_STORE_CATALOGS_9_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, p2, v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 483
    return-void
.end method

.method public setStoreCatalogVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "storeId"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v1, "%s_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "store_catalog"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "storeCatalog":Ljava/lang/String;
    invoke-virtual {p0, v0, p3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public setTutorialLastShownVersionName(Ljava/lang/String;)V
    .locals 2
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 566
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->mVersionSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 567
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_tutorial_last_shown_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 568
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 569
    return-void
.end method

.method public declared-synchronized updateObjectInCache(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 883
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->updateObjectInCache(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    monitor-exit p0

    return-void

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateObjectInCache(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "serialize"    # Z

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isCacheValid(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expired cache key, try adding the object to the cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 891
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;-><init>(Lcom/mcdonalds/sdk/services/data/LocalDataManager;Ljava/lang/String;Ljava/lang/Object;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 909
    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    :goto_0
    monitor-exit p0

    return-void

    .line 909
    :cond_1
    :try_start_2
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
