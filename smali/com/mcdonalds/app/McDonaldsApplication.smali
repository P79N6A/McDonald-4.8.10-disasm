.class public Lcom/mcdonalds/app/McDonaldsApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "McDonaldsApplication.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/McDonaldsApplication$NotificationListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static VERSION_CODE:Ljava/lang/String;

.field private static mCaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static mDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static sInstance:Lcom/mcdonalds/app/McDonaldsApplication;


# instance fields
.field private mColdStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/mcdonalds/app/McDonaldsApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/McDonaldsApplication;->LOG_TAG:Ljava/lang/String;

    .line 44
    const-string v0, "VERSION_CODE"

    sput-object v0, Lcom/mcdonalds/app/McDonaldsApplication;->VERSION_CODE:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/mcdonalds/app/McDonaldsApplication$1;

    invoke-direct {v0}, Lcom/mcdonalds/app/McDonaldsApplication$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/McDonaldsApplication;->mCaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/McDonaldsApplication;->mColdStart:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.McDonaldsApplication"

    const-string v1, "access$000"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/mcdonalds/app/McDonaldsApplication;->mDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/McDonaldsApplication;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/McDonaldsApplication;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.McDonaldsApplication"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iput-boolean p1, p0, Lcom/mcdonalds/app/McDonaldsApplication;->mColdStart:Z

    return p1
.end method

.method private getConfigJson()Ljava/lang/String;
    .locals 10

    .prologue
    const v9, 0x7f09092e

    const/16 v8, 0xe

    const/4 v7, 0x0

    const-string v5, "getConfigJson"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lcom/mcdonalds/app/McDonaldsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "config"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 149
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/mcdonalds/app/McDonaldsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "version"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 150
    .local v3, "version":Landroid/content/SharedPreferences;
    sget-object v5, Lcom/mcdonalds/app/McDonaldsApplication;->VERSION_CODE:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 151
    .local v4, "versionCode":I
    if-eq v4, v8, :cond_0

    .line 152
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 153
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "MERGED_CONFIG"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v5, "PREF_CURRENT_CONFIG"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v5, "PREF_CONFIG_KEY"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 159
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/mcdonalds/app/McDonaldsApplication;->VERSION_CODE:Ljava/lang/String;

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    const-string v5, "PREF_CONFIG_KEY"

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/McDonaldsApplication;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "configKey":Ljava/lang/String;
    const-string v5, "MERGED_CONFIG"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    const-string v6, "PREF_CURRENT_CONFIG"

    .line 165
    invoke-static {}, Lcom/mcdonalds/app/AutoLoadedConfigurations;->getSharedInstance()Lcom/mcdonalds/app/AutoLoadedConfigurations;

    move-result-object v5

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/McDonaldsApplication;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/mcdonalds/app/AutoLoadedConfigurations;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 164
    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    :goto_0
    return-object v5

    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/AutoLoadedConfigurations;->getSharedInstance()Lcom/mcdonalds/app/AutoLoadedConfigurations;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mcdonalds/app/AutoLoadedConfigurations;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getInstance()Lcom/mcdonalds/app/McDonaldsApplication;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.McDonaldsApplication"

    const-string v1, "getInstance"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/mcdonalds/app/McDonaldsApplication;->sInstance:Lcom/mcdonalds/app/McDonaldsApplication;

    return-object v0
.end method

.method public static isDebug()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.McDonaldsApplication"

    const-string v1, "isDebug"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    const-string v0, "attachBaseContext"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 77
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public dataLayerLoggedEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "dataPoints":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "fullState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "dataLayerLoggedEvent"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getAnalytics()Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/app/analytics/datalayer/analytics/DataLayerAnalytics;->log(Ljava/lang/String;Ljava/util/Map;)V

    .line 174
    return-void
.end method

