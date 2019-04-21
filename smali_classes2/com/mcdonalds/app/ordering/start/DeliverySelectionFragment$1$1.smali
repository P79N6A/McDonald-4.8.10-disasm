.class Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1$1;
.super Ljava/lang/Object;
.source "DeliverySelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1$1;->this$1:Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1$1;->this$1:Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment$1;->this$0:Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;->access$100(Lcom/mcdonalds/app/ordering/start/DeliverySelectionFragment;)V

    .line 82
    return-void
.end method
