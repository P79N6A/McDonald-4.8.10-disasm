.class Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$6;
.super Ljava/lang/Object;
.source "CheckoutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->showFatalError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$6;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

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

    .line 733
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 734
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity$6;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutActivity;->finish()V

    .line 735
    return-void
.end method
