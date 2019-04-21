.class public Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;
.super Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
.source "GoogleAnalyticsWrapper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CONFIG_KEY:Ljava/lang/String; = "Google"

.field private static final TAG:Ljava/lang/String; = "GoogleAnalyticsWrapper"


# instance fields
.field private mAppTracker:Lcom/google/android/gms/analytics/Tracker;

.field private mEnvironment:Ljava/lang/String;

.field private mInitialized:Z

.field private mMarket:Ljava/lang/String;

.field private mShowLogs:Z

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;-><init>(Landroid/content/Context;)V

    .line 46
    iput-boolean v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mInitialized:Z

    .line 48
    const-string v2, "1.0"

    iput-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mVersion:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "analytics.Google.marketId"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mMarket:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "analytics.Google.environmentType"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mEnvironment:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "log.analytics"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mShowLogs:Z

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 63
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private varargs checkNotNullAndType(Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 4
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p2, v1

    .line 316
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 317
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/AsyncException;

    const-string v2, "Invalid arguments"

    invoke-direct {v1, v2}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private enableUncaughtExceptionHandling(Landroid/content/Context;Lcom/google/android/gms/analytics/Tracker;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tracker"    # Lcom/google/android/gms/analytics/Tracker;

    .prologue
    .line 323
    new-instance v0, Lcom/google/android/gms/analytics/ExceptionReporter;

    .line 325
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 330
    .local v0, "myHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 331
    return-void
.end method

.method private putCommonAppCustomDimensions(Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;)V
    .locals 2
    .param p1, "appViewBuilder"    # Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    .prologue
    .line 288
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 289
    const/4 v0, 0x7

    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 290
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mEnvironment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 291
    const/16 v0, 0x10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 292
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mMarket:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 293
    const/16 v0, 0x2c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 294
    return-void
.end method

.method private putCommonEventCustomDimensions(Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;)V
    .locals 2
    .param p1, "eventBuilder"    # Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .prologue
    .line 297
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 298
    const/4 v0, 0x7

    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 299
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mEnvironment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 300
    const/16 v0, 0x10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 301
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mMarket:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 302
    const/16 v0, 0x2c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 303
    return-void
.end method

.method private putCommonExceptionCustomDimensions(Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;)V
    .locals 2
    .param p1, "exceptionBuilder"    # Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    .prologue
    .line 306
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 307
    const/4 v0, 0x7

    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 308
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mEnvironment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 309
    const/16 v0, 0x10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 310
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mMarket:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 311
    const/16 v0, 0x2c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 312
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mInitialized:Z

    if-nez v2, :cond_1

    .line 73
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "analytics.Google.trackingId"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "trackingId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 75
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 76
    .local v0, "googleAnalytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    iget-boolean v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mShowLogs:Z

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    .line 79
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mAppTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 80
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mAppTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 81
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mAppTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-direct {p0, v2, v3}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->enableUncaughtExceptionHandling(Landroid/content/Context;Lcom/google/android/gms/analytics/Tracker;)V

    .line 83
    iput-boolean v4, p0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mInitialized:Z

    .line 86
    .end local v0    # "googleAnalytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v1    # "trackingId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public declared-synchronized log(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 36
    .param p1, "event"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .param p2, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 90
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 91
    :cond_0
    :try_start_0
    const-string v31, "GoogleAnalyticsWrapper"

    const-string v32, "Attempted to log an analytic event without proper arguments"

    invoke-static/range {v31 .. v32}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_2
    :try_start_1
    sget-object v31, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper$1;->$SwitchMap$com$mcdonalds$sdk$services$analytics$AnalyticType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    const-string v31, "ACTION"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 99
    .local v4, "action":Ljava/lang/Object;
    const-string v31, "DATAKEY_CUSTOM"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 100
    .local v8, "custom":Ljava/lang/Object;
    const-class v31, Ljava/lang/String;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v4, v32, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->checkNotNullAndType(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 102
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mShowLogs:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3

    .line 103
    const-string v31, "GOOGLE ANALYTICS"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "SCREEN: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mAppTracker:Lcom/google/android/gms/analytics/Tracker;

    move-object/from16 v31, v0

    check-cast v4, Ljava/lang/String;

    .end local v4    # "action":Ljava/lang/Object;
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 110
    new-instance v6, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v6}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    .line 112
    .local v6, "appViewBuilder":Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->putCommonAppCustomDimensions(Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;)V

    .line 114
    if-eqz v8, :cond_5

    .line 115
    move-object v0, v8

    check-cast v0, Landroid/util/SparseArray;

    move-object v9, v0

    .line 116
    .local v9, "dimensions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v15, v0, :cond_5

    .line 117
    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 118
    .local v17, "key":I
    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 119
    .local v18, "keyValue":Ljava/lang/String;
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 120
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mShowLogs:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4

    .line 121
    const-string v31, "GOOGLE ANALYTICS CD "

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 126
    .end local v9    # "dimensions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v15    # "index":I
    .end local v17    # "key":I
    .end local v18    # "keyValue":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mAppTracker:Lcom/google/android/gms/analytics/Tracker;

    move-object/from16 v31, v0

    invoke-virtual {v6}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 90
    .end local v6    # "appViewBuilder":Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;
    .end local v8    # "custom":Ljava/lang/Object;
    :catchall_0
    move-exception v31

    monitor-exit p0

    throw v31

    .line 132
    :pswitch_1
    :try_start_2
    const-string v31, "CATEGORY"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 133
    .local v7, "category":Ljava/lang/Object;
    const-string v31, "ACTION"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 134
    .restart local v4    # "action":Ljava/lang/Object;
    const-string v31, "LABEL"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 135
    .local v19, "label":Ljava/lang/Object;
    const-string v31, "VALUE"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 136
    .local v30, "value":Ljava/lang/Object;
    const-string v31, "DATAKEY_CUSTOM"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 137
    .restart local v8    # "custom":Ljava/lang/Object;
    const-string v31, "IMPRESSION"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 139
    .local v14, "impression":Ljava/lang/Object;
    const-class v31, Ljava/lang/String;

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v7, v32, v33

    const/16 v33, 0x1

    aput-object v4, v32, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->checkNotNullAndType(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 141
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mShowLogs:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 142
    const-string v31, "GOOGLE ANALYTICS"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CATEGORY: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", ACTION: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", LABEL: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_6
    new-instance v10, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v10}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 147
    .local v10, "eventBuilder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    check-cast v7, Ljava/lang/String;

    .end local v7    # "category":Ljava/lang/Object;
    invoke-virtual {v10, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 148
    check-cast v4, Ljava/lang/String;

    .end local v4    # "action":Ljava/lang/Object;
    invoke-virtual {v10, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 150
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->putCommonEventCustomDimensions(Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;)V

    .line 152
    if-eqz v8, :cond_8

    .line 153
    move-object v0, v8

    check-cast v0, Landroid/util/SparseArray;

    move-object v9, v0

    .line 154
    .restart local v9    # "dimensions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .restart local v15    # "index":I
    :goto_2
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v15, v0, :cond_8

    .line 155
    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 156
    .restart local v17    # "key":I
    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 157
    .restart local v18    # "keyValue":Ljava/lang/String;
    if-eqz v18, :cond_7

    .line 158
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 159
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mShowLogs:Z

    move/from16 v31, v0

    if-eqz v31, :cond_7

    .line 160
    const-string v31, "GOOGLE ANALYTICS CD"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 167
    .end local v9    # "dimensions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v15    # "index":I
    .end local v17    # "key":I
    .end local v18    # "keyValue":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 168
    check-cast v19, Ljava/lang/String;

    .end local v19    # "label":Ljava/lang/Object;
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 170
    :cond_9
    move-object/from16 v0, v30

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v31, v0

    if-eqz v31, :cond_a

    .line 171
    check-cast v30, Ljava/lang/Long;

    .end local v30    # "value":Ljava/lang/Object;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v10, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 175
    :cond_a
    if-eqz v14, :cond_b

    .line 176
    move-object v0, v14

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    move-object/from16 v22, v0

    .line 177
    .local v22, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    new-instance v31, Lcom/google/android/gms/analytics/ecommerce/Promotion;

    invoke-direct/range {v31 .. v31}, Lcom/google/android/gms/analytics/ecommerce/Promotion;-><init>()V

    .line 178
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    move-result-object v31

    .line 179
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    move-result-object v31

    const-string v32, "%s - %s"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    .line 180
    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidFrom()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-virtual/range {v22 .. v22}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLocalValidThrough()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setCreative(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    move-result-object v31

    const-string v32, "In app offers"

    .line 181
    invoke-virtual/range {v31 .. v32}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setPosition(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    move-result-object v26

    .line 182
    .local v26, "promotion":Lcom/google/android/gms/analytics/ecommerce/Promotion;
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->addPromotion(Lcom/google/android/gms/analytics/ecommerce/Promotion;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 185
    .end local v22    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v26    # "promotion":Lcom/google/android/gms/analytics/ecommerce/Promotion;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mAppTracker:Lcom/google/android/gms/analytics/Tracker;

    move-object/from16 v31, v0

    invoke-virtual {v10}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 191
    .end local v8    # "custom":Ljava/lang/Object;
    .end local v10    # "eventBuilder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .end local v14    # "impression":Ljava/lang/Object;
    :pswitch_2
    const-string v31, "DATAKEY_THROWABLE"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 192
    .local v11, "exception":Ljava/lang/Object;
    const-class v31, Ljava/lang/Throwable;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v11, v32, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->checkNotNullAndType(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 194
    check-cast v11, Ljava/lang/Throwable;

    .end local v11    # "exception":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v27

    .line 195
    .local v27, "stackTraceElements":[Ljava/lang/StackTraceElement;
    const-string v21, "Unknown method"

    .line 196
    .local v21, "methodName":Ljava/lang/String;
    const-string v20, "Unknown location"

    .line 198
    .local v20, "location":Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_c

    .line 199
    const/16 v31, 0x0

    aget-object v31, v27, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v21

    .line 200
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x0

    aget-object v32, v27, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ":"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    aget-object v32, v27, v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 204
    :cond_c
    new-instance v12, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v12}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    .line 205
    .local v12, "exceptionBuilder":Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->putCommonExceptionCustomDimensions(Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mAppTracker:Lcom/google/android/gms/analytics/Tracker;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " => "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 207
    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v32

    const/16 v33, 0x0

    .line 208
    invoke-virtual/range {v32 .. v33}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v32

    .line 209
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v32

    .line 206
    invoke-virtual/range {v31 .. v32}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 215
    .end local v12    # "exceptionBuilder":Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
    .end local v20    # "location":Ljava/lang/String;
    .end local v21    # "methodName":Ljava/lang/String;
    .end local v27    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :pswitch_3
    const-string v31, "ACTION"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 216
    .restart local v4    # "action":Ljava/lang/Object;
    const-string v31, "DATAKEY_CUSTOM"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 218
    .restart local v8    # "custom":Ljava/lang/Object;
    const-class v31, Landroid/util/SparseArray;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v8, v32, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->checkNotNullAndType(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 222
    new-instance v5, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v5}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    .line 224
    .local v5, "appView":Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->putCommonAppCustomDimensions(Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;)V

    .line 226
    move-object v0, v8

    check-cast v0, Landroid/util/SparseArray;

    move-object v9, v0

    .line 227
    .restart local v9    # "dimensions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .restart local v15    # "index":I
    :goto_3
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v15, v0, :cond_e

    .line 228
    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 229
    .restart local v17    # "key":I
    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 230
    .restart local v18    # "keyValue":Ljava/lang/String;
    if-eqz v18, :cond_d

    .line 231
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 232
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mShowLogs:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d

    .line 233
    const-string v31, "GOOGLE ANALYTICS CD"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 239
    .end local v17    # "key":I
    .end local v18    # "keyValue":Ljava/lang/String;
    :cond_e
    instance-of v0, v4, Ljava/lang/String;

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mAppTracker:Lcom/google/android/gms/analytics/Tracker;

    move-object/from16 v31, v0

    check-cast v4, Ljava/lang/String;

    .end local v4    # "action":Ljava/lang/Object;
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 243
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mAppTracker:Lcom/google/android/gms/analytics/Tracker;

    move-object/from16 v31, v0

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 248
    .end local v5    # "appView":Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;
    .end local v8    # "custom":Ljava/lang/Object;
    .end local v9    # "dimensions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v15    # "index":I
    :pswitch_4
    const-string v31, "TRANSACTION_MAP"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 249
    .local v28, "transaction":Ljava/lang/Object;
    const-string v31, "PRODUCT_LIST"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 250
    .local v25, "products":Ljava/lang/Object;
    const-class v31, Ljava/util/Map;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v28, v32, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->checkNotNullAndType(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 251
    const-class v31, Ljava/util/List;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v25, v32, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->checkNotNullAndType(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 253
    move-object/from16 v0, v28

    check-cast v0, Ljava/util/Map;

    move-object/from16 v29, v0

    .line 254
    .local v29, "transactionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, v25

    check-cast v0, Ljava/util/List;

    move-object/from16 v23, v0

    .line 255
    .local v23, "productList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    sget-boolean v31, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->$assertionsDisabled:Z

    if-nez v31, :cond_10

    if-nez v29, :cond_10

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31

    .line 256
    :cond_10
    new-instance v32, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    invoke-direct/range {v32 .. v32}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;-><init>()V

    const-string v31, "transactionId"

    .line 258
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v32

    const-string v31, "affliation"

    .line 259
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setAffiliation(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v32

    const-string v31, "revenue"

    .line 260
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Double;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setRevenue(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v32

    const-string v31, "Tax"

    .line 261
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Double;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setTax(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v32

    const-string v31, "Shipping"

    .line 262
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Double;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setShipping(D)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v32

    const-string v31, "CurrencyCode"

    .line 263
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;

    move-result-object v31

    .line 264
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/analytics/HitBuilders$TransactionBuilder;->build()Ljava/util/Map;

    move-result-object v13

    .line 266
    .local v13, "googleTransactionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mAppTracker:Lcom/google/android/gms/analytics/Tracker;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 268
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map;

    .line 269
    .local v24, "productMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v33, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    invoke-direct/range {v33 .. v33}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;-><init>()V

    const-string v31, "transactionId"

    .line 270
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v33

    const-string v31, "name"

    .line 271
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v33

    const-string v31, "sku"

    .line 272
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setSku(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v33

    const-string v31, "category"

    .line 273
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v33

    const-string v31, "price"

    .line 274
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Double;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setPrice(D)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v33

    const-string v31, "quantity"

    .line 275
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->setQuantity(J)Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;

    move-result-object v31

    .line 276
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/analytics/HitBuilders$ItemBuilder;->build()Ljava/util/Map;

    move-result-object v16

    .line 277
    .local v16, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;->mAppTracker:Lcom/google/android/gms/analytics/Tracker;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
