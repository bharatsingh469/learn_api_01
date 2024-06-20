class ProfileModel {
  int? messageCode;
  String? message;
  Data? data;

  ProfileModel({this.messageCode, this.message, this.data});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    messageCode = json['message_code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message_code'] = this.messageCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? title;
  String? email;
  String? name;
  String? personalEmailId;
  String? gender;
  String? countryCode;
  String? mobileNumber;
  String? homeAddress1;
  String? homeAddress2;
  String? landmark;
  String? homeCity;
  String? homePincode;
  String? dob;
  String? organizationName;
  String? designation;
  String? chapterId;
  String? reportToDesignation;
  String? industryVerticalId;
  String? itExprienceYear;
  String? officialEmailId;
  String? officePostalAddress;
  int? pincode;
  String? officeCity;
  String? officeCountryId;
  String? stateId;
  String? tshirtSize;
  String? topicOfInterest;
  String? referedBy;
  String? twitterUrl;
  String? linkedInUrl;
  String? profilePhoto;
  String? visitingCard;
  String? homeCountryId;
  String? homeStateId;
  String? officeLandlineNo;
  String? appliedDate;
  String? decisionDate;
  String? approvedBy;
  String? cioklubId;
  String? chapterName;
  String? referredBy;
  String? membershipType;
  String? expiryDate;
  String? cioklubEmailId;

  Data(
      {this.title,
      this.email,
      this.name,
      this.personalEmailId,
      this.gender,
      this.countryCode,
      this.mobileNumber,
      this.homeAddress1,
      this.homeAddress2,
      this.landmark,
      this.homeCity,
      this.homePincode,
      this.dob,
      this.organizationName,
      this.designation,
      this.chapterId,
      this.reportToDesignation,
      this.industryVerticalId,
      this.itExprienceYear,
      this.officialEmailId,
      this.officePostalAddress,
      this.pincode,
      this.officeCity,
      this.officeCountryId,
      this.stateId,
      this.tshirtSize,
      this.topicOfInterest,
      this.referedBy,
      this.twitterUrl,
      this.linkedInUrl,
      this.profilePhoto,
      this.visitingCard,
      this.homeCountryId,
      this.homeStateId,
      this.officeLandlineNo,
      this.appliedDate,
      this.decisionDate,
      this.approvedBy,
      this.cioklubId,
      this.chapterName,
      this.referredBy,
      this.membershipType,
      this.expiryDate,
      this.cioklubEmailId});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    email = json['email'];
    name = json['name'];
    personalEmailId = json['personal_email_id'];
    gender = json['gender'];
    countryCode = json['country_code'];
    mobileNumber = json['mobile_number'];
    homeAddress1 = json['home_address1'];
    homeAddress2 = json['home_address2'];
    landmark = json['landmark'];
    homeCity = json['home_city'];
    homePincode = json['home_pincode'];
    dob = json['dob'];
    organizationName = json['organization_name'];
    designation = json['designation'];
    chapterId = json['chapter_id'];
    reportToDesignation = json['report_to_designation'];
    industryVerticalId = json['industry_vertical_id'];
    itExprienceYear = json['it_exprience_year'];
    officialEmailId = json['official_email_id'];
    officePostalAddress = json['office_postal_address'];
    pincode = json['pincode'];
    officeCity = json['office_city'];
    officeCountryId = json['office_country_id'];
    stateId = json['state_id'];
    tshirtSize = json['tshirt_size'];
    topicOfInterest = json['topic_of_interest'];
    referedBy = json['refered_by'];
    twitterUrl = json['twitter_url'];
    linkedInUrl = json['linked_in_url'];
    profilePhoto = json['profile_photo'];
    visitingCard = json['visiting_card'];
    homeCountryId = json['home_country_id'];
    homeStateId = json['home_state_id'];
    officeLandlineNo = json['office_landline_no'];
    appliedDate = json['applied_date'];
    decisionDate = json['decision_date'];
    approvedBy = json['approved_by'];
    cioklubId = json['cioklub_id'];
    chapterName = json['chapter_name'];
    referredBy = json['referred_by'];
    membershipType = json['membership_type'];
    expiryDate = json['expiry_date'];
    cioklubEmailId = json['cioklub_email_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['email'] = this.email;
    data['name'] = this.name;
    data['personal_email_id'] = this.personalEmailId;
    data['gender'] = this.gender;
    data['country_code'] = this.countryCode;
    data['mobile_number'] = this.mobileNumber;
    data['home_address1'] = this.homeAddress1;
    data['home_address2'] = this.homeAddress2;
    data['landmark'] = this.landmark;
    data['home_city'] = this.homeCity;
    data['home_pincode'] = this.homePincode;
    data['dob'] = this.dob;
    data['organization_name'] = this.organizationName;
    data['designation'] = this.designation;
    data['chapter_id'] = this.chapterId;
    data['report_to_designation'] = this.reportToDesignation;
    data['industry_vertical_id'] = this.industryVerticalId;
    data['it_exprience_year'] = this.itExprienceYear;
    data['official_email_id'] = this.officialEmailId;
    data['office_postal_address'] = this.officePostalAddress;
    data['pincode'] = this.pincode;
    data['office_city'] = this.officeCity;
    data['office_country_id'] = this.officeCountryId;
    data['state_id'] = this.stateId;
    data['tshirt_size'] = this.tshirtSize;
    data['topic_of_interest'] = this.topicOfInterest;
    data['refered_by'] = this.referedBy;
    data['twitter_url'] = this.twitterUrl;
    data['linked_in_url'] = this.linkedInUrl;
    data['profile_photo'] = this.profilePhoto;
    data['visiting_card'] = this.visitingCard;
    data['home_country_id'] = this.homeCountryId;
    data['home_state_id'] = this.homeStateId;
    data['office_landline_no'] = this.officeLandlineNo;
    data['applied_date'] = this.appliedDate;
    data['decision_date'] = this.decisionDate;
    data['approved_by'] = this.approvedBy;
    data['cioklub_id'] = this.cioklubId;
    data['chapter_name'] = this.chapterName;
    data['referred_by'] = this.referredBy;
    data['membership_type'] = this.membershipType;
    data['expiry_date'] = this.expiryDate;
    data['cioklub_email_id'] = this.cioklubEmailId;
    return data;
  }
}
