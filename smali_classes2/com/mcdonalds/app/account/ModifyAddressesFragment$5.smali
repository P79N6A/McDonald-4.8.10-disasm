.class Lcom/mcdonalds/app/account/ModifyAddressesFragment$5;
.super Ljava/lang/Object;
.source "ModifyAddressesFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ModifyAddressesFragment;->removeAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V
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

.field final synthetic val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ModifyAddressesFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$5;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$5;->val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iput p3, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

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

    .line 285
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$5;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    if-eqz p3, :cond_0

    .line 287
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$5;->this$0:Lcom/mcdonalds/app/account/ModifyAddressesFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->access$100(Lcom/mcdonalds/app/account/ModifyAddressesFragment;)Lcom/mcdonalds/app/account/AddressesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$5;->val$address:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iget v2, p0, Lcom/mcdonalds/app/account/ModifyAddressesFragment$5;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/account/AddressesAdapter;->restoreAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;I)V

    .line 288
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 291
    :cond_0
    return-void
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

    .line 282
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ModifyAddressesFragment$5;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
