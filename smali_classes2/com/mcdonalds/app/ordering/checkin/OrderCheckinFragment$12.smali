.class Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$12;
.super Ljava/lang/Object;
.source "OrderCheckinFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->displayOrderNotReadyDialog()V
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
    .line 1166
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$12;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment$12;->this$0:Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;

    const-class v1, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    const-string v2, "basket"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/ordering/checkin/OrderCheckinFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1170
    return-void
.end method
