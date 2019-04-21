.class Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;
.super Landroid/webkit/WebChromeClient;
.source "MPGSPaymentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastProgress:I

.field final synthetic this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;->lastProgress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onProgressChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;->lastProgress:I

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    const v2, 0x7f0907d4

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    :cond_0
    iput p2, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;->lastProgress:I

    .line 98
    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    .line 99
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 100
    iput v4, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;->lastProgress:I

    .line 102
    :cond_1
    return-void
.end method
