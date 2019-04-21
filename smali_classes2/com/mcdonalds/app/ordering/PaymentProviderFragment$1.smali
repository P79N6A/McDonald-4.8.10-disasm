.class Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;
.super Landroid/webkit/WebChromeClient;
.source "PaymentProviderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastProgress:I

.field final synthetic this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;->lastProgress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "onProgressChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;->lastProgress:I

    if-nez v0, :cond_0

    .line 88
    sput-boolean v4, Lcom/mcdonalds/app/ordering/PaymentProviderActivity;->enableBackButton:Z

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    const v3, 0x7f0907d4

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    :cond_0
    iput p2, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;->lastProgress:I

    .line 92
    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    .line 93
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 94
    iput v4, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$1;->lastProgress:I

    .line 95
    sput-boolean v5, Lcom/mcdonalds/app/ordering/PaymentProviderActivity;->enableBackButton:Z

    .line 97
    :cond_1
    return-void
.end method
