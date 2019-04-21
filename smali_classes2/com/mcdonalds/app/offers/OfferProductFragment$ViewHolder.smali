.class Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;
.super Ljava/lang/Object;
.source "OfferProductFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/offers/OfferProductFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field mFoodImageThumb:Landroid/widget/ImageView;

.field mHatButton:Landroid/widget/ImageButton;

.field mInfoButton:Landroid/widget/ImageButton;

.field mLayout:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

.field mProductName:Landroid/widget/TextView;

.field mProductSpecialInstructions:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const v0, 0x7f1104a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mProductName:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f1100ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mLayout:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    .line 257
    const v0, 0x7f11013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mHatButton:Landroid/widget/ImageButton;

    .line 258
    const v0, 0x7f110134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mFoodImageThumb:Landroid/widget/ImageView;

    .line 259
    const v0, 0x7f11013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mInfoButton:Landroid/widget/ImageButton;

    .line 260
    const v0, 0x7f110139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$ViewHolder;->mProductSpecialInstructions:Landroid/widget/TextView;

    .line 261
    return-void
.end method
