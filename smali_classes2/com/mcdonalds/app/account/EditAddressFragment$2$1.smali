.class Lcom/mcdonalds/app/account/EditAddressFragment$2$1;
.super Ljava/lang/Object;
.source "EditAddressFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/EditAddressFragment$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/AddressValidationResult;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
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
.field final synthetic this$1:Lcom/mcdonalds/app/account/EditAddressFragment$2;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/EditAddressFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/account/EditAddressFragment$2;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2$1;->this$1:Lcom/mcdonalds/app/account/EditAddressFragment$2;

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

    .line 207
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2$1;->this$1:Lcom/mcdonalds/app/account/EditAddressFragment$2;

    iget-object v0, v0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    if-nez p3, :cond_1

    .line 209
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2$1;->this$1:Lcom/mcdonalds/app/account/EditAddressFragment$2;

    iget-object v0, v0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$2$1;->this$1:Lcom/mcdonalds/app/account/EditAddressFragment$2;

    iget-object v0, v0, Lcom/mcdonalds/app/account/EditAddressFragment$2;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
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

    .line 204
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/EditAddressFragment$2$1;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
