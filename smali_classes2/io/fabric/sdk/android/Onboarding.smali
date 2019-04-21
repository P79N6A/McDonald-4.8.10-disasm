.class Lio/fabric/sdk/android/Onboarding;
.super Lio/fabric/sdk/android/Kit;
.source "Onboarding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private applicationLabel:Ljava/lang/String;

.field private installerPackageName:Ljava/lang/String;

.field private final kitsFinder:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/KitInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private packageInfo:Landroid/content/pm/PackageInfo;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private packageName:Ljava/lang/String;

.field private final providedKits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation
.end field

.field private final requestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

.field private targetAndroidSdkVersion:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/KitInfo;",
            ">;>;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "kitsFinder":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/Map<Ljava/lang/String;Lio/fabric/sdk/android/KitInfo;>;>;"
    .local p2, "providedKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/Kit;>;"
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    .line 63
    new-instance v0, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/network/DefaultHttpRequestFactory;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/Onboarding;->requestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    .line 64
    iput-object p1, p0, Lio/fabric/sdk/android/Onboarding;->kitsFinder:Ljava/util/concurrent/Future;

    .line 65
    iput-object p2, p0, Lio/fabric/sdk/android/Onboarding;->providedKits:Ljava/util/Collection;

    .line 66
    return-void
.end method

.method private buildAppRequest(Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)Lio/fabric/sdk/android/services/settings/AppRequestData;
    .locals 14
    .param p1, "iconRequest"    # Lio/fabric/sdk/android/services/settings/IconRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/settings/IconRequest;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/KitInfo;",
            ">;)",
            "Lio/fabric/sdk/android/services/settings/AppRequestData;"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "sdkKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/KitInfo;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 211
    .local v13, "context":Landroid/content/Context;
    new-instance v0, Lio/fabric/sdk/android/services/common/ApiKey;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/ApiKey;-><init>()V

    invoke-virtual {v0, v13}, Lio/fabric/sdk/android/services/common/ApiKey;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "apiKey":Ljava/lang/String;
    invoke-static {v13}, Lio/fabric/sdk/android/services/common/CommonUtils;->resolveBuildId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 214
    .local v12, "buildId":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v12, v0, v3

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "instanceId":Ljava/lang/String;
    iget-object v0, p0, Lio/fabric/sdk/android/Onboarding;->installerPackageName:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->getId()I

    move-result v7

    .line 216
    .local v7, "source":I
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/IdManager;->getAppIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "appIdentifier":Ljava/lang/String;
    new-instance v0, Lio/fabric/sdk/android/services/settings/AppRequestData;

    iget-object v3, p0, Lio/fabric/sdk/android/Onboarding;->versionName:Ljava/lang/String;

    iget-object v4, p0, Lio/fabric/sdk/android/Onboarding;->versionCode:Ljava/lang/String;

    iget-object v6, p0, Lio/fabric/sdk/android/Onboarding;->applicationLabel:Ljava/lang/String;

    iget-object v8, p0, Lio/fabric/sdk/android/Onboarding;->targetAndroidSdkVersion:Ljava/lang/String;

    const-string v9, "0"

    move-object v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v0 .. v11}, Lio/fabric/sdk/android/services/settings/AppRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)V

    return-object v0
.end method

