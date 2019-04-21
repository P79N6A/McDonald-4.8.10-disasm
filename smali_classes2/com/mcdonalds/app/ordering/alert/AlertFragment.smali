.class public abstract Lcom/mcdonalds/app/ordering/alert/AlertFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "AlertFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static PARAMETER_HIDE_POSITIVE:Ljava/lang/String;


# instance fields
.field protected mNegativeButton:Landroid/widget/Button;

.field protected mPositiveButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "hide_positive"

    sput-object v0, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->PARAMETER_HIDE_POSITIVE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method private shouldHidePositive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string v2, "shouldHidePositive"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->PARAMETER_HIDE_POSITIVE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public abstract getFragmentResourceId()I
.end method

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

    .line 54
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->onNegativeButtonClicked()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->onPositiveButtonClicked()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->getFragmentResourceId()I

    move-result v0

    .line 28
    .local v0, "resourceId":I
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f110278

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->mNegativeButton:Landroid/widget/Button;

    .line 31
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v2, 0x7f110279

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->mPositiveButton:Landroid/widget/Button;

    .line 34
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->shouldHidePositive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->mPositiveButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 40
    :goto_0
    return-object v1

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/alert/AlertFragment;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public abstract onNegativeButtonClicked()V
.end method

.method public abstract onPositiveButtonClicked()V
.end method
