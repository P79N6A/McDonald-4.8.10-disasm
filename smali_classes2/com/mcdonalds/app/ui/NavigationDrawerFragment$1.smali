.class Lcom/mcdonalds/app/ui/NavigationDrawerFragment$1;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "NavigationDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getActionBarDrawerToggle()Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/NavigationDrawerFragment;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 6
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/NavigationDrawerFragment;
    .param p2, "arg0"    # Landroid/app/Activity;
    .param p3, "arg1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment$1;->this$0:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const-string v0, "onDrawerClosed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment$1;->this$0:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment$1;->this$0:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 6
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const-string v1, "onDrawerOpened"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v0, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "EVENT_NAME"

    const-string v2, "manual"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->ScreenLoad:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment$1;->this$0:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    .line 124
    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0908a7

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 125
    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v2

    .line 122
    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 128
    iget-object v1, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment$1;->this$0:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment$1;->this$0:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->isUserLearnedDrawer()Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment$1;->this$0:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    invoke-virtual {v1, v5}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->setUserLearnedDrawer(Z)V

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ui/NavigationDrawerFragment$1;->this$0:Lcom/mcdonalds/app/ui/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/NavigationDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onDrawerStateChanged(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const-string v0, "onDrawerStateChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerStateChanged(I)V

    .line 155
    return-void
.end method
