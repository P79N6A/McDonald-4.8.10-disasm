.class public Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;
.super Landroid/widget/FrameLayout;
.source "ProductAddToFavoriteView.java"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mNameInput:Landroid/widget/EditText;

.field private final mOnClickCancel:Landroid/view/View$OnClickListener;

.field private final mOnClickSave:Landroid/view/View$OnClickListener;

.field private mSaveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView$1;-><init>(Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->mOnClickCancel:Landroid/view/View$OnClickListener;

    .line 52
    new-instance v0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView$2;-><init>(Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->mOnClickSave:Landroid/view/View$OnClickListener;

    .line 29
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->inflate(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView$1;-><init>(Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->mOnClickCancel:Landroid/view/View$OnClickListener;

    .line 52
    new-instance v0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView$2;-><init>(Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->mOnClickSave:Landroid/view/View$OnClickListener;

    .line 24
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->inflate(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "inflate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    const v0, 0x7f040079

    invoke-static {p1, v0, p0}, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    const v0, 0x7f1101fa

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->mNameInput:Landroid/widget/EditText;

    .line 38
    const v0, 0x7f1101fb

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->mCancelButton:Landroid/widget/Button;

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->mOnClickCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f1101fc

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->mSaveButton:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/ProductAddToFavoriteView;->mOnClickSave:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
