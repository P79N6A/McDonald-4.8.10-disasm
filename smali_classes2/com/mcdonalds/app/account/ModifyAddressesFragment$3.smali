.class Lcom/mcdonalds/app/account/ModifyAddressesFragment$3;
.super Ljava/lang/Object;
.source "ModifyAddressesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 216
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$3;->val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iput p3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$100(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Lcom/mcdonalds/app/account/AddressesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$3;->val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iget v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$3;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/account/AddressesAdapter;->restoreAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V

    .line 220
    return-void
.end method
