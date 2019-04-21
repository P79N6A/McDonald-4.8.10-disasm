.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$31;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onAlertClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 1707
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$31;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v3, "run"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1710
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$31;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 1711
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    if-eqz v0, :cond_1

    .line 1712
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 1713
    .local v1, "mCustomerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    .line 1714
    .local v2, "mProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v2, :cond_1

    .line 1715
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1716
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$31;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v4, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    sget-object v5, Lcom/mcdonalds/app/account/ChangeMobileFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1722
    .end local v1    # "mCustomerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v2    # "mProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_1
    :goto_0
    return-void

    .line 1718
    .restart local v1    # "mCustomerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .restart local v2    # "mProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$31;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v4, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    sget-object v5, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
