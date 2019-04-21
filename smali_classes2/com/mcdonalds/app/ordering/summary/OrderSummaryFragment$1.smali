.class Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$1;
.super Ljava/lang/Object;
.source "OrderSummaryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$1;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$1;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->access$000(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V

    .line 258
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v1, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "EVENT_NAME"

    const-string v3, "tracking"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 261
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 263
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 264
    return-void
.end method
