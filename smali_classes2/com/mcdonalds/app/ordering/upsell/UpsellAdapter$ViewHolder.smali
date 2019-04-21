.class public Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UpsellAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field itemPrice:Landroid/widget/TextView;

.field itemQuantity:Landroid/widget/TextView;

.field itemTitle:Landroid/widget/TextView;

.field minusButton:Landroid/widget/Button;

.field plusButton:Landroid/widget/Button;

.field selectionMark:Landroid/view/View;

.field final synthetic this$0:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->this$0:Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter;

    .line 164
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 166
    const v0, 0x7f110063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 167
    const v0, 0x7f110529

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->itemTitle:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f110289

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->itemPrice:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f11052a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->selectionMark:Landroid/view/View;

    .line 170
    const v0, 0x7f11052b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->minusButton:Landroid/widget/Button;

    .line 171
    const v0, 0x7f11052c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->plusButton:Landroid/widget/Button;

    .line 172
    const v0, 0x7f110288

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/upsell/UpsellAdapter$ViewHolder;->itemQuantity:Landroid/widget/TextView;

    .line 173
    return-void
.end method
