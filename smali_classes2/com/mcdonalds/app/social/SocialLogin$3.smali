.class Lcom/mcdonalds/app/social/SocialLogin$3;
.super Ljava/lang/Object;
.source "SocialLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/social/SocialLogin;->refreshViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/social/SocialLogin;

.field final synthetic val$network:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/social/SocialLogin;Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/social/SocialLogin;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLogin$3;->this$0:Lcom/mcdonalds/app/social/SocialLogin;

    iput-object p2, p0, Lcom/mcdonalds/app/social/SocialLogin$3;->val$network:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

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

    .line 176
    iget-object v2, p0, Lcom/mcdonalds/app/social/SocialLogin$3;->this$0:Lcom/mcdonalds/app/social/SocialLogin;

    iget-object v3, p0, Lcom/mcdonalds/app/social/SocialLogin$3;->val$network:Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    invoke-static {v2, v3}, Lcom/mcdonalds/app/social/SocialLogin;->access$300(Lcom/mcdonalds/app/social/SocialLogin;Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V

    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v1, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "EVENT_NAME"

    const-string v3, "loginweixin"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 181
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 183
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 184
    return-void
.end method
