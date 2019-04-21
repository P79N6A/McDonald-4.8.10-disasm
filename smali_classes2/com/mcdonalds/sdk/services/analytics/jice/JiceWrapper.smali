.class public Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;
.super Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
.source "JiceWrapper.java"


# static fields
.field public static final CONFIG_KEY:Ljava/lang/String; = "Jice"

.field private static final TAG:Ljava/lang/String; = "JiceWrapper"


# instance fields
.field private mJiceAPI:Lcom/admaster/jice/api/JiceSDK;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->mJiceAPI:Lcom/admaster/jice/api/JiceSDK;

    .line 31
    return-void
.end method

.method private handle(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 5
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    const/4 v4, 0x0

    .line 64
    const-string v3, "JICE"

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 65
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 66
    const-string v3, "EVENT_NAME"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    const-string v3, "EVENT_NAME"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "eventName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 69
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->mJiceAPI:Lcom/admaster/jice/api/JiceSDK;

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->mJiceAPI:Lcom/admaster/jice/api/JiceSDK;

    invoke-virtual {v3, v0, v2}, Lcom/admaster/jice/api/JiceSDK;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 82
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v0    # "eventName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->mJiceAPI:Lcom/admaster/jice/api/JiceSDK;

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->mJiceAPI:Lcom/admaster/jice/api/JiceSDK;

    invoke-virtual {v3, v0}, Lcom/admaster/jice/api/JiceSDK;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0    # "eventName":Ljava/lang/String;
    :cond_2
    const-string v3, "INIT"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    new-instance v1, Lcom/admaster/jice/api/JiceConfig;

    invoke-direct {v1, v4, v4, v4}, Lcom/admaster/jice/api/JiceConfig;-><init>(ZZZ)V

    .line 79
    .local v1, "jiceConf":Lcom/admaster/jice/api/JiceConfig;
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/admaster/jice/api/JiceSDK;->getInstance(Landroid/content/Context;Lcom/admaster/jice/api/JiceConfig;)Lcom/admaster/jice/api/JiceSDK;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->mJiceAPI:Lcom/admaster/jice/api/JiceSDK;

    goto :goto_0
.end method

.method private handleCustomDimension(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 5
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 85
    const-string v4, "DATAKEY_CUSTOM"

    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 86
    .local v0, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v4, "JICE"

    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 87
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 88
    const-string v4, "EVENT_LOGIN"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v3, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->mJiceAPI:Lcom/admaster/jice/api/JiceSDK;

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->mJiceAPI:Lcom/admaster/jice/api/JiceSDK;

    invoke-virtual {v4, v1, v3}, Lcom/admaster/jice/api/JiceSDK;->addUserIdentifier(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 96
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private handleEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->handle(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 61
    return-void
.end method

.method private handleScreenLoad(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 0
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->handle(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 57
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public declared-synchronized log(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 2
    .param p1, "event"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .param p2, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper$1;->$SwitchMap$com$mcdonalds$sdk$services$analytics$AnalyticType:[I

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    monitor-exit p0

    return-void

    .line 42
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->handleEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 45
    :pswitch_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->handleCustomDimension(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;->handleScreenLoad(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
