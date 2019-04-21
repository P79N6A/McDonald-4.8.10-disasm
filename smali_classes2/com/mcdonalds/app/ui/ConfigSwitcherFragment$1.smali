.class Lcom/mcdonalds/app/ui/ConfigSwitcherFragment$1;
.super Ljava/lang/Object;
.source "ConfigSwitcherFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;

.field final synthetic val$configKeys:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment$1;->this$0:Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment$1;->val$configKeys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v5, "onItemClick"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v8, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const-string v5, "customer"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 60
    .local v1, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->clearCurrentStore()V

    .line 61
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 62
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLogin(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedSocialNetworkId(I)V

    .line 65
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setTutorialLastShownVersionName(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/mcdonalds/app/home/dashboard/DashboardViewModel;->destroy()V

    .line 68
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->destroy()V

    .line 70
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->getInstance()Lcom/mcdonalds/sdk/services/location/LocationServicesManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->disableUpdates()V

    .line 71
    invoke-static {}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->destroy()V

    .line 73
    iget-object v5, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment$1;->val$configKeys:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    invoke-static {}, Lcom/mcdonalds/app/AutoLoadedConfigurations;->getSharedInstance()Lcom/mcdonalds/app/AutoLoadedConfigurations;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mcdonalds/app/AutoLoadedConfigurations;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->loadConfigurationWithJsonString(Ljava/lang/String;)V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 77
    .local v0, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v6, 0x2e

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v7, "longDescription"

    invoke-virtual {v5, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    iget-object v5, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment$1;->this$0:Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Configuration Changed"

    invoke-static {v5, v6, v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 79
    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->destroy()V

    .line 82
    iget-object v5, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment$1;->this$0:Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "config"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 83
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 84
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "PREF_CONFIG_KEY"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    const-string v5, "Couldn\'t save prefs"

    invoke-static {v5}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method
