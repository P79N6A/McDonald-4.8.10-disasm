.class public Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;
.super Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;
.source "CategoryParentViewHolder.java"


# static fields
.field private static final HONEYCOMB_AND_ABOVE:Z


# instance fields
.field public mParentDropDownArrow:Landroid/widget/ImageView;

.field public mParentImage:Landroid/widget/ImageView;

.field public title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;->HONEYCOMB_AND_ABOVE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    const v0, 0x7f1100bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;->title:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f11050f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;->mParentDropDownArrow:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f11050e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;->mParentImage:Landroid/widget/ImageView;

    .line 29
    return-void
.end method


# virtual methods
.method public setExpanded(Z)V
    .locals 4
    .param p1, "expanded"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-string v0, "setExpanded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/ParentViewHolder;->setExpanded(Z)V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;->mParentDropDownArrow:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/CategoryParentViewHolder;->mParentDropDownArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0
.end method
