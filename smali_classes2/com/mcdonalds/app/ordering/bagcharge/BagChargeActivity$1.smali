.class Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$1;
.super Ljava/lang/Object;
.source "BagChargeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;

.field final synthetic val$presenter:Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$1;->this$0:Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$1;->val$presenter:Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;

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

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/bagcharge/BagChargeActivity$1;->val$presenter:Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/bagcharge/BagChargePresenter;->increaseQuantity()V

    .line 38
    return-void
.end method
