.class Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$5;
.super Ljava/lang/Object;
.source "StoreNicknamingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

.field final synthetic val$customCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$5;->val$customCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$5;->val$customCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$5;->this$0:Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->customText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 188
    return-void
.end method
