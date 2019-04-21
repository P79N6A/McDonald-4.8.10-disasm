.class Lcom/mcdonalds/app/util/ImageViewFragment$1;
.super Ljava/lang/Object;
.source "ImageViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/util/ImageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/ImageViewFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/ImageViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/ImageViewFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mcdonalds/app/util/ImageViewFragment$1;->this$0:Lcom/mcdonalds/app/util/ImageViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/app/util/ImageViewFragment$1;->this$0:Lcom/mcdonalds/app/util/ImageViewFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/util/ImageViewFragment;->access$000(Lcom/mcdonalds/app/util/ImageViewFragment;)Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/mcdonalds/app/util/ImageViewFragment$1;->this$0:Lcom/mcdonalds/app/util/ImageViewFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/util/ImageViewFragment;->access$000(Lcom/mcdonalds/app/util/ImageViewFragment;)Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/util/ImageViewFragment$1;->this$0:Lcom/mcdonalds/app/util/ImageViewFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/util/ImageViewFragment;->access$100(Lcom/mcdonalds/app/util/ImageViewFragment;)Lcom/mcdonalds/app/model/Promo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;->onImageViewFragmentClick(Lcom/mcdonalds/app/model/Promo;)V

    .line 112
    :cond_0
    return-void
.end method
