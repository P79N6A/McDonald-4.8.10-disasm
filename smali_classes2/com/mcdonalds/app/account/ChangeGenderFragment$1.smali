.class Lcom/mcdonalds/app/account/ChangeGenderFragment$1;
.super Ljava/lang/Object;
.source "ChangeGenderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ChangeGenderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangeGenderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangeGenderFragment;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

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

    .line 123
    const-string v4, "customer"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 124
    .local v0, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    .line 125
    .local v3, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "oldGender":Ljava/lang/String;
    new-instance v1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 130
    .local v1, "newCustomerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->access$000(Lcom/mcdonalds/app/account/ChangeGenderFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Gender"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->access$000(Lcom/mcdonalds/app/account/ChangeGenderFragment;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v5, v4}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->access$002(Lcom/mcdonalds/app/account/ChangeGenderFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->access$000(Lcom/mcdonalds/app/account/ChangeGenderFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setGender(Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Save"

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeGenderFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeGenderFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/account/ChangeGenderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f09048d

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 135
    new-instance v4, Lcom/mcdonalds/app/account/ChangeGenderFragment$1$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/account/ChangeGenderFragment$1$1;-><init>(Lcom/mcdonalds/app/account/ChangeGenderFragment$1;)V

    invoke-virtual {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 152
    return-void

    .line 130
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method
