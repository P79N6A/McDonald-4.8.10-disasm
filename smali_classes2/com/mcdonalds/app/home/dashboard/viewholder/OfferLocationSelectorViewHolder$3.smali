.class final Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$3;
.super Ljava/lang/Object;
.source "OfferLocationSelectorViewHolder.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->forceTabSelection(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$viewHolder:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$3;->val$viewHolder:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const-string v0, "onCheckedChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$3;->val$viewHolder:Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;

    invoke-static {v0}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;->access$100(Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder;)Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mcdonalds/app/home/dashboard/viewholder/OfferLocationSelectorViewHolder$OfferLocationSelectorListener;->onSelectionChange(I)V

    .line 67
    return-void
.end method
