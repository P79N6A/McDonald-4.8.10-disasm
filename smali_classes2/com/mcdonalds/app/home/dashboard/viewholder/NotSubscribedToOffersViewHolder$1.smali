.class final Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder$1;
.super Ljava/lang/Object;
.source "NotSubscribedToOffersViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;->bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSubscribedToOffersViewHolder$1;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const-class v1, Lcom/mcdonalds/app/account/OfferPreferencesActivity;

    sget-object v2, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->NAME:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x146

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 56
    return-void
.end method
