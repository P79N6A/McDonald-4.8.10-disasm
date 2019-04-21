.class final Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;
.super Ljava/lang/Object;
.source "TagManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingEvent"
.end annotation


# instance fields
.field private args:Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

.field private type:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
    .locals 0
    .param p1, "type"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .param p2, "args"    # Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;->type:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    .line 342
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;->args:Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    .line 343
    return-void
.end method


# virtual methods
.method public getArgs()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;->args:Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    return-object v0
.end method

.method public getType()Lcom/mcdonalds/sdk/services/analytics/AnalyticType;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/tagmanager/TagManagerWrapper$PendingEvent;->type:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    return-object v0
.end method
