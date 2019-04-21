.class public Landroid/databinding/adapters/TextViewBindingAdapter;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;,
        Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;,
        Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextString(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .annotation build Landroid/databinding/InverseBindingAdapter;
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static haveContentsChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 327
    if-nez p0, :cond_1

    move v5, v2

    :goto_0
    if-nez p1, :cond_2

    move v4, v2

    :goto_1
    if-eq v5, v4, :cond_3

    .line 341
    :cond_0
    :goto_2
    return v2

    :cond_1
    move v5, v3

    .line 327
    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    .line 329
    :cond_3
    if-nez p0, :cond_4

    move v2, v3

    .line 330
    goto :goto_2

    .line 332
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 333
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_5

    .line 337
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v2, v3

    .line 341
    goto :goto_2
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation build Landroid/databinding/BindingAdapter;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    .local v0, "oldText":Ljava/lang/CharSequence;
    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-static {p1, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->haveContentsChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public static setTextWatcher(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroid/databinding/InverseBindingListener;)V
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "before"    # Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
    .param p2, "on"    # Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
    .param p3, "after"    # Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    .param p4, "textAttrChanged"    # Landroid/databinding/InverseBindingListener;
    .annotation build Landroid/databinding/BindingAdapter;
    .end annotation

    .prologue
    .line 350
    if-nez p1, :cond_2

    if-nez p3, :cond_2

    if-nez p2, :cond_2

    if-nez p4, :cond_2

    .line 351
    const/4 v0, 0x0

    .line 379
    .local v0, "newValue":Landroid/text/TextWatcher;
    :goto_0
    sget v2, Lcom/android/databinding/library/baseAdapters/R$id;->textWatcher:I

    invoke-static {p0, v0, v2}, Landroid/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 380
    .local v1, "oldValue":Landroid/text/TextWatcher;
    if-eqz v1, :cond_0

    .line 381
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 383
    :cond_0
    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 386
    :cond_1
    return-void

    .line 353
    .end local v0    # "newValue":Landroid/text/TextWatcher;
    .end local v1    # "oldValue":Landroid/text/TextWatcher;
    :cond_2
    new-instance v0, Landroid/databinding/adapters/TextViewBindingAdapter$1;

    invoke-direct {v0, p1, p2, p4, p3}, Landroid/databinding/adapters/TextViewBindingAdapter$1;-><init>(Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/InverseBindingListener;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    .restart local v0    # "newValue":Landroid/text/TextWatcher;
    goto :goto_0
.end method
