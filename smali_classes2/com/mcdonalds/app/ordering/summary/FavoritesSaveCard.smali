.class public Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;
.super Ljava/lang/Object;
.source "FavoritesSaveCard.java"


# instance fields
.field private final mAddToFavorites:Landroid/widget/Button;

.field private final mProvideFeedback:Landroid/view/View;

.field private final mSaveCard:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v0, 0x7f1104c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->mAddToFavorites:Landroid/widget/Button;

    .line 21
    const v0, 0x7f1104c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->mSaveCard:Landroid/widget/Button;

    .line 22
    const v0, 0x7f1104c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->mProvideFeedback:Landroid/view/View;

    .line 23
    return-void
.end method


# virtual methods
.method public getAddToFavorites()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getAddToFavorites"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->mAddToFavorites:Landroid/widget/Button;

    return-object v0
.end method

.method public getFeedbackButton()Landroid/view/View;
    .locals 2

    .prologue
    const-string v0, "getFeedbackButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->mProvideFeedback:Landroid/view/View;

    return-object v0
.end method

.method public getSaveCard()Landroid/widget/Button;
    .locals 2

    .prologue
    const-string v0, "getSaveCard"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/FavoritesSaveCard;->mSaveCard:Landroid/widget/Button;

    return-object v0
.end method
