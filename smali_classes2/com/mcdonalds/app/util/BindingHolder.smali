.class public Lcom/mcdonalds/app/util/BindingHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BindingHolder.java"


# instance fields
.field private mBinding:Landroid/databinding/ViewDataBinding;


# direct methods
.method public constructor <init>(Landroid/databinding/ViewDataBinding;)V
    .locals 1
    .param p1, "binding"    # Landroid/databinding/ViewDataBinding;

    .prologue
    .line 15
    invoke-virtual {p1}, Landroid/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    iput-object p1, p0, Lcom/mcdonalds/app/util/BindingHolder;->mBinding:Landroid/databinding/ViewDataBinding;

    .line 17
    return-void
.end method


# virtual methods
.method public getBinding()Landroid/databinding/ViewDataBinding;
    .locals 2

    .prologue
    const-string v0, "getBinding"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/mcdonalds/app/util/BindingHolder;->mBinding:Landroid/databinding/ViewDataBinding;

    return-object v0
.end method
