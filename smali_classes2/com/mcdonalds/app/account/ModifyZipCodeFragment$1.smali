.class Lcom/mcdonalds/app/account/ModifyZipCodeFragment$1;
.super Ljava/lang/Object;
.source "ModifyZipCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ModifyZipCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$1;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v3, "onClick"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$1;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->access$000(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$1;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Zip Code"

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 104
    .local v0, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 106
    .local v1, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v1, :cond_0

    .line 108
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$1;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->access$100(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "zipCode":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setZipCode(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$1;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0901ef

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 112
    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyZipCodeFragment$1;->this$0:Lcom/mcdonalds/app/account/ModifyZipCodeFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->access$200(Lcom/mcdonalds/app/account/ModifyZipCodeFragment;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 115
    .end local v0    # "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v1    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .end local v2    # "zipCode":Ljava/lang/String;
    :cond_0
    return-void
.end method
