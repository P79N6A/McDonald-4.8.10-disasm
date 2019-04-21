.class public Lcom/mcdonalds/app/account/AccountProfileFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "AccountProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# instance fields
.field private final SUPPORT_ZIP_CODE_KEY:Ljava/lang/String;

.field private mAccountDelete:Landroid/widget/TextView;

.field private mAddresses:Landroid/view/View;

.field private mBirthdateButton:Landroid/widget/TextView;

.field private mChangePassword:Landroid/view/View;

.field private mEmail:Landroid/widget/TextView;

.field private mGender:Landroid/widget/TextView;

.field private mMobile:Landroid/widget/TextView;

.field private mReady:Z

.field private mSavedCards:Landroid/view/View;

.field private mSignOutButton:Landroid/widget/Button;

.field private mUserName:Landroid/widget/TextView;

.field private mZipCode:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 44
    const-string v0, "interface.register.supportsZipCode"

    iput-object v0, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->SUPPORT_ZIP_CODE_KEY:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private config(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 5
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const-string v0, "config"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.delivery.sendToDeliveryWebsite"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mSavedCards:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_1
    const-string v0, "delivery"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mAddresses:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.register.supportsZipCode"

    invoke-virtual {v0, v1, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mZipCode:Landroid/view/View;

    const-string v1, "zipcode"

    invoke-direct {p0, v0, v1}, Lcom/mcdonalds/app/account/AccountProfileFragment;->display(Landroid/view/View;Ljava/lang/String;)V

    .line 215
    :cond_3
    if-eqz p1, :cond_4

    .line 216
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/account/AccountProfileFragment;->populateUserFields(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 218
    :cond_4
    return-void
.end method

.method private configCustomerProfile()V
    .locals 4

    .prologue
    const-string v2, "configCustomerProfile"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 528
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    .line 529
    .local v1, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/util/LoginManager;->setProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 531
    iget-boolean v2, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mReady:Z

    if-eqz v2, :cond_0

    .line 532
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/account/AccountProfileFragment;->config(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 534
    :cond_0
    return-void
.end method

.method private display(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const-string v0, "display"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private navigateToSection(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x0

    const-string v4, "navigateToSection"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v7

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "fragmentName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 252
    .local v1, "container":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mcdonalds/app/ui/URLNavigationActivity;>;"
    const/16 v3, 0x29a

    .line 254
    .local v3, "requestCode":I
    packed-switch p1, :pswitch_data_0

    .line 372
    :goto_0
    if-eqz v2, :cond_0

    .line 374
    const/16 v4, 0x29a

    if-eq v3, v4, :cond_2

    .line 376
    invoke-virtual {p0, v1, v2, v3}, Lcom/mcdonalds/app/account/AccountProfileFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 381
    :cond_0
    :goto_1
    return-void

    .line 258
    :pswitch_0
    sget-object v2, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->NAME:Ljava/lang/String;

    .line 259
    const-class v1, Lcom/mcdonalds/app/account/ChangeUserNameActivity;

    .line 260
    const/16 v3, 0x7d1

    .line 262
    goto :goto_0

    .line 266
    :pswitch_1
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v4

    .line 267
    invoke-virtual {v4}, Lcom/mcdonalds/app/util/LoginManager;->getRegisterSettings()Lcom/mcdonalds/app/model/Register;

    move-result-object v4

    .line 268
    invoke-virtual {v4}, Lcom/mcdonalds/app/model/Register;->chooseSignInMethodEnabled()Z

    move-result v0

    .line 270
    .local v0, "chooseMethod":Z
    if-eqz v0, :cond_1

    .line 272
    sget-object v2, Lcom/mcdonalds/app/account/ChangeEmailAddressFragment;->NAME:Ljava/lang/String;

    .line 273
    const-class v1, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    goto :goto_0

    .line 277
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mEmail:Landroid/widget/TextView;

    const v5, 0x7f0201be

    invoke-virtual {v4, v7, v7, v5, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 287
    .end local v0    # "chooseMethod":Z
    :pswitch_2
    sget-object v2, Lcom/mcdonalds/app/account/ChangeMobileFragment;->NAME:Ljava/lang/String;

    .line 288
    const-class v1, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    .line 289
    const/16 v3, 0x7d5

    .line 291
    goto :goto_0

    .line 295
    :pswitch_3
    sget-object v2, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->NAME:Ljava/lang/String;

    .line 296
    const-class v1, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    .line 297
    const/16 v3, 0x7d6

    .line 299
    goto :goto_0

    .line 303
    :pswitch_4
    sget-object v2, Lcom/mcdonalds/app/account/ChangePasswordFragment;->NAME:Ljava/lang/String;

    .line 304
    const-class v1, Lcom/mcdonalds/app/account/ChangePasswordActivity;

    .line 305
    const/16 v3, 0x7d3

    .line 307
    goto :goto_0

    .line 311
    :pswitch_5
    sget-object v2, Lcom/mcdonalds/app/account/ModifyAddressesFragment;->NAME:Ljava/lang/String;

    .line 312
    const-class v1, Lcom/mcdonalds/app/account/ModifyAddressesActivity;

    .line 314
    goto :goto_0

    .line 318
    :pswitch_6
    sget-object v2, Lcom/mcdonalds/app/account/ModifyCardsFragment;->NAME:Ljava/lang/String;

    .line 319
    const-class v1, Lcom/mcdonalds/app/account/ModifyCardsActivity;

    .line 321
    goto :goto_0

    .line 325
    :pswitch_7
    sget-object v2, Lcom/mcdonalds/app/account/ModifyZipCodeFragment;->NAME:Ljava/lang/String;

    .line 326
    const-class v1, Lcom/mcdonalds/app/account/ModifyZipCodeActivity;

    .line 328
    goto :goto_0

    .line 332
    :pswitch_8
    sget-object v2, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->NAME:Ljava/lang/String;

    .line 333
    const-class v1, Lcom/mcdonalds/app/account/CommunicationsPreferencesActivity;

    .line 335
    goto :goto_0

    .line 339
    :pswitch_9
    sget-object v2, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->NAME:Ljava/lang/String;

    .line 340
    const-class v1, Lcom/mcdonalds/app/account/OfferPreferencesActivity;

    .line 343
    goto :goto_0

    .line 347
    :pswitch_a
    sget-object v2, Lcom/mcdonalds/app/account/DeleteAccountFragment;->NAME:Ljava/lang/String;

    .line 348
    const-class v1, Lcom/mcdonalds/app/account/DeleteAccountActivity;

    .line 349
    const/16 v3, 0x7d4

    .line 350
    goto :goto_0

    .line 354
    :pswitch_b
    sget-object v2, Lcom/mcdonalds/app/account/ChangeBirthdateFragment;->NAME:Ljava/lang/String;

    .line 355
    const-class v1, Lcom/mcdonalds/app/account/ChangeBirthdateActivity;

    .line 356
    const/16 v3, 0x7d7

    .line 358
    goto :goto_0

    .line 362
    :pswitch_c
    sget-object v2, Lcom/mcdonalds/app/account/ChangeGenderFragment;->NAME:Ljava/lang/String;

    .line 363
    const-class v1, Lcom/mcdonalds/app/account/ChangeGenderActivity;

    .line 364
    const/16 v3, 0x7d8

    .line 366
    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/account/AccountProfileFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x7f11021b
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private populateUserFields(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V
    .locals 13
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const v12, 0x7f09075f

    const v11, 0x7f0201be

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "populateUserFields"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "name":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getRegisterSettings()Lcom/mcdonalds/app/model/Register;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/model/Register;->isSingleFieldName()Z

    move-result v5

    if-nez v5, :cond_0

    .line 457
    const-string v5, "%s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 459
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 463
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 466
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    .line 467
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mEmail:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    :goto_0
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mChangePassword:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 473
    const-string v5, ""

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    if-ne v5, v6, :cond_9

    .line 474
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(I)V

    .line 490
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 491
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isEmailAddressVerified()Z

    move-result v5

    if-nez v5, :cond_4

    .line 493
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mEmail:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v8, v11, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 496
    :cond_4
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isMobileVerified()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 497
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v8, v11, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 500
    :cond_5
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    const-string v6, "birthDate"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 501
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-yyyy"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 505
    .local v2, "dateFormat":Ljava/text/DateFormat;
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v0

    .line 507
    .local v0, "birthdate":Ljava/util/Calendar;
    if-eqz v0, :cond_c

    .line 508
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "birthdateText":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 517
    .end local v0    # "birthdate":Ljava/util/Calendar;
    .end local v1    # "birthdateText":Ljava/lang/String;
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    :cond_6
    :goto_2
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v5

    const-string v6, "gender"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/util/LoginManager;->showField(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 518
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mGender:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "gender":Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mGender:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mGender:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 524
    .end local v3    # "gender":Ljava/lang/String;
    :cond_7
    return-void

    .line 469
    :cond_8
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mEmail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 476
    :cond_9
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 480
    :cond_a
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mEmail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 482
    const-string v5, ""

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    if-ne v5, v6, :cond_b

    .line 483
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 485
    :cond_b
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 513
    .restart local v0    # "birthdate":Ljava/util/Calendar;
    .restart local v2    # "dateFormat":Ljava/text/DateFormat;
    :cond_c
    iget-object v5, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09083b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 519
    .end local v0    # "birthdate":Ljava/util/Calendar;
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    :cond_d
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0906dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method private toggleAccountFields()V
    .locals 3

    .prologue
    const-string v1, "toggleAccountFields"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "deleteAccount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 179
    .local v0, "deleteAccount":Z
    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mAccountDelete:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const v0, 0x7f09085a

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const v0, 0x7f090791

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 190
    .local v0, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->config(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mReady:Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 385
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 387
    if-nez p3, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 393
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 397
    :pswitch_1
    const-string v7, "first"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "firstName":Ljava/lang/String;
    const-string v7, "last"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "lastName":Ljava/lang/String;
    const-string v3, ""

    .line 403
    .local v3, "fullName":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 404
    move-object v3, v2

    .line 407
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    :cond_3
    iget-object v7, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 417
    .end local v2    # "firstName":Ljava/lang/String;
    .end local v3    # "fullName":Ljava/lang/String;
    .end local v5    # "lastName":Ljava/lang/String;
    :pswitch_2
    const-string v7, "email"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "email_update":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mEmail:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    .end local v1    # "email_update":Ljava/lang/String;
    :pswitch_3
    const-string v7, "birthdate"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "birthdate":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 427
    iget-object v7, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09083b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 430
    :cond_4
    iget-object v7, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v7, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 438
    .end local v0    # "birthdate":Ljava/lang/String;
    :pswitch_4
    const-string v7, "mobilenumber"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 439
    .local v6, "mobileNumber":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 444
    .end local v6    # "mobileNumber":Ljava/lang/String;
    :pswitch_5
    const-string v7, "gender"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, "gender":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mGender:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const-string v2, "onClick"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 233
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    if-eqz v0, :cond_0

    .line 235
    iget-object v2, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mSignOutButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sign Out"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "modal"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string v2, "mcdmobileapp://signout"

    invoke-virtual {p0, v2, v1}, Lcom/mcdonalds/app/account/AccountProfileFragment;->openSelfUrl(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/account/AccountProfileFragment;->navigateToSection(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->loadRegisterConfig()V

    .line 93
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->addObserver(Ljava/util/Observer;)V

    .line 95
    invoke-direct {p0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->configCustomerProfile()V

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f110227

    const v8, 0x7f110221

    const/4 v7, 0x0

    const v6, 0x7f110226

    const/16 v5, 0x8

    .line 110
    const v3, 0x7f040080

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 112
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f11021b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mUserName:Landroid/widget/TextView;

    .line 113
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v3, 0x7f11021d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    .line 116
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mBirthdateButton:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v3, 0x7f11021c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mGender:Landroid/widget/TextView;

    .line 119
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mGender:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v3, 0x7f11021e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mEmail:Landroid/widget/TextView;

    .line 122
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mEmail:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v3, 0x7f11021f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mMobile:Landroid/widget/TextView;

    .line 125
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mAccountDelete:Landroid/widget/TextView;

    .line 129
    const v3, 0x7f110220

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mChangePassword:Landroid/view/View;

    .line 130
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mChangePassword:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v3, 0x7f110222

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mAddresses:Landroid/view/View;

    .line 133
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "modules.delivery.sendToDeliveryWebsite"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mAddresses:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_0
    const v3, 0x7f110223

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mSavedCards:Landroid/view/View;

    .line 141
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.checkoutFlow"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "checkoutFlow":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "one_time_payment_flow"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mSavedCards:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :goto_1
    const v3, 0x7f110228

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mSignOutButton:Landroid/widget/Button;

    .line 149
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mSignOutButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v3, 0x7f110224

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mZipCode:Landroid/view/View;

    .line 153
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.register.chooseEmailOrPhoneAsUsername"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.useMobileNumberRegisterOnly"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mMobile:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :goto_2
    const v3, 0x7f110225

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.availableCommunicationPreferences"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v1

    .line 165
    .local v1, "isCommunicationPreferenceAvailable":Z
    if-eqz v1, :cond_3

    .line 166
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :goto_3
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-direct {p0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->toggleAccountFields()V

    .line 174
    return-object v2

    .line 136
    .end local v0    # "checkoutFlow":Ljava/lang/String;
    .end local v1    # "isCommunicationPreferenceAvailable":Z
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mAddresses:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 145
    .restart local v0    # "checkoutFlow":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/account/AccountProfileFragment;->mSavedCards:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 169
    .restart local v1    # "isCommunicationPreferenceAvailable":Z
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 102
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->deleteObserver(Ljava/util/Observer;)V

    .line 103
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const-string v0, "update"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/AccountProfileFragment;->populateUserFields(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    .line 539
    return-void
.end method
