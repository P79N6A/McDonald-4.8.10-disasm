.class Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$12;
.super Ljava/lang/Object;
.source "OrderMethodSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->showAlertBox(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

.field final synthetic val$showPickup:Z


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$12;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    iput-boolean p2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$12;->val$showPickup:Z

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

    .line 312
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$12;->val$showPickup:Z

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$12;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$500(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f110198

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$12;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->access$500(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f110199

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method
