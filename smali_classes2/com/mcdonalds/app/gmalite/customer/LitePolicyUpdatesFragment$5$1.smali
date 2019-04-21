.class Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5$1;
.super Ljava/lang/Object;
.source "LitePolicyUpdatesFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;

.field final synthetic val$oldPrivacyPolicyVersion:Ljava/lang/String;

.field final synthetic val$oldTermsAndConditionVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;

    iput-object p2, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5$1;->val$oldTermsAndConditionVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5$1;->val$oldPrivacyPolicyVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 191
    if-nez p3, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    const-class v1, Lcom/mcdonalds/app/MainActivity;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->startActivity(Ljava/lang/Class;)V

    .line 193
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5$1;->val$oldTermsAndConditionVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setmTermsAndConditionVersion(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5$1;->val$oldPrivacyPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setmPrivacyPolicyVersion(Ljava/lang/String;)V

    .line 197
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/gmalite/customer/LitePolicyUpdatesFragment$5$1;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
