.class Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog$1;
.super Ljava/lang/Object;
.source "OnDeliveryMethodChangeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog$1;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog$1;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog;->mListener:Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog$OnDeliveryMethodChangeDialogListener;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog$1;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog;

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog$OnDeliveryMethodChangeDialogListener;->onDialogNegativeClick(Landroid/support/v4/app/DialogFragment;)V

    .line 41
    return-void
.end method
