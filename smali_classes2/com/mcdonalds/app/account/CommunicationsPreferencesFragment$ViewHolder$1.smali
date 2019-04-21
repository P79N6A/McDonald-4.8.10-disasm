.class Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;
.super Ljava/lang/Object;
.source "CommunicationsPreferencesFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;->this$1:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x1

    const-string v0, "onCheckedChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;->this$1:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    invoke-static {v0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->access$300(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;)Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;->this$1:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    invoke-static {v0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->access$300(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;)Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    move-result-object v0

    iput-boolean p2, v0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;->state:Z

    .line 323
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;->this$1:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    iget-object v0, v0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->access$400(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;)Ljava/util/TreeMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;->this$1:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    invoke-static {v1}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->access$300(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;)Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;->this$1:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    invoke-static {v2}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->access$300(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;)Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;->this$1:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    iget-object v0, v0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->access$002(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Z)Z

    .line 328
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    iget-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;->this$1:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    iget-object v2, v2, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    .line 330
    invoke-virtual {v2}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    const-string v2, "On click"

    .line 331
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder$1;->this$1:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    .line 332
    invoke-static {v2}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->access$300(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;)Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;->analytics:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const/16 v3, 0x23

    if-eqz p2, :cond_1

    const-string v0, "Opt-In"

    .line 333
    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->addCustom(ILjava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 328
    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 337
    :cond_0
    return-void

    .line 332
    :cond_1
    const-string v0, "Opt-Out"

    goto :goto_0
.end method