.method private performAutoConfigure(Ljava/lang/String;Lio/fabric/sdk/android/services/settings/AppSettingsData;Ljava/util/Collection;)Z
    .locals 5
    .param p1, "iconHash"    # Ljava/lang/String;
    .param p2, "appSettings"    # Lio/fabric/sdk/android/services/settings/AppSettingsData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/settings/AppSettingsData;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/KitInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p3, "sdkKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/KitInfo;>;"
    const/4 v0, 0x1

    .line 157
    .local v0, "properlyConfigured":Z
    const-string v1, "new"

    iget-object v2, p2, Lio/fabric/sdk/android/services/settings/AppSettingsData;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lio/fabric/sdk/android/Onboarding;->performCreateApp(Ljava/lang/String;Lio/fabric/sdk/android/services/settings/AppSettingsData;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings;->getInstance()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/settings/Settings;->loadSettingsSkippingCache()Z

    move-result v0

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to create app with Crashlytics service."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :cond_2
    const-string v1, "configured"

    iget-object v2, p2, Lio/fabric/sdk/android/services/settings/AppSettingsData;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings;->getInstance()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/settings/Settings;->loadSettingsSkippingCache()Z

    move-result v0

    goto :goto_0

    .line 172
    :cond_3
    iget-boolean v1, p2, Lio/fabric/sdk/android/services/settings/AppSettingsData;->updateRequired:Z

    if-eqz v1, :cond_0

    .line 175
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Server says an update is required - forcing a full App update."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lio/fabric/sdk/android/Onboarding;->performUpdateApp(Ljava/lang/String;Lio/fabric/sdk/android/services/settings/AppSettingsData;Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private performCreateApp(Ljava/lang/String;Lio/fabric/sdk/android/services/settings/AppSettingsData;Ljava/util/Collection;)Z
    .locals 5
    .param p1, "iconHash"    # Ljava/lang/String;
    .param p2, "appSettings"    # Lio/fabric/sdk/android/services/settings/AppSettingsData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/settings/AppSettingsData;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/KitInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 185
    .line 186
    .local p3, "sdkKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/KitInfo;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lio/fabric/sdk/android/services/settings/IconRequest;->build(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/IconRequest;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lio/fabric/sdk/android/Onboarding;->buildAppRequest(Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)Lio/fabric/sdk/android/services/settings/AppRequestData;

    move-result-object v0

    .line 187
    .local v0, "requestData":Lio/fabric/sdk/android/services/settings/AppRequestData;
    new-instance v1, Lio/fabric/sdk/android/services/settings/CreateAppSpiCall;

    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lio/fabric/sdk/android/services/settings/AppSettingsData;->url:Ljava/lang/String;

    iget-object v4, p0, Lio/fabric/sdk/android/Onboarding;->requestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    invoke-direct {v1, p0, v2, v3, v4}, Lio/fabric/sdk/android/services/settings/CreateAppSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V

    .line 188
    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/settings/CreateAppSpiCall;->invoke(Lio/fabric/sdk/android/services/settings/AppRequestData;)Z

    move-result v1

    .line 187
    return v1
.end method

.method private performUpdateApp(Lio/fabric/sdk/android/services/settings/AppSettingsData;Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)Z
    .locals 5
    .param p1, "appSettings"    # Lio/fabric/sdk/android/services/settings/AppSettingsData;
    .param p2, "iconRequest"    # Lio/fabric/sdk/android/services/settings/IconRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/settings/AppSettingsData;",
            "Lio/fabric/sdk/android/services/settings/IconRequest;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/KitInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 204
    .local p3, "sdkKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/KitInfo;>;"
    invoke-direct {p0, p2, p3}, Lio/fabric/sdk/android/Onboarding;->buildAppRequest(Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)Lio/fabric/sdk/android/services/settings/AppRequestData;

    move-result-object v0

    .line 205
    .local v0, "requestData":Lio/fabric/sdk/android/services/settings/AppRequestData;
    new-instance v1, Lio/fabric/sdk/android/services/settings/UpdateAppSpiCall;

    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lio/fabric/sdk/android/services/settings/AppSettingsData;->url:Ljava/lang/String;

    iget-object v4, p0, Lio/fabric/sdk/android/Onboarding;->requestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    invoke-direct {v1, p0, v2, v3, v4}, Lio/fabric/sdk/android/services/settings/UpdateAppSpiCall;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V

    .line 206
    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/settings/UpdateAppSpiCall;->invoke(Lio/fabric/sdk/android/services/settings/AppRequestData;)Z

    move-result v1

    .line 205
    return v1
.end method

.method private performUpdateApp(Ljava/lang/String;Lio/fabric/sdk/android/services/settings/AppSettingsData;Ljava/util/Collection;)Z
    .locals 1
    .param p1, "iconHash"    # Ljava/lang/String;
    .param p2, "appSettings"    # Lio/fabric/sdk/android/services/settings/AppSettingsData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/settings/AppSettingsData;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/KitInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p3, "sdkKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/KitInfo;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/fabric/sdk/android/services/settings/IconRequest;->build(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/IconRequest;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lio/fabric/sdk/android/Onboarding;->performUpdateApp(Lio/fabric/sdk/android/services/settings/AppSettingsData;Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method private retrieveSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;
    .locals 9

    .prologue
    .line 124
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings;->getInstance()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    iget-object v3, p0, Lio/fabric/sdk/android/Onboarding;->requestFactory:Lio/fabric/sdk/android/services/network/HttpRequestFactory;

    iget-object v4, p0, Lio/fabric/sdk/android/Onboarding;->versionCode:Ljava/lang/String;

    iget-object v5, p0, Lio/fabric/sdk/android/Onboarding;->versionName:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/DataCollectionArbiter;->getInstance(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/DataCollectionArbiter;

    move-result-object v7

    move-object v1, p0

    .line 125
    invoke-virtual/range {v0 .. v7}, Lio/fabric/sdk/android/services/settings/Settings;->initialize(Lio/fabric/sdk/android/Kit;Lio/fabric/sdk/android/services/common/IdManager;Lio/fabric/sdk/android/services/network/HttpRequestFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/common/DataCollectionArbiter;)Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/Settings;->loadSettingsData()Z

    .line 130
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings;->getInstance()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v8

    .line 132
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Error dealing with settings"

    invoke-interface {v0, v1, v2, v8}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Boolean;
    .locals 9

    .prologue
    .line 98
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lio/fabric/sdk/android/services/common/CommonUtils;->getAppIconHashOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "iconHash":Ljava/lang/String;
    const/4 v0, 0x0

    .line 100
    .local v0, "appConfigured":Z
    invoke-direct {p0}, Lio/fabric/sdk/android/Onboarding;->retrieveSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v5

    .line 102
    .local v5, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    if-eqz v5, :cond_0

    .line 105
    :try_start_0
    iget-object v6, p0, Lio/fabric/sdk/android/Onboarding;->kitsFinder:Ljava/util/concurrent/Future;

    if-eqz v6, :cond_1

    .line 106
    iget-object v6, p0, Lio/fabric/sdk/android/Onboarding;->kitsFinder:Ljava/util/concurrent/Future;

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 112
    .local v4, "scannedKits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/fabric/sdk/android/KitInfo;>;"
    :goto_0
    iget-object v6, p0, Lio/fabric/sdk/android/Onboarding;->providedKits:Ljava/util/Collection;

    invoke-virtual {p0, v4, v6}, Lio/fabric/sdk/android/Onboarding;->mergeKits(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    .line 113
    .local v3, "mergedKits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/fabric/sdk/android/KitInfo;>;"
    iget-object v6, v5, Lio/fabric/sdk/android/services/settings/SettingsData;->appData:Lio/fabric/sdk/android/services/settings/AppSettingsData;

    .line 114
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    .line 113
    invoke-direct {p0, v2, v6, v7}, Lio/fabric/sdk/android/Onboarding;->performAutoConfigure(Ljava/lang/String;Lio/fabric/sdk/android/services/settings/AppSettingsData;Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 119
    .end local v3    # "mergedKits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/fabric/sdk/android/KitInfo;>;"
    .end local v4    # "scannedKits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/fabric/sdk/android/KitInfo;>;"
    :cond_0
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 108
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v4    # "scannedKits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/fabric/sdk/android/KitInfo;>;"
    goto :goto_0

    .line 115
    .end local v4    # "scannedKits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/fabric/sdk/android/KitInfo;>;"
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "Fabric"

    const-string v8, "Error performing auto configuration."

    invoke-interface {v6, v7, v8, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method getOverridenSpiEndpoint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "1.4.8.32"

    return-object v0
.end method

.method mergeKits(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/KitInfo;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/KitInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "scannedKits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/fabric/sdk/android/KitInfo;>;"
    .local p2, "providedKits":Ljava/util/Collection;, "Ljava/util/Collection<Lio/fabric/sdk/android/Kit;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/Kit;

    .line 140
    .local v0, "kit":Lio/fabric/sdk/android/Kit;
    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/fabric/sdk/android/KitInfo;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v5

    const-string v6, "binary"

    invoke-direct {v3, v4, v5, v6}, Lio/fabric/sdk/android/KitInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    .end local v0    # "kit":Lio/fabric/sdk/android/Kit;
    :cond_1
    return-object p1
.end method

.method protected onPreExecute()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->installerPackageName:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageManager:Landroid/content/pm/PackageManager;

    .line 78
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageName:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lio/fabric/sdk/android/Onboarding;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 80
    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->versionCode:Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "0.0"

    :goto_0
    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->versionName:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageManager:Landroid/content/pm/PackageManager;

    .line 84
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 85
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->applicationLabel:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lio/fabric/sdk/android/Onboarding;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/fabric/sdk/android/Onboarding;->targetAndroidSdkVersion:Ljava/lang/String;

    .line 89
    const/4 v1, 0x1

    .line 93
    :goto_1
    return v1

    .line 81
    :cond_0
    iget-object v2, p0, Lio/fabric/sdk/android/Onboarding;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed init"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
