.class public Lcom/mcdonalds/sdk/services/configuration/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;
    }
.end annotation


# static fields
.field public static final DEBUG_CONFIG_KEY:Ljava/lang/String; = "DEBUG"

.field public static final LOCALIZATION_CONFIG_KEY:Ljava/lang/String; = "localization"

.field public static final MCD_NOTIFICATION_CONFIGURATION_CHANGED:Ljava/lang/String; = "MCD_NOTIFICATION_CONFIGURATION_CHANGED"

.field public static final MERGED_CONFIG:Ljava/lang/String; = "MERGED_CONFIG"

.field public static final NOTIFICATION_CONNECTIVITY_CHANGED:Ljava/lang/String; = "NOTIFICATION_CONNECTIVITY_CHANGED"

.field public static final PREF_CONFIG_KEY:Ljava/lang/String; = "PREF_CONFIG_KEY"

.field public static final PREF_CURRENT_CONFIG:Ljava/lang/String; = "PREF_CURRENT_CONFIG"

.field public static final SHOW_DEPRECATED_KEYS_ALERT_KEY:Ljava/lang/String; = "showAlertForDeprecatedKeys"

.field private static mSharedInstance:Lcom/mcdonalds/sdk/services/configuration/Configuration;


# instance fields
.field private currentLocale:Ljava/util/Locale;

.field private mConfigMap:Ljava/util/Map;
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

.field private mContext:Landroid/content/Context;

.field private mCurrencyFormat:Ljava/text/NumberFormat;

.field private mCurrentCountry:Ljava/lang/String;

.field private mEasyAddressLanguageTag:Ljava/lang/String;

.field private mIsInitialized:Z

.field private mLanguage:Ljava/lang/String;

.field private mLanguageTag:Ljava/lang/String;

.field private mLocalization:Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

