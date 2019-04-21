.class Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;
.super Ljava/lang/Object;
.source "LitePolicyUpdatesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v4, "onClick"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    const-string v0, "yyyy-MM-dd HH:mm:ss Z"

    .line 177
    .local v0, "format":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/mcdonalds/app/util/UIUtils;->getCurrentTimestampUsingFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "timestamp":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmTermsAndConditionVersion()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "oldTermsAndConditionVersion":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmTermsAndConditionVersion()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "oldPrivacyPolicyVersion":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setmTermsAndConditionVersion(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setmPrivacyPolicyVersion(Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Continue"

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f090495

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 187
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->access$300(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v4

    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    new-instance v6, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5$1;

    invoke-direct {v6, p0, v2, v1}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5$1;-><init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 201
    return-void
.end method
