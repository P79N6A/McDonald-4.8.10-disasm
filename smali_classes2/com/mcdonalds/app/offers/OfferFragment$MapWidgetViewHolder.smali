.class Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;
.super Ljava/lang/Object;
.source "OfferFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/offers/OfferFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapWidgetViewHolder"
.end annotation


# instance fields
.field private final mDistance:Landroid/widget/TextView;

.field private final mHours:Landroid/widget/TextView;

.field private final mImageButton:Landroid/widget/ImageButton;

.field private final mIsOpen:Landroid/widget/TextView;

.field private final mName:Landroid/widget/TextView;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;Landroid/view/View;)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2218
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2220
    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mView:Landroid/view/View;

    .line 2221
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f1104a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mImageButton:Landroid/widget/ImageButton;

    .line 2223
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f110136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mName:Landroid/widget/TextView;

    .line 2224
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f1104a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mIsOpen:Landroid/widget/TextView;

    .line 2225
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f1104a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mHours:Landroid/widget/TextView;

    .line 2226
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f11017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mDistance:Landroid/widget/TextView;

    .line 2227
    return-void
.end method


# virtual methods
.method public getDistance()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getDistance"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2250
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mDistance:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHours()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getHours"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2246
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mHours:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIsOpen()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getIsOpen"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2242
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mIsOpen:Landroid/widget/TextView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 2

    .prologue
    const-string v0, "getName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2238
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getmImageButton()Landroid/widget/ImageButton;
    .locals 2

    .prologue
    const-string v0, "getmImageButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2234
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$MapWidgetViewHolder;->mImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method
