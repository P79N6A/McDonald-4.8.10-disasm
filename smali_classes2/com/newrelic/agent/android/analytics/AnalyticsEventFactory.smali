.class Lcom/newrelic/agent/android/analytics/AnalyticsEventFactory;
.super Ljava/lang/Object;
.source "AnalyticsEventFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static createEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "eventCategory"    # Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
    .param p2, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;)",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;"
        }
    .end annotation

    .prologue
    .line 8
    .local p3, "eventAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    const/4 v0, 0x0

    .line 9
    .local v0, "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsEventFactory$1;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsEventCategory:[I

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 33
    :goto_0
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Lcom/newrelic/agent/android/analytics/SessionEvent;

    .end local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    invoke-direct {v0, p3}, Lcom/newrelic/agent/android/analytics/SessionEvent;-><init>(Ljava/util/Set;)V

    .line 12
    .restart local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    goto :goto_0

    .line 14
    :pswitch_1
    new-instance v0, Lcom/newrelic/agent/android/analytics/NetworkRequestErrorEvent;

    .end local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    invoke-direct {v0, p3}, Lcom/newrelic/agent/android/analytics/NetworkRequestErrorEvent;-><init>(Ljava/util/Set;)V

    .line 15
    .restart local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    goto :goto_0

    .line 17
    :pswitch_2
    new-instance v0, Lcom/newrelic/agent/android/analytics/InteractionEvent;

    .end local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    invoke-direct {v0, p0, p3}, Lcom/newrelic/agent/android/analytics/InteractionEvent;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 18
    .restart local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    goto :goto_0

    .line 20
    :pswitch_3
    new-instance v0, Lcom/newrelic/agent/android/analytics/CrashEvent;

    .end local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    invoke-direct {v0, p0, p3}, Lcom/newrelic/agent/android/analytics/CrashEvent;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 21
    .restart local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    goto :goto_0

    .line 23
    :pswitch_4
    new-instance v0, Lcom/newrelic/agent/android/analytics/CustomEvent;

    .end local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    invoke-direct {v0, p0, p2, p3}, Lcom/newrelic/agent/android/analytics/CustomEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 24
    .restart local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    goto :goto_0

    .line 26
    :pswitch_5
    new-instance v0, Lcom/newrelic/agent/android/analytics/BreadcrumbEvent;

    .end local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    invoke-direct {v0, p0, p3}, Lcom/newrelic/agent/android/analytics/BreadcrumbEvent;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 27
    .restart local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    goto :goto_0

    .line 29
    :pswitch_6
    new-instance v0, Lcom/newrelic/agent/android/analytics/NetworkRequestEvent;

    .end local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    invoke-direct {v0, p3}, Lcom/newrelic/agent/android/analytics/NetworkRequestEvent;-><init>(Ljava/util/Set;)V

    .restart local v0    # "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    goto :goto_0

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
