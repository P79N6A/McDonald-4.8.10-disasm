.class Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$18;
.super Ljava/lang/Object;
.source "OrderMethodSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;
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
    .line 795
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$18;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    const-string v1, "/checkout/delivery"

    const-string v2, "Start Registration"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$18;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    const-class v2, Lcom/mcdonalds/app/customer/SignUpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 800
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$18;->this$0:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 801
    return-void
.end method
