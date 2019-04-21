.class Lcom/mcdonalds/app/account/ChangeMobileFragment$3;
.super Ljava/lang/Object;
.source "ChangeMobileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ChangeMobileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangeMobileFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangeMobileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangeMobileFragment;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeMobileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 223
    .local v1, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeMobileFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ChangeMobileFragment;->access$200(Lcom/mcdonalds/app/account/ChangeMobileFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "mobileNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeMobileFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ChangeMobileFragment;->access$300(Lcom/mcdonalds/app/account/ChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeMobileFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ChangeMobileFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Name"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeMobileFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ChangeMobileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const v3, 0x7f090451

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 232
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeMobileFragment$3;->this$0:Lcom/mcdonalds/app/account/ChangeMobileFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ChangeMobileFragment;->access$300(Lcom/mcdonalds/app/account/ChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/account/ChangeMobileFragment$3$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/account/ChangeMobileFragment$3$1;-><init>(Lcom/mcdonalds/app/account/ChangeMobileFragment$3;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 249
    return-void
.end method
