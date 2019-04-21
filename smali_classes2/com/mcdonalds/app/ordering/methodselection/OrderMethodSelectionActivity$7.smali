.class Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$7;
.super Ljava/lang/Object;
.source "OrderMethodSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$7;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$7;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setAsapDelivery(Z)V

    .line 190
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$7;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$300(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    .line 191
    return-void
.end method
