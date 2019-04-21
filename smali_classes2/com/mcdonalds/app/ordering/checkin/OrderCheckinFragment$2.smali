.class Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$2;
.super Ljava/lang/Object;
.source "OrderCheckinFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$2;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

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

    .line 385
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$2;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$2;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->access$000(Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;Landroid/view/View;)V

    .line 386
    return-void
.end method
