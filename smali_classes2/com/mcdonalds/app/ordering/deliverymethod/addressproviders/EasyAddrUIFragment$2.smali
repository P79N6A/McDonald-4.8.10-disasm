.class Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$2;
.super Ljava/lang/Object;
.source "EasyAddrUIFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$2;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
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

    .line 201
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$2;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    if-nez p3, :cond_1

    .line 203
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$2;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->access$300(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$2;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->access$000(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$2;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->access$100(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$2;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->access$200(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->removeAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
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

    .line 198
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$2;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
