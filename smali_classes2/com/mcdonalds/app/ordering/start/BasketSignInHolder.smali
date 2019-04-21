.class public Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;
.super Ljava/lang/Object;
.source "BasketSignInHolder.java"


# instance fields
.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mRegisterButton:Landroid/widget/Button;

.field private mSignInButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->mContainer:Landroid/view/View;

    .line 32
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->mContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->mContainer:Landroid/view/View;

    const v1, 0x7f11011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->mRegisterButton:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->mContainer:Landroid/view/View;

    const v1, 0x7f110120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->mSignInButton:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->mRegisterButton:Landroid/widget/Button;

    new-instance v1, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder$1;-><init>(Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->mSignInButton:Landroid/widget/Button;

    new-instance v1, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder$2;-><init>(Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;)Landroid/content/Context;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.BasketSignInHolder"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "setVisible"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->mContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void

    .line 85
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
