.class Lcom/mcdonalds/app/databinding/OrderRemarkBinding$1;
.super Ljava/lang/Object;
.source "OrderRemarkBinding.java"

# interfaces
.implements Landroid/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/databinding/OrderRemarkBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/databinding/OrderRemarkBinding;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/databinding/OrderRemarkBinding;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mcdonalds/app/databinding/OrderRemarkBinding$1;->this$0:Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

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

    .line 28
    iget-object v4, p0, Lcom/mcdonalds/app/databinding/OrderRemarkBinding$1;->this$0:Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    iget-object v4, v4, Lcom/mcdonalds/app/databinding/OrderRemarkBinding;->orderRemarkContent:Landroid/widget/EditText;

    invoke-static {v4}, Landroid/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "callbackArg_0":Ljava/lang/String;
    const/4 v2, 0x0

    .line 33
    .local v2, "presenterJavaLangObjectNull":Z
    iget-object v4, p0, Lcom/mcdonalds/app/databinding/OrderRemarkBinding$1;->this$0:Lcom/mcdonalds/app/databinding/OrderRemarkBinding;

    invoke-static {v4}, Lcom/mcdonalds/app/databinding/OrderRemarkBinding;->access$000(Lcom/mcdonalds/app/databinding/OrderRemarkBinding;)Lcom/mcdonalds/app/util/OrderRemarkPresenter;

    move-result-object v1

    .line 35
    .local v1, "presenter":Lcom/mcdonalds/app/util/OrderRemarkPresenter;
    const/4 v3, 0x0

    .line 39
    .local v3, "presenterRemark":Ljava/lang/String;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 40
    :goto_0
    if-eqz v2, :cond_0

    .line 45
    invoke-interface {v1, v0}, Lcom/mcdonalds/app/util/OrderRemarkPresenter;->setRemark(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void

    .line 39
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
