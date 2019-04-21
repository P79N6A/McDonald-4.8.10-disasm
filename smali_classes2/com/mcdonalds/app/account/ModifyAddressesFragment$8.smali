.class Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;
.super Ljava/lang/Object;
.source "ModifyAddressesFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ModifyAddressesFragment;->refreshAddresses()V
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
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 412
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerAddress;>;"
    const/4 v6, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    if-nez p3, :cond_9

    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, "selectedAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$500(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$500(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 419
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 420
    .local v0, "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$500(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    move-object v1, v0

    .line 442
    .end local v0    # "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.address.showPromptWhenNoAddress"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 445
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$700(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 446
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->isActivityAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    const v4, 0x7f090581

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    const v5, 0x7f090580

    .line 448
    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$800(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    .line 447
    invoke-static {v2, v3, v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 450
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v2, v6}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$702(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Z)Z

    .line 452
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v3, "No address"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 455
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$100(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Lcom/mcdonalds/app/account/AddressesAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mcdonalds/app/account/AddressesAdapter;->setAddresses(Ljava/util/List;)V

    .line 456
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$100(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Lcom/mcdonalds/app/account/AddressesAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/account/AddressesAdapter;->setSelectedAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 457
    if-eqz v1, :cond_4

    .line 458
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$602(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/AddressType;)Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 460
    :cond_4
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$900(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)V

    .line 462
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v2, p1}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$1002(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Ljava/util/List;)Ljava/util/List;

    .line 466
    .end local v1    # "selectedAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :goto_1
    return-void

    .line 426
    .restart local v1    # "selectedAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$600(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v2

    if-nez v2, :cond_7

    .line 427
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 428
    .restart local v0    # "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 429
    move-object v1, v0

    .line 430
    goto/16 :goto_0

    .line 434
    .end local v0    # "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 435
    .restart local v0    # "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$8;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$600(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v4

    if-ne v3, v4, :cond_8

    .line 436
    move-object v1, v0

    .line 437
    goto/16 :goto_0

    .line 464
    .end local v0    # "address":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .end local v1    # "selectedAddress":Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    :cond_9
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
.end method
