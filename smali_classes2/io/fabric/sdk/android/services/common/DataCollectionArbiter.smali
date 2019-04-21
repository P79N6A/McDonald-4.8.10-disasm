.class public Lio/fabric/sdk/android/services/common/DataCollectionArbiter;
.super Ljava/lang/Object;
.source "DataCollectionArbiter.java"


# static fields
.field private static instance:Lio/fabric/sdk/android/services/common/DataCollectionArbiter;

.field private static instanceLock:Ljava/lang/Object;


# instance fields
.field private volatile crashlyticsDataCollectionEnabled:Z

.field private volatile crashlyticsDataCollectionExplicitlySet:Z

.field private final firebaseApp:Lio/fabric/sdk/android/services/common/FirebaseApp;

.field private isUnity:Z

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->instanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v6, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->isUnity:Z

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "null context"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 50
    :cond_0
    const-string v7, "com.google.firebase.crashlytics.prefs"

    .line 51
    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 53
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/FirebaseAppImpl;->getInstance(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/FirebaseApp;

    move-result-object v7

    iput-object v7, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->firebaseApp:Lio/fabric/sdk/android/services/common/FirebaseApp;

    .line 55
    const/4 v2, 0x1

    .line 56
    .local v2, "enabled":Z
    const/4 v3, 0x0

    .line 58
    .local v3, "explicitlySet":Z
    iget-object v7, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "firebase_crashlytics_collection_enabled"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    iget-object v7, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "firebase_crashlytics_collection_enabled"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 60
    const/4 v3, 0x1

    .line 86
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Z

    .line 87
    iput-boolean v3, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->crashlyticsDataCollectionExplicitlySet:Z

    .line 89
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/CommonUtils;->resolveUnityEditorVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    :goto_1
    iput-boolean v5, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->isUnity:Z

    .line 90
    return-void

    .line 63
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 64
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    .line 66
    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 69
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "firebase_crashlytics_collection_enabled"

    .line 71
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "firebase_crashlytics_collection_enabled"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 75
    const/4 v3, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v7

    const-string v8, "Fabric"

    const-string v9, "Unable to get PackageManager. Falling through"

    invoke-interface {v7, v8, v9, v1}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    move v5, v6

    .line 89
    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/DataCollectionArbiter;
    .locals 2
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v1, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->instance:Lio/fabric/sdk/android/services/common/DataCollectionArbiter;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->instance:Lio/fabric/sdk/android/services/common/DataCollectionArbiter;

    .line 31
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->instance:Lio/fabric/sdk/android/services/common/DataCollectionArbiter;

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isDataCollectionEnabled()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->isUnity:Z

    if-eqz v0, :cond_0

    .line 99
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->crashlyticsDataCollectionExplicitlySet:Z

    if-eqz v0, :cond_0

    .line 100
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Z

    .line 106
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->firebaseApp:Lio/fabric/sdk/android/services/common/FirebaseApp;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->firebaseApp:Lio/fabric/sdk/android/services/common/FirebaseApp;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0

    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldAutoInitialize()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Z

    return v0
.end method
