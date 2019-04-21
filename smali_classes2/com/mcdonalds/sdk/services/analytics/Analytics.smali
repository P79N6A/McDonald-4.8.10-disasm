.class public Lcom/mcdonalds/sdk/services/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field public static final ANALYTICS_CONFIGS_PATH:Ljava/lang/String; = "analytics"

.field public static final LOG_TAG:Ljava/lang/String; = "Analytics"

.field private static mSharedInstance:Lcom/mcdonalds/sdk/services/analytics/Analytics;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInitialized:Z

.field private mWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->initialize(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/analytics/Analytics;

    .line 45
    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mSharedInstance:Lcom/mcdonalds/sdk/services/analytics/Analytics;

    .line 68
    return-void
.end method

.method public static getSharedInstance()Lcom/mcdonalds/sdk/services/analytics/Analytics;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mSharedInstance:Lcom/mcdonalds/sdk/services/analytics/Analytics;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Lcom/mcdonalds/sdk/services/analytics/Analytics;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mSharedInstance:Lcom/mcdonalds/sdk/services/analytics/Analytics;

    .line 59
    :cond_0
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mSharedInstance:Lcom/mcdonalds/sdk/services/analytics/Analytics;

    :goto_0
    return-object v0

    .line 53
    :cond_1
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mSharedInstance:Lcom/mcdonalds/sdk/services/analytics/Analytics;

    iget-boolean v0, v0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTimestamp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 180
    .local v0, "sdf":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getWrapper(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
    .locals 7
    .param p1, "implementation"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 185
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 208
    const-string v3, "Analytics"

    const-string v6, "No Valid AnalyticsWrapper found for type: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_1
    :goto_1
    return-object v2

    .line 185
    :sswitch_0
    const-string v6, "Google"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string v6, "TagManager"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_2
    const-string v6, "EnhancedKochava"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v6, "Kochava"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "Jice"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "ConversionMaster"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    .line 188
    :pswitch_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "analytics.Google.disableClassicTagging"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 189
    .local v0, "disable":Z
    if-nez v0, :cond_1

    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/google/GoogleAnalyticsWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 192
    .end local v0    # "disable":Z
    :pswitch_1
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 195
    :pswitch_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "analytics.EnhancedKochava.enabled"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 196
    .local v1, "enabled":Z
    if-eqz v1, :cond_1

    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/enhancedKochava/EnhancedKochavaAnalyticsWrapper;

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/enhancedKochava/EnhancedKochavaAnalyticsWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 199
    .end local v1    # "enabled":Z
    :pswitch_3
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/kochava/KochavaAnalyticsWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 202
    :pswitch_4
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/jice/JiceWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 205
    :pswitch_5
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/ConversionMasterWrapper;

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/ConversionMasterWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        -0x495e1d2d -> :sswitch_1
        -0x22e36b13 -> :sswitch_2
        0x233a01 -> :sswitch_4
        0x2f80f738 -> :sswitch_5
        0x42812143 -> :sswitch_3
        0x7f784a59 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private initWrappers()V
    .locals 5

    .prologue
    .line 89
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "analytics"

    .line 90
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 92
    .local v0, "analyticsWrappers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "implementation":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->getWrapper(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;

    move-result-object v2

    .line 98
    .local v2, "wrapper":Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;->initialize()V

    .line 100
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mWrappers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v1    # "implementation":Ljava/lang/String;
    .end local v2    # "wrapper":Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
    :cond_1
    return-void
.end method

.method public static setSharedInstance(Lcom/mcdonalds/sdk/services/analytics/Analytics;)V
    .locals 0
    .param p0, "analytics"    # Lcom/mcdonalds/sdk/services/analytics/Analytics;

    .prologue
    .line 63
    sput-object p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mSharedInstance:Lcom/mcdonalds/sdk/services/analytics/Analytics;

    .line 64
    return-void
.end method

.method public static track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 1
    .param p0, "type"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 113
    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->getSharedInstance()Lcom/mcdonalds/sdk/services/analytics/Analytics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->getSharedInstance()Lcom/mcdonalds/sdk/services/analytics/Analytics;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackInternal(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 116
    :cond_0
    return-void
.end method

.method public static trackCustom(ILjava/lang/String;)V
    .locals 3
    .param p0, "key"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 124
    .local v1, "customDimensions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 128
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCustom(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 131
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Custom:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 132
    return-void
.end method

.method private trackInternal(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 5
    .param p1, "type"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .param p2, "data"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 169
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;

    .line 171
    .local v1, "wrapper":Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;->log(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Analytics"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "wrapper":Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
    :cond_0
    return-void
.end method

.method public static trackTransaction(Lcom/mcdonalds/sdk/modules/models/OrderResponse;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 8
    .param p0, "response"    # Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .param p1, "order"    # Lcom/mcdonalds/sdk/modules/models/Order;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    new-instance v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->setTransactionId(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;

    move-result-object v3

    .line 141
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getOrderView()Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/OrderView;->getStoreID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->setTransactionAffiliation(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;

    move-result-object v3

    .line 142
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalValue()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->setTransactionRevenue(Ljava/lang/Double;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;

    move-result-object v3

    .line 143
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getTotalTax()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->setTransactionTax(Ljava/lang/Double;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 144
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->setTransactionShipping(Ljava/lang/Double;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;

    move-result-object v3

    const-string v4, ""

    .line 145
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->setTransactionCurrencyCode(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$TransactionMapBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 148
    .local v2, "transactionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "productList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 150
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;-><init>()V

    .line 151
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->getDisplayOrderNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->setTransactionId(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;

    move-result-object v4

    .line 152
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->setTransactionItemName(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;

    move-result-object v4

    .line 153
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Product;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->setTransactionSKU(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;

    move-result-object v4

    const-string v5, "In app ordering"

    .line 154
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->setTransactionCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;

    move-result-object v4

    .line 155
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProduct()Lcom/mcdonalds/sdk/modules/models/Product;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Order;->getPriceType()Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/modules/models/Product;->getPrice(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->setTransactionPrice(Ljava/lang/Double;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;

    move-result-object v4

    .line 156
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getQuantity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->setTransactionQuantity(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;

    move-result-object v4

    const-string v5, ""

    .line 157
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->setTransactionCurrency(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ProductMapBuilder;->build()Ljava/util/Map;

    move-result-object v4

    .line 150
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_2
    sget-object v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Transaction:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v4, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 163
    invoke-virtual {v4, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setTransactionMap(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 164
    invoke-virtual {v4, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setProductList(Ljava/util/List;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v4

    .line 161
    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/analytics/Analytics;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mContext:Landroid/content/Context;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mIsInitialized:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/Analytics;->mWrappers:Ljava/util/List;

    .line 82
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->initWrappers()V

    .line 84
    return-object p0
.end method
