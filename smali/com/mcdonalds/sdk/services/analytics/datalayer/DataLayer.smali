.class public Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;
.super Ljava/lang/Object;
.source "DataLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;
    }
.end annotation


# static fields
.field private static final EVENT_STATE_NAME:Ljava/lang/String; = "name"

.field private static final EVENT_STATE_POSITION:Ljava/lang/String; = "position"

.field private static final EVENT_STATE_ROOT:Ljava/lang/String; = "event"

.field private static final EVENT_STATE_TYPE:Ljava/lang/String; = "type"

.field private static final GLOBAL_NAME:Ljava/lang/String; = "Global"

.field private static final PAGE_NAME:Ljava/lang/String; = "page.name"


# instance fields
.field private dataLayerMap:Ljava/util/Map;
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

.field private listener:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;

.field private oldDataLayerMap:Ljava/util/Map;
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

.field private trackedEvents:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
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
    .line 31
    .local p1, "trackedEvents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->trackedEvents:Ljava/util/Map;

    .line 34
    return-void
.end method

.method private dispatchLoggedEventWithDataPoints(Ljava/util/Map;)V
    .locals 7
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
    .line 147
    .local p1, "dataPoints":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "%s->%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    const-string v6, "page.name"

    .line 148
    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    const-string v6, "event.name"

    .line 149
    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 147
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "eventName":Ljava/lang/String;
    invoke-static {p1}, Lcom/mcdonalds/sdk/utils/MapUtils;->flatten(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 153
    .local v1, "flattenedDataPoints":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->listener:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->listener:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/MapUtils;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;->dataLayerLoggedEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 156
    :cond_0
    return-void
.end method

.method private generateLogData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p3, "trackedParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dispatchLoggedEventWithDataPoints(Ljava/util/Map;)V

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 137
    .local v0, "dataPoints":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "param":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    invoke-static {v4, v1}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 139
    .local v2, "paramValue":Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 142
    .end local v1    # "param":Ljava/lang/String;
    .end local v2    # "paramValue":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dispatchLoggedEventWithDataPoints(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private stringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getState(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
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
    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public log()V
    .locals 7

    .prologue
    .line 105
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->trackedEvents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    const-string v6, "page.name"

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    .local v2, "pageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    const-string v6, "event.name"

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .local v0, "eventName":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v2, v0, v5}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->generateLogData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 111
    .end local v0    # "eventName":Ljava/lang/String;
    .end local v2    # "pageName":Ljava/lang/String;
    :cond_1
    const-string v2, "Global"

    .line 112
    .restart local v2    # "pageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    const-string v6, "event.name"

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    .restart local v0    # "eventName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->trackedEvents:Ljava/util/Map;

    invoke-static {v5, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 115
    .local v1, "globalTrackedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 116
    .local v4, "trackedParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 117
    invoke-direct {p0, v2, v0, v4}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->generateLogData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 120
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    const-string v6, "page.name"

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pageName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 121
    .restart local v2    # "pageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->trackedEvents:Ljava/util/Map;

    invoke-static {v5, v2}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 122
    .local v3, "pageTrackedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 123
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "trackedParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v4, Ljava/util/List;

    .line 124
    .restart local v4    # "trackedParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 125
    invoke-direct {p0, v2, v0, v4}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->generateLogData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public recordEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    move-result-object v0

    return-object v0
.end method

.method public recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;
    .locals 7
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "position"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    const-string v6, "event.name"

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 78
    .local v2, "nameEqual":Z
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    const-string v6, "event.type"

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p2, v5}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 79
    .local v4, "typeEqual":Z
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    const-string v6, "event.position"

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->get(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 80
    .local v3, "positionEqual":Z
    iget-object v5, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->oldDataLayerMap:Ljava/util/Map;

    invoke-static {v5, v6}, Lcom/mcdonalds/sdk/utils/MapUtils;->mapEquals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    .line 82
    .local v1, "mapEqual":Z
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 83
    const-string v5, "DLA"

    const-string v6, "Duplicate event ignored"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-object p0

    .line 87
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 88
    .local v0, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "name"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v5, "type"

    invoke-interface {v0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v5, "position"

    invoke-interface {v0, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v5, "event"

    invoke-virtual {p0, v5, v0}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    goto :goto_0
.end method

.method public setListener(Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->listener:Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer$Listener;

    .line 38
    return-void
.end method

.method public setPageName(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "page.name"

    invoke-virtual {p0, v0, p1}, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;

    .line 68
    return-object p0
.end method

.method public setState(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/MapUtils;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->oldDataLayerMap:Ljava/util/Map;

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-static {v0, p2}, Lcom/mcdonalds/sdk/utils/MapUtils;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    .line 62
    :cond_0
    :goto_0
    return-object p0

    .line 59
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/MapUtils;->copy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->oldDataLayerMap:Ljava/util/Map;

    .line 60
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/datalayer/DataLayer;->dataLayerMap:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcom/mcdonalds/sdk/utils/MapUtils;->put(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
