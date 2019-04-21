.class Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$4;
.super Ljava/lang/Object;
.source "OrderSummaryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$4;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$4;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "kodo.app.mcdhk"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 342
    .local v0, "intentForPackage":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 343
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$4;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->startActivity(Landroid/content/Intent;)V

    .line 352
    :goto_0
    return-void

    .line 345
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=kodo.app.mcdhk"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 346
    .local v1, "viewIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 347
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$4;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment$4;->this$0:Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/summary/OrderSummaryFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090583

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
