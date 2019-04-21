.class Lcom/mcdonalds/app/databinding/InvoiceBinding$2;
.super Ljava/lang/Object;
.source "InvoiceBinding.java"

# interfaces
.implements Landroid/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/databinding/InvoiceBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/databinding/InvoiceBinding;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/databinding/InvoiceBinding;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/databinding/InvoiceBinding;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding$2;->this$0:Lcom/mcdonalds/app/databinding/InvoiceBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 6

    .prologue
    const-string v4, "onChange"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v4, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding$2;->this$0:Lcom/mcdonalds/app/databinding/InvoiceBinding;

    iget-object v4, v4, Lcom/mcdonalds/app/databinding/InvoiceBinding;->invoiceSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 57
    .local v0, "callbackArg_0":Z
    const/4 v3, 0x0

    .line 59
    .local v3, "presenterJavaLangObjectNull":Z
    iget-object v4, p0, Lcom/mcdonalds/app/databinding/InvoiceBinding$2;->this$0:Lcom/mcdonalds/app/databinding/InvoiceBinding;

    invoke-static {v4}, Lcom/mcdonalds/app/databinding/InvoiceBinding;->access$000(Lcom/mcdonalds/app/databinding/InvoiceBinding;)Lcom/mcdonalds/app/util/InvoicePresenter;

    move-result-object v1

    .line 61
    .local v1, "presenter":Lcom/mcdonalds/app/util/InvoicePresenter;
    const/4 v2, 0x0

    .line 65
    .local v2, "presenterInvoiceEnabled":Z
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 66
    :goto_0
    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v1, v0}, Lcom/mcdonalds/app/util/InvoicePresenter;->setInvoiceEnabled(Z)V

    .line 73
    :cond_0
    return-void

    .line 65
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
