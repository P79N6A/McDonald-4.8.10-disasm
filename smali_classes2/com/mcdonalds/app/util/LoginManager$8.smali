.class Lcom/mcdonalds/app/util/LoginManager$8;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/LoginManager;->verifySMSCode(Ljava/lang/String;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/LoginManager;

.field final synthetic val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/LoginManager;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/mcdonalds/app/util/LoginManager$8;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    iput-object p2, p0, Lcom/mcdonalds/app/util/LoginManager$8;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 775
    if-nez p3, :cond_1

    .line 776
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$8;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 777
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "shouldGoToPreviousView"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 778
    .local v1, "shouldGoToPrevious":Z
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$8;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v2}, Lcom/mcdonalds/app/util/LoginManager;->access$100(Lcom/mcdonalds/app/util/LoginManager;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->setDefaultPhoneNumberVerified(Z)V

    .line 779
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$8;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v2}, Lcom/mcdonalds/app/util/LoginManager;->access$1400(Lcom/mcdonalds/app/util/LoginManager;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/util/LoginManager$8;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v3}, Lcom/mcdonalds/app/util/LoginManager;->access$100(Lcom/mcdonalds/app/util/LoginManager;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 780
    if-eqz v1, :cond_0

    .line 781
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$8;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 789
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "shouldGoToPrevious":Z
    :goto_0
    return-void

    .line 783
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "shouldGoToPrevious":Z
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/util/LoginManager$8;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v3, p0, Lcom/mcdonalds/app/util/LoginManager$8;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/LoginManager;->access$1500(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    goto :goto_0

    .line 786
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "shouldGoToPrevious":Z
    :cond_1
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

    .line 767
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/util/LoginManager$8;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