.method public getReloadIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    const-string v0, "getReloadIntent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public isColdStart()Z
    .locals 3

    .prologue
    const-string v1, "isColdStart"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-boolean v0, p0, Lcom/mcdonalds/app/McDonaldsApplication;->mColdStart:Z

    .line 142
    .local v0, "ret":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mcdonalds/app/McDonaldsApplication;->mColdStart:Z

    .line 143
    return v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "onCreate"

    invoke-static {p0, v1, v5}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 83
    new-array v1, v4, [Lio/fabric/sdk/android/Kit;

    const/4 v2, 0x0

    new-instance v3, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v3}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 85
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {p0}, Lcom/facebook/stetho/Stetho;->initializeWithDefaults(Landroid/content/Context;)V

    .line 89
    :cond_0
    iput-boolean v4, p0, Lcom/mcdonalds/app/McDonaldsApplication;->mColdStart:Z

    .line 91
    invoke-direct {p0}, Lcom/mcdonalds/app/McDonaldsApplication;->getConfigJson()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "configJson":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/mcdonalds/app/McDonaldsApplication;->getReloadIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/mcdonalds/sdk/McDonalds;->initialize(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 100
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v1

    const-string v2, "MCD_NOTIFICATION_CONFIGURATION_CHANGED"

    new-instance v3, Lcom/mcdonalds/app/McDonaldsApplication$NotificationListener;

    invoke-direct {v3}, Lcom/mcdonalds/app/McDonaldsApplication$NotificationListener;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->addObserver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 103
    invoke-static {}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->destroy()V

    .line 105
    sput-object p0, Lcom/mcdonalds/app/McDonaldsApplication;->sInstance:Lcom/mcdonalds/app/McDonaldsApplication;

    .line 107
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->isEnabled(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->init(Landroid/app/Application;Lcom/mcdonalds/sdk/services/configuration/Configuration;)V

    .line 110
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->builder()Lio/github/inflationx/viewpump/ViewPump$Builder;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/analytics/datalayer/view/CustomViewInterceptor;

    invoke-direct {v2}, Lcom/mcdonalds/app/analytics/datalayer/view/CustomViewInterceptor;-><init>()V

    .line 111
    invoke-virtual {v1, v2}, Lio/github/inflationx/viewpump/ViewPump$Builder;->addInterceptor(Lio/github/inflationx/viewpump/Interceptor;)Lio/github/inflationx/viewpump/ViewPump$Builder;

    move-result-object v1

    new-instance v2, Lio/github/inflationx/calligraphy3/CalligraphyInterceptor;

    new-instance v3, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    invoke-direct {v3}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;-><init>()V

    .line 114
    invoke-static {}, Lcom/mcdonalds/app/ui/font/FontManager;->getFontSpecifications()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->setDefaultFontPath(Ljava/lang/String;)Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    move-result-object v3

    const v4, 0x7f010001

    .line 115
    invoke-virtual {v3, v4}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->setFontAttrId(I)Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->build()Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/github/inflationx/calligraphy3/CalligraphyInterceptor;-><init>(Lio/github/inflationx/calligraphy3/CalligraphyConfig;)V

    .line 112
    invoke-virtual {v1, v2}, Lio/github/inflationx/viewpump/ViewPump$Builder;->addInterceptor(Lio/github/inflationx/viewpump/Interceptor;)Lio/github/inflationx/viewpump/ViewPump$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lio/github/inflationx/viewpump/ViewPump$Builder;->build()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v1

    .line 110
    invoke-static {v1}, Lio/github/inflationx/viewpump/ViewPump;->init(Lio/github/inflationx/viewpump/ViewPump;)V

    .line 119
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setListener(Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;)V

    .line 124
    :goto_1
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils;->init(Landroid/content/Context;)V

    .line 125
    invoke-static {}, Lcom/mcdonalds/app/storelocator/StoresManager;->getInstance()Lcom/mcdonalds/app/storelocator/StoresManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/storelocator/StoresManager;->setContext(Landroid/content/Context;)V

    .line 134
    return-void

    .line 97
    :cond_1
    invoke-static {p0, v5, v0}, Lcom/mcdonalds/sdk/McDonalds;->initialize(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Lcom/mcdonalds/app/ui/font/FontManager;->initializeFonts()V

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "onLowMemory"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    const-string v0, "onTerminate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
