.class public Lcom/mcdonalds/app/ui/about/AboutAppFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "AboutAppFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    const v0, 0x7f090850

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v5, "onClick"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "link":Ljava/lang/String;
    const/4 v4, 0x0

    .line 79
    .local v4, "title":I
    const/4 v0, 0x0

    .line 80
    .local v0, "analyticsTitle":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 118
    :goto_0
    :pswitch_0
    if-eqz v3, :cond_0

    .line 119
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v1, "args":Landroid/os/Bundle;
    const-string v5, "link"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v5, "view_title"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v5, "analytics_title"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-class v5, Lcom/mcdonalds/app/web/WebHamburgerActivity;

    const-string v6, "web"

    invoke-virtual {p0, v5, v6, v1}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 126
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 82
    :pswitch_1
    const-string v5, "eula"

    invoke-static {v5}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    const v4, 0x7f0902ff

    .line 84
    const v5, 0x7f090851

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    goto :goto_0

    .line 87
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/mcdonalds/app/tutorial/TutorialActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string v5, "registerTOC"

    invoke-static {v5}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    const v4, 0x7f09074a

    .line 93
    const v5, 0x7f090854

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    goto :goto_0

    .line 96
    :pswitch_4
    const-string v5, "privacy"

    invoke-static {v5}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    const v4, 0x7f09064e

    .line 98
    const v5, 0x7f090853

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    goto :goto_0

    .line 101
    :pswitch_5
    const-string v5, "FAQ"

    invoke-static {v5}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    if-nez v3, :cond_2

    .line 105
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 106
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.legalCopy.FAQ.zh"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "link":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 108
    .restart local v3    # "link":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.legalCopy.FAQ.en"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "link":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 111
    .restart local v3    # "link":Ljava/lang/String;
    :cond_2
    const v4, 0x7f090357

    .line 112
    const v5, 0x7f090852

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    goto/16 :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x7f110206
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const v17, 0x7f04007e

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 36
    .local v11, "rootView":Landroid/view/View;
    const v17, 0x7f110204

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 37
    .local v16, "versionText":Landroid/widget/TextView;
    const-string v17, "4.8.10"

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v17, 0x7f110205

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 41
    .local v5, "copyrightText":Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 42
    .local v4, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 43
    .local v10, "res":Landroid/content/res/Resources;
    const v17, 0x7f0907d1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 44
    .local v14, "text":Ljava/lang/String;
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v17, 0x7f110206

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 47
    .local v6, "eulaButton":Landroid/widget/Button;
    const-string v17, "eula"

    invoke-static/range {v17 .. v17}, Lcom/mcdonalds/app/util/AppUtils;->getLocalisedLegalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_0

    .line 48
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    const v17, 0x7f110207

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 50
    .local v12, "ruler":Landroid/view/View;
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .end local v12    # "ruler":Landroid/view/View;
    :goto_0
    const v17, 0x7f110208

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 56
    .local v15, "tutorialButton":Landroid/widget/Button;
    const v17, 0x7f110209

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 57
    .local v13, "termsButton":Landroid/widget/Button;
    const v17, 0x7f11020a

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 58
    .local v9, "privacyButton":Landroid/widget/Button;
    const v17, 0x7f11020b

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 60
    .local v7, "faqButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "hideFaqButton"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 61
    .local v8, "hideFaq":Z
    if-eqz v8, :cond_1

    .line 62
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-object v11

    .line 52
    .end local v7    # "faqButton":Landroid/widget/Button;
    .end local v8    # "hideFaq":Z
    .end local v9    # "privacyButton":Landroid/widget/Button;
    .end local v13    # "termsButton":Landroid/widget/Button;
    .end local v15    # "tutorialButton":Landroid/widget/Button;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 64
    .restart local v7    # "faqButton":Landroid/widget/Button;
    .restart local v8    # "hideFaq":Z
    .restart local v9    # "privacyButton":Landroid/widget/Button;
    .restart local v13    # "termsButton":Landroid/widget/Button;
    .restart local v15    # "tutorialButton":Landroid/widget/Button;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 131
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0900d9

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 137
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showNavigateUp(Z)V

    .line 138
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStop()V

    .line 143
    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/about/AboutAppFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showNavigateUp(Z)V

    .line 144
    return-void
.end method
