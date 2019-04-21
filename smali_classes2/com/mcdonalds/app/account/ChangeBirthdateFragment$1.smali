.class Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;
.super Ljava/lang/Object;
.source "ChangeBirthdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ChangeBirthdateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangeBirthdateFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const-string v3, "onClick"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 107
    .local v0, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    .line 109
    .local v2, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v1

    .line 110
    .local v1, "oldBirthdate":Ljava/util/Calendar;
    invoke-static {}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->access$000()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setBirthDate(Ljava/util/Calendar;)V

    .line 111
    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setShouldChangeBirthdate(Z)V

    .line 113
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Save"

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;->this$0:Lcom/mcdonalds/app/account/ChangeBirthdateFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f09048a

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 116
    new-instance v3, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1$1;-><init>(Lcom/mcdonalds/app/account/ChangeBirthdateFragment$1;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/Calendar;)V

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 133
    return-void
.end method
