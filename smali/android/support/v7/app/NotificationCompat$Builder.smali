.class public Landroid/support/v7/app/NotificationCompat$Builder;
.super Landroid/support/v4/app/NotificationCompat$Builder;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# virtual methods
.method protected getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 441
    new-instance v0, Landroid/support/v7/app/NotificationCompat$Api24Extender;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/app/NotificationCompat$Api24Extender;-><init>(Landroid/support/v7/app/NotificationCompat$1;)V

    .line 449
    :goto_0
    return-object v0

    .line 442
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 443
    new-instance v0, Landroid/support/v7/app/NotificationCompat$LollipopExtender;

    invoke-direct {v0}, Landroid/support/v7/app/NotificationCompat$LollipopExtender;-><init>()V

    goto :goto_0

    .line 444
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 445
    new-instance v0, Landroid/support/v7/app/NotificationCompat$JellybeanExtender;

    invoke-direct {v0}, Landroid/support/v7/app/NotificationCompat$JellybeanExtender;-><init>()V

    goto :goto_0

    .line 446
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 447
    new-instance v0, Landroid/support/v7/app/NotificationCompat$IceCreamSandwichExtender;

    invoke-direct {v0}, Landroid/support/v7/app/NotificationCompat$IceCreamSandwichExtender;-><init>()V

    goto :goto_0

    .line 449
    :cond_3
    invoke-super {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    move-result-object v0

    goto :goto_0
.end method

.method protected resolveText()Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 403
    iget-object v3, p0, Landroid/support/v7/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v3, v3, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    if-eqz v3, :cond_1

    .line 404
    iget-object v2, p0, Landroid/support/v7/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    .line 405
    .local v2, "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    invoke-static {v2}, Landroid/support/v7/app/NotificationCompat;->access$000(Landroid/support/v4/app/NotificationCompat$MessagingStyle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v1

    .line 406
    .local v1, "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getConversationTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 407
    .local v0, "conversationTitle":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 408
    if-eqz v0, :cond_0

    invoke-static {p0, v2, v1}, Landroid/support/v7/app/NotificationCompat;->access$100(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 412
    .end local v0    # "conversationTitle":Ljava/lang/CharSequence;
    .end local v1    # "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .end local v2    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :goto_0
    return-object v3

    .line 409
    .restart local v0    # "conversationTitle":Ljava/lang/CharSequence;
    .restart local v1    # "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .restart local v2    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 412
    .end local v0    # "conversationTitle":Ljava/lang/CharSequence;
    .end local v1    # "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .end local v2    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->resolveText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method

.method protected resolveTitle()Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    .prologue
    .line 423
    iget-object v3, p0, Landroid/support/v7/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v3, v3, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    if-eqz v3, :cond_2

    .line 424
    iget-object v2, p0, Landroid/support/v7/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    .line 425
    .local v2, "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    invoke-static {v2}, Landroid/support/v7/app/NotificationCompat;->access$000(Landroid/support/v4/app/NotificationCompat$MessagingStyle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v1

    .line 426
    .local v1, "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getConversationTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 427
    .local v0, "conversationTitle":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 428
    :cond_0
    if-eqz v0, :cond_1

    .line 431
    .end local v0    # "conversationTitle":Ljava/lang/CharSequence;
    .end local v1    # "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .end local v2    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :goto_0
    return-object v0

    .line 428
    .restart local v0    # "conversationTitle":Ljava/lang/CharSequence;
    .restart local v1    # "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .restart local v2    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 431
    .end local v0    # "conversationTitle":Ljava/lang/CharSequence;
    .end local v1    # "m":Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
    .end local v2    # "style":Landroid/support/v4/app/NotificationCompat$MessagingStyle;
    :cond_2
    invoke-super {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->resolveTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method