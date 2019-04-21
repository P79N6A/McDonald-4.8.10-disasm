.class public abstract Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;
.super Ljava/lang/Object;
.source "AnalyticsWrapper.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsWrapper;->mContext:Landroid/content/Context;

    .line 11
    return-void
.end method


# virtual methods
.method public abstract initialize()V
.end method

.method public abstract log(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V
.end method
