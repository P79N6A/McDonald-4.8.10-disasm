.class Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$19;
.super Ljava/lang/Object;
.source "OrderCheckinFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->promptUserForCVV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$19;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

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

    .line 1639
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1640
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$19;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 1641
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$19;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const-class v1, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentActivity;

    const-string v2, "prepare_payment"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1642
    return-void
.end method