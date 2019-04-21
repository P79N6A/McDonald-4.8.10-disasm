.class Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$4;
.super Ljava/lang/Object;
.source "EasyAddrUIFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;
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
    .line 318
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$4;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

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
    const/4 v3, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$4;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->access$400(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$4;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->access$500(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 323
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$4;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    if-nez p3, :cond_1

    .line 325
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$4;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 326
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$4;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
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

    .line 318
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$4;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
