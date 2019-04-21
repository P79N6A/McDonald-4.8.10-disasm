.class Lcom/mcdonalds/app/account/EditCardActivity$2;
.super Ljava/lang/Object;
.source "EditCardActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/EditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/EditCardActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/EditCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/EditCardActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 13
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v4, "afterTextChanged"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v9

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$100(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/account/EditCardPresenter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/account/EditCardPresenter;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "cardType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 234
    const-string v4, "003"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$000(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    new-array v5, v10, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x11

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 236
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$300(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    new-array v5, v10, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v12}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 237
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$600(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/ui/EditTextMask;

    move-result-object v4

    const-string v5, "#### ###### #####"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/ui/EditTextMask;->setMask(Ljava/lang/String;)V

    .line 238
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$700(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/widget/ValidationListener;->setMinimumLength(I)V

    .line 239
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$800(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/mcdonalds/app/widget/ValidationListener;->setMinimumLength(I)V

    .line 249
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$100(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/account/EditCardPresenter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/account/EditCardPresenter;->getCardTypeDrawableResourceId(Ljava/lang/String;)I

    move-result v1

    .line 250
    .local v1, "cardTypeDrawableResourceId":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    .line 251
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 252
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$700(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 253
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$000(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v2, v8, v8, v8}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 241
    .end local v1    # "cardTypeDrawableResourceId":I
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$000(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    new-array v5, v10, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x13

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 242
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$300(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    new-array v5, v10, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 243
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$600(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/ui/EditTextMask;

    move-result-object v4

    const-string v5, "#### #### #### ####"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/ui/EditTextMask;->setMask(Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$700(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/widget/ValidationListener;->setMinimumLength(I)V

    .line 245
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$800(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/mcdonalds/app/widget/ValidationListener;->setMinimumLength(I)V

    goto :goto_1

    .line 256
    .restart local v1    # "cardTypeDrawableResourceId":I
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$000(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    const v6, 0x7f0201be

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v2, v8, v5, v8}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 259
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$700(Lcom/mcdonalds/app/account/EditCardActivity;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 260
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$000(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 263
    :cond_5
    iget-object v4, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    invoke-static {v4}, Lcom/mcdonalds/app/account/EditCardActivity;->access$000(Lcom/mcdonalds/app/account/EditCardActivity;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/account/EditCardActivity$2;->this$0:Lcom/mcdonalds/app/account/EditCardActivity;

    const v6, 0x7f0201be

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v8, v8, v5, v8}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const-string v0, "beforeTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const-string v0, "onTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    return-void
.end method
