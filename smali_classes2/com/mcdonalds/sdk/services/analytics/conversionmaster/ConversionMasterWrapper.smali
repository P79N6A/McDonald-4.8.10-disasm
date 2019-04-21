.class public Lcom/mcdonalds/sdk/services/analytics/conversionmaster/ConversionMasterWrapper;
.super Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
.source "ConversionMasterWrapper.java"


# static fields
.field public static final CONFIG_KEY:Ljava/lang/String; = "ConversionMaster"

.field private static final TAG:Ljava/lang/String; = "ConversionMasterWrapper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private handleEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 2
    .param p1, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 43
    const-string v1, "CONVERSION_MASTER"

    invoke-virtual {p1, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 45
    check-cast v0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;

    .end local v0    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/ConversionMasterWrapper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;->doAction(Landroid/content/Context;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public declared-synchronized log(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 2
    .param p1, "event"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .param p2, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/ConversionMasterWrapper$1;->$SwitchMap$com$mcdonalds$sdk$services$analytics$AnalyticType:[I

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 40
    :goto_0
    monitor-exit p0

    return-void

    .line 35
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/ConversionMasterWrapper;->handleEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
