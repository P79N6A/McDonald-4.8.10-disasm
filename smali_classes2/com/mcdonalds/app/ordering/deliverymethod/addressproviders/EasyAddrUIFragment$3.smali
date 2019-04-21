.class Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$3;
.super Ljava/lang/Object;
.source "EasyAddrUIFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->showInitAlertBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$3;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$3;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 239
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment$3;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/addressproviders/EasyAddrUIFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 240
    return-void
.end method
