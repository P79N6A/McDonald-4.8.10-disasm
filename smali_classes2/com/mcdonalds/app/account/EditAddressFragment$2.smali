.class Lcom/mcdonalds/app/account/EditAddressFragment$2;
.super Ljava/lang/Object;
.source "EditAddressFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/EditAddressFragment;->onClick(Landroid/view/View;)V
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
        "Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/EditAddressFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/EditAddressFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/EditAddressFragment;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    if-nez p3, :cond_3

    .line 198
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;->isAddressValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Invalid address"

    invoke-static {v0, v5, v1, v5}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 201
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Invalid address"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$000(Lcom/mcdonalds/app/account/EditAddressFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$200(Lcom/mcdonalds/app/account/EditAddressFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    new-array v1, v4, [Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iget-object v2, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$100(Lcom/mcdonalds/app/account/EditAddressFragment;)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$200(Lcom/mcdonalds/app/account/EditAddressFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/account/EditAddressFragment$2$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/account/EditAddressFragment$2$1;-><init>(Lcom/mcdonalds/app/account/EditAddressFragment$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateAddressBook(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$200(Lcom/mcdonalds/app/account/EditAddressFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$100(Lcom/mcdonalds/app/account/EditAddressFragment;)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$200(Lcom/mcdonalds/app/account/EditAddressFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/account/EditAddressFragment$2$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/account/EditAddressFragment$2$2;-><init>(Lcom/mcdonalds/app/account/EditAddressFragment$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 234
    :cond_3
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

    .line 193
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/EditAddressFragment$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
