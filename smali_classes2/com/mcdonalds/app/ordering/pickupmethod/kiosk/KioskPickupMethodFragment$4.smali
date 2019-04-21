.class Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$4;
.super Ljava/lang/Object;
.source "KioskPickupMethodFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->promptUserForCVV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$4;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

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

    .line 214
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 215
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment$4;->this$0:Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskPickupMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 216
    return-void
.end method
