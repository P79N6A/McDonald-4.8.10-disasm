.class Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$7;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "FavoritesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$7;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getSpanSize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$7;->this$0:Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesAdapter:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->getSpan(I)I

    move-result v0

    return v0
.end method
