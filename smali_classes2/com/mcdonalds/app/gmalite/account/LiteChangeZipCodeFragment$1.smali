.class Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$1;
.super Ljava/lang/Object;
.source "LiteChangeZipCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v5, "onClick"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->access$000(Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Save"

    invoke-static {v5, v6}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v5, "customer"

    invoke-static {v5}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 103
    .local v0, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    .line 104
    .local v3, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    new-instance v1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 105
    .local v1, "newProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "oldZipCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "zipCode":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setZipCode(Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f090a14

    invoke-static {v5, v6}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 113
    new-instance v5, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$1$1;

    invoke-direct {v5, p0, v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$1$1;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeZipCodeFragment$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 132
    .end local v0    # "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v1    # "newProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .end local v2    # "oldZipCode":Ljava/lang/String;
    .end local v3    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .end local v4    # "zipCode":Ljava/lang/String;
    :cond_0
    return-void
.end method
