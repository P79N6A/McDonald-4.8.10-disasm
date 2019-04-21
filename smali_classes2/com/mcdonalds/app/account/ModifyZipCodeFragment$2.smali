.class Lcom/mcdonalds/app/account/ModifyZipCodeFragment$2;
.super Ljava/lang/Object;
.source "ModifyZipCodeFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ModifyZipCodeFragment;
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
.field final synthetic this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 124
    if-eqz p3, :cond_0

    .line 126
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 141
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    const v2, 0x7f090204

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    const v3, 0x7f090a70

    .line 131
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->access$300(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 130
    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 133
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->access$400(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    if-eqz p1, :cond_1

    .line 136
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 139
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Signed-in"

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getCurrentMenuType()Lcom/mcdonalds/sdk/modules/models/MenuType;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setUser(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/MenuType;)V

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

    .line 119
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$2;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
