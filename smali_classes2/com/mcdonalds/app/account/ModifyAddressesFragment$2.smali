.class Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;
.super Landroid/support/design/widget/Snackbar$Callback;
.source "ModifyAddressesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ModifyAddressesFragment;->showUndoMessage(ILcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

.field final synthetic val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iput p3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->val$position:I

    invoke-direct {p0}, Landroid/support/design/widget/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/support/design/widget/Snackbar;I)V
    .locals 4
    .param p1, "snackbar"    # Landroid/support/design/widget/Snackbar;
    .param p2, "event"    # I

    .prologue
    const-string v0, "onDismissed"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$100(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Lcom/mcdonalds/app/account/AddressesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/account/AddressesAdapter;->hasAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iget v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$200(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iget v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$300(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V

    goto :goto_0
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const-string v0, "onDismissed"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    check-cast p1, Landroid/support/design/widget/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$2;->onDismissed(Landroid/support/design/widget/Snackbar;I)V

    return-void
.end method
