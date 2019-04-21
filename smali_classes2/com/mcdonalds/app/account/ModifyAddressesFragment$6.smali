.class Lcom/mcdonalds/app/account/ModifyAddressesFragment$6;
.super Ljava/lang/Object;
.source "ModifyAddressesFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ModifyAddressesFragment;->save()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

.field final synthetic val$retSelectedAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$6;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$6;->val$retSelectedAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 355
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$6;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 356
    if-eqz p3, :cond_1

    .line 357
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ADDRESS_RETURN_KEY"

    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$6;->val$retSelectedAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 362
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 365
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$6;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 366
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$6;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

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

    .line 351
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$6;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