.field private mNutritionLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->initialize(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mConfigMap:Ljava/util/Map;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/sdk/services/configuration/Configuration;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mConfigMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->needsMerge(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/sdk/services/configuration/Configuration;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->saveConfig(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/sdk/services/configuration/Configuration;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->broadcastConfigChanged()V

    return-void
.end method

.method private broadcastConfigChanged()V
    .locals 2

    .prologue
    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MCD_NOTIFICATION_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "configChangeIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 363
    return-void
.end method

.method private checkMapForKey(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 5
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldConfig"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "deprecatedConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mConfigMap:Ljava/util/Map;

    invoke-static {v3, p2}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    .local v0, "retValue":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 413
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mConfigMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 415
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mConfigMap:Ljava/util/Map;

    const-string v4, "showAlertForDeprecatedKeys"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 416
    .local v2, "showWarningObj":Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "showWarningObj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 425
    .local v1, "showWarning":Z
    :goto_0
    return-object v0

    .line 416
    .end local v1    # "showWarning":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLanguageTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v0, "%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mSharedInstance:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 87
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mSharedInstance:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must initialize this class first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    sget-object v0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mSharedInstance:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    goto :goto_0
.end method

.method public static getSharedInstance(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/configuration/Configuration;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-object v0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mSharedInstance:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Lcom/mcdonalds/sdk/services/configuration/Configuration;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mSharedInstance:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .line 108
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mSharedInstance:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    return-object v0

    .line 103
    :cond_1
    sget-object v0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mSharedInstance:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must initialize this class first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mergeConfiguration(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "oldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1, p0}, Lcom/mcdonalds/sdk/utils/MapUtils;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static needsMerge(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "oldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 638
    if-nez p0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v4

    .line 642
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 643
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 645
    .local v3, "value":Ljava/lang/Object;
    instance-of v7, v3, Ljava/util/Map;

    if-eqz v7, :cond_4

    .line 646
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 648
    .local v2, "oldValue":Ljava/lang/Object;
    instance-of v7, v2, Ljava/util/Map;

    if-eqz v7, :cond_3

    .line 650
    check-cast v3, Ljava/util/Map;

    .end local v3    # "value":Ljava/lang/Object;
    check-cast v2, Ljava/util/Map;

    .end local v2    # "oldValue":Ljava/lang/Object;
    invoke-static {v3, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->needsMerge(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    .line 651
    .local v1, "needs":Z
    if-eqz v1, :cond_2

    move v4, v5

    .line 652
    goto :goto_0

    .end local v1    # "needs":Z
    .restart local v2    # "oldValue":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    move v4, v5

    .line 656
    goto :goto_0

    .line 658
    .end local v2    # "oldValue":Ljava/lang/Object;
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v4, v5

    .line 660
    goto :goto_0

    .line 661
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v3, :cond_6

    .line 662
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move v4, v5

    .line 664
    goto :goto_0

    .line 665
    :cond_6
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 666
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v5

    .line 668
    goto :goto_0
.end method

.method private saveConfig(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "config"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 678
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 679
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "PREF_CONFIG_KEY"

    const-string v4, "MERGED_CONFIG"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 681
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    instance-of v4, v3, Lcom/google/gson/Gson;

    if-nez v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "configStr":Ljava/lang/String;
    :goto_0
    const-string v3, "PREF_CURRENT_CONFIG"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 683
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 684
    return-void

    .line 681
    .end local v0    # "configStr":Ljava/lang/String;
    :cond_0
    check-cast v3, Lcom/google/gson/Gson;

    invoke-static {v3, p1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setSharedInstance(Lcom/mcdonalds/sdk/services/configuration/Configuration;)V
    .locals 0
    .param p0, "configuration"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .prologue
    .line 116
    sput-object p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mSharedInstance:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .line 117
    return-void
.end method

.method private splitLanguageTag()V
    .locals 4

    .prologue
    .line 251
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguageTag:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 252
    .local v0, "dashIndex":I
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrentCountry:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguageTag:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguage:Ljava/lang/String;

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public getBooleanForKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 479
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBooleanForKey(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 688
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result p2

    .line 692
    .end local p2    # "defaultValue":Z
    :cond_0
    return p2
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string v0, "shortDescription"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrencyFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyFormatter()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrencyFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getCurrentCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrentCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLanguageTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->currentLocale:Ljava/util/Locale;

    .line 296
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->currentLocale:Ljava/util/Locale;

    .line 299
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public getDoubleForKey(Ljava/lang/String;)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 437
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 438
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 440
    :goto_0
    return-wide v2

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getEasyAddressLanguageTag()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 559
    const-string v10, "localization"

    invoke-virtual {p0, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 560
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    const-string v11, "localization"

    .line 561
    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 562
    .local v0, "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->toString()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    instance-of v13, v10, Lcom/google/gson/Gson;

    if-nez v13, :cond_3

    invoke-virtual {v10, v11, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    check-cast v5, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    .line 564
    .local v5, "localization":Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v8

    .line 566
    .local v8, "userLocale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->getLanguage(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/configuration/Language;

    move-result-object v6

    .line 567
    .local v6, "matching":Lcom/mcdonalds/sdk/services/configuration/Language;
    if-eqz v6, :cond_5

    .line 568
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/configuration/Language;->getTags()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 570
    .local v4, "languageTag":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/configuration/Language;->isSingleCountry()Z

    move-result v10

    if-nez v10, :cond_1

    .line 571
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 572
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 571
    invoke-direct {p0, v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLanguageTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 573
    .local v9, "userTag":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/configuration/Language;->getTags()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 574
    .local v7, "tag":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 575
    move-object v4, v9

    .line 581
    .end local v7    # "tag":Ljava/lang/String;
    .end local v9    # "userTag":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    .line 582
    .local v1, "currentCountry":Ljava/lang/String;
    const-string v3, ""

    .line 583
    .local v3, "language":Ljava/lang/String;
    const-string v10, "-"

    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v2, v10, 0x1

    .line 584
    .local v2, "dashIndex":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_2

    if-lez v2, :cond_2

    .line 585
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 586
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v4, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 590
    :cond_2
    const-string v10, "CHS"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 591
    const-string v10, "CN"

    invoke-direct {p0, v3, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLanguageTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mEasyAddressLanguageTag:Ljava/lang/String;

    .line 605
    .end local v0    # "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "currentCountry":Ljava/lang/String;
    .end local v2    # "dashIndex":I
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "languageTag":Ljava/lang/String;
    .end local v5    # "localization":Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;
    .end local v6    # "matching":Lcom/mcdonalds/sdk/services/configuration/Language;
    .end local v8    # "userLocale":Ljava/util/Locale;
    :goto_1
    iget-object v10, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mEasyAddressLanguageTag:Ljava/lang/String;

    return-object v10

    .line 562
    .restart local v0    # "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    check-cast v10, Lcom/google/gson/Gson;

    invoke-static {v10, v11, v12}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 593
    .restart local v1    # "currentCountry":Ljava/lang/String;
    .restart local v2    # "dashIndex":I
    .restart local v3    # "language":Ljava/lang/String;
    .restart local v4    # "languageTag":Ljava/lang/String;
    .restart local v5    # "localization":Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;
    .restart local v6    # "matching":Lcom/mcdonalds/sdk/services/configuration/Language;
    .restart local v8    # "userLocale":Ljava/util/Locale;
    :cond_4
    invoke-direct {p0, v3, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLanguageTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mEasyAddressLanguageTag:Ljava/lang/String;

    goto :goto_1

    .line 598
    .end local v1    # "currentCountry":Ljava/lang/String;
    .end local v2    # "dashIndex":I
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "languageTag":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->getDefaultEasyAddressLanguageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mEasyAddressLanguageTag:Ljava/lang/String;

    goto :goto_1

    .line 602
    .end local v0    # "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "localization":Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;
    .end local v6    # "matching":Lcom/mcdonalds/sdk/services/configuration/Language;
    .end local v8    # "userLocale":Ljava/util/Locale;
    :cond_6
    const-string v10, "en-CN"

    iput-object v10, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mEasyAddressLanguageTag:Ljava/lang/String;

    goto :goto_1
.end method

.method public getIntForKey(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 465
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 466
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 468
    :goto_0
    return v1

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalization()Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLocalization:Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    return-object v0
.end method

.method public getLocalizedStringForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 519
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 520
    check-cast v0, Ljava/lang/String;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->localizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    :goto_0
    return-object v1

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLongForKey(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 451
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 452
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 454
    :goto_0
    return-wide v2

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getMarket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const-string v0, "connectors.Middleware.marketId"

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNutritionLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mNutritionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getNutritionLanguageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    .line 154
    .local v0, "userLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLocalization:Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->getNutritionLanguageNames()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/configuration/Language;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/configuration/Language;->getName()Ljava/lang/String;

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLocalization:Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->getNutritionLanguageNames()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/configuration/Language;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/configuration/Language;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getStringForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 490
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 491
    check-cast v0, Ljava/lang/String;

    .line 493
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 508
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mConfigMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error accessing configuration. Your application must provide a configuration. Please see the Getting Started Guide for more information."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_0
    const/4 v0, 0x0

    .line 396
    .local v0, "configValue":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration;->deprecatedConfigKeyMap:Ljava/util/Map;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration;->deprecatedConfigKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 397
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mConfigMap:Ljava/util/Map;

    sget-object v1, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration;->deprecatedConfigKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 398
    sget-object v1, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration;->deprecatedConfigKeyMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->checkMapForKey(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 404
    .end local v0    # "configValue":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 405
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mConfigMap:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 407
    :cond_2
    return-object v0

    .line 400
    .restart local v0    # "configValue":Ljava/lang/Object;, "TT;"
    :cond_3
    sget-object v1, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration;->reverseDeprecatedConfigKeyMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration;->reverseDeprecatedConfigKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    sget-object v1, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration;->reverseDeprecatedConfigKeyMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->checkMapForKey(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/configuration/Configuration;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 128
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mIsInitialized:Z

    .line 130
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/DeprecatedConfiguration;->init()V

    .line 132
    :cond_0
    return-object p0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mIsInitialized:Z

    return v0
.end method

.method public isLocaleChanged(Ljava/util/Locale;)Z
    .locals 1
    .param p1, "curLocale"    # Ljava/util/Locale;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->currentLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZipCode(Ljava/lang/String;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 609
    const-string v3, "textValidation.postalCodeRegex"

    invoke-virtual {p0, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 610
    .local v2, "regexExpression":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 611
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 612
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 613
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 615
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public loadConfigurationWithJsonString(Ljava/lang/String;)V
    .locals 11
    .param p1, "configurationString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    .line 319
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    const-class v8, Ljava/util/HashMap;

    instance-of v9, v7, Lcom/google/gson/Gson;

    if-nez v9, :cond_0

    invoke-virtual {v7, p1, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    :goto_0
    check-cast v7, Ljava/util/Map;

    iput-object v7, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mConfigMap:Ljava/util/Map;

    .line 321
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->setPreferredLanguage()V

    .line 323
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->broadcastConfigChanged()V

    .line 327
    :try_start_0
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .local v6, "versionName":Ljava/lang/String;
    :goto_1
    const-string v7, "showBuildVersion"

    invoke-virtual {p0, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 333
    .local v4, "showBuildVersion":Ljava/lang/Boolean;
    const-string v7, "showShortDescription"

    invoke-virtual {p0, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 335
    .local v5, "showShortDescription":Ljava/lang/Boolean;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v5, :cond_1

    .line 336
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 338
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v7, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mConfigMap:Ljava/util/Map;

    const-string v8, "longDescription"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 340
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Build "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 341
    const-string v7, "Config & Build Information"

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 342
    sget v7, Lcom/mcdonalds/sdk/R$drawable;->icon_red_circle_plus:I

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 343
    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 344
    sget v7, Lcom/mcdonalds/sdk/R$drawable;->icon_red_circle_plus:I

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 345
    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 347
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 348
    .local v2, "notification":Landroid/app/Notification;
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    .line 349
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 352
    .local v3, "notificationManger":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/NotificationManager;->cancelAll()V

    .line 358
    .end local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v2    # "notification":Landroid/app/Notification;
    :goto_2
    return-void

    .line 319
    .end local v3    # "notificationManger":Landroid/app/NotificationManager;
    .end local v4    # "showBuildVersion":Ljava/lang/Boolean;
    .end local v5    # "showShortDescription":Ljava/lang/Boolean;
    .end local v6    # "versionName":Ljava/lang/String;
    :cond_0
    check-cast v7, Lcom/google/gson/Gson;

    invoke-static {v7, p1, v8}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "unknown"

    .restart local v6    # "versionName":Ljava/lang/String;
    goto :goto_1

    .line 354
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "showBuildVersion":Ljava/lang/Boolean;
    .restart local v5    # "showShortDescription":Ljava/lang/Boolean;
    :cond_1
    iget-object v7, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    .line 355
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 356
    .restart local v3    # "notificationManger":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_2
.end method

.method public localizedStringForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 533
    if-eqz p1, :cond_2

    .line 535
    const-string v1, "raw:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 547
    .end local p1    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 540
    .restart local p1    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 543
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 547
    .end local v0    # "resourceId":I
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public networkUpdate(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;)V
    .locals 1
    .param p1, "connection"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .param p2, "listener"    # Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;

    .prologue
    .line 619
    new-instance v0, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;

    invoke-direct {v0, p0, p2}, Lcom/mcdonalds/sdk/services/configuration/Configuration$1;-><init>(Lcom/mcdonalds/sdk/services/configuration/Configuration;Lcom/mcdonalds/sdk/services/configuration/Configuration$NetworkUpdateListener;)V

    invoke-static {p1, v0}, Lcom/mcdonalds/sdk/utils/SDKUtils;->requestConfig(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 635
    return-void
.end method

.method public setPreferredLanguage()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 175
    const/4 v2, 0x0

    .line 177
    .local v2, "currencyFormatLanguage":Ljava/lang/String;
    const-string v9, "localization"

    invoke-virtual {p0, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 179
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "localization"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 180
    .local v0, "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->toString()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    instance-of v12, v9, Lcom/google/gson/Gson;

    if-nez v12, :cond_1

    invoke-virtual {v9, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    :goto_0
    check-cast v9, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLocalization:Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    .line 182
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLocalization:Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->getDefaultCurrencyFormatLanguage()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v7

    .line 186
    .local v7, "userLocale":Ljava/util/Locale;
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLocalization:Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->getLanguage(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/configuration/Language;

    move-result-object v5

    .line 187
    .local v5, "matching":Lcom/mcdonalds/sdk/services/configuration/Language;
    if-eqz v5, :cond_5

    .line 189
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/Language;->getNutritionLanguage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mNutritionLanguage:Ljava/lang/String;

    .line 191
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/Language;->isSingleCountry()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 193
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/Language;->getTags()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguageTag:Ljava/lang/String;

    .line 206
    :cond_0
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/Language;->getTags()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguageTag:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->splitLanguageTag()V

    .line 211
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrentCountry:Ljava/lang/String;

    const-string v10, "CHS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 212
    new-instance v9, Ljava/util/Locale;

    iget-object v10, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguage:Ljava/lang/String;

    const-string v11, "CN"

    invoke-direct {v9, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrencyFormat:Ljava/text/NumberFormat;

    .line 213
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguage:Ljava/lang/String;

    const-string v10, "CN"

    invoke-direct {p0, v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLanguageTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mEasyAddressLanguageTag:Ljava/lang/String;

    .line 248
    .end local v0    # "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "matching":Lcom/mcdonalds/sdk/services/configuration/Language;
    .end local v7    # "userLocale":Ljava/util/Locale;
    :goto_1
    return-void

    .line 180
    .restart local v0    # "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    check-cast v9, Lcom/google/gson/Gson;

    invoke-static {v9, v10, v11}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 197
    .restart local v5    # "matching":Lcom/mcdonalds/sdk/services/configuration/Language;
    .restart local v7    # "userLocale":Ljava/util/Locale;
    :cond_2
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLanguageTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "userTag":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/Language;->getTags()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 199
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 200
    iput-object v8, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguageTag:Ljava/lang/String;

    goto :goto_1

    .line 215
    .end local v6    # "tag":Ljava/lang/String;
    .end local v8    # "userTag":Ljava/lang/String;
    :cond_4
    new-instance v9, Ljava/util/Locale;

    const-string/jumbo v10, "zh"

    iget-object v11, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrentCountry:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrencyFormat:Ljava/text/NumberFormat;

    .line 216
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguage:Ljava/lang/String;

    iget-object v10, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrentCountry:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLanguageTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mEasyAddressLanguageTag:Ljava/lang/String;

    goto :goto_1

    .line 221
    :cond_5
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLocalization:Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguageTag:Ljava/lang/String;

    .line 222
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLocalization:Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->getDefaultEasyAddressLanguageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mEasyAddressLanguageTag:Ljava/lang/String;

    .line 223
    iget-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLocalization:Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/services/configuration/LocalizationConfig;->getDefaultNutritionLanguageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mNutritionLanguage:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->splitLanguageTag()V

    .line 227
    if-eqz v2, :cond_6

    .line 229
    const-string v9, "-"

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 231
    .local v3, "dashIndex":I
    invoke-virtual {v2, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "language":Ljava/lang/String;
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "country":Ljava/lang/String;
    new-instance v9, Ljava/util/Locale;

    invoke-direct {v9, v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrencyFormat:Ljava/text/NumberFormat;

    goto/16 :goto_1

    .line 238
    .end local v1    # "country":Ljava/lang/String;
    .end local v3    # "dashIndex":I
    .end local v4    # "language":Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/util/Locale;

    iget-object v10, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguage:Ljava/lang/String;

    iget-object v11, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrentCountry:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrencyFormat:Ljava/text/NumberFormat;

    goto/16 :goto_1

    .line 243
    .end local v0    # "configValue":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "matching":Lcom/mcdonalds/sdk/services/configuration/Language;
    .end local v7    # "userLocale":Ljava/util/Locale;
    :cond_7
    const-string v9, "en-US"

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mLanguageTag:Ljava/lang/String;

    .line 244
    const-string v9, "en"

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mNutritionLanguage:Ljava/lang/String;

    .line 245
    const-string v9, "en-CN"

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mEasyAddressLanguageTag:Ljava/lang/String;

    .line 246
    new-instance v9, Ljava/util/Locale;

    const-string v10, "en"

    const-string v11, "US"

    invoke-direct {v9, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/services/configuration/Configuration;->mCurrencyFormat:Ljava/text/NumberFormat;

    goto/16 :goto_1
.end method
