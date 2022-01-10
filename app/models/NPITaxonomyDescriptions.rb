# Scraped from a site. See taxonomy/scrape.rb.
class NPITaxonomyDescriptions
  DEFAULT_TEXT = "Any"
  DEFAULT_VALUE = ""
  ALL = [
    [DEFAULT_TEXT, DEFAULT_VALUE],
    ["Allergy & Immunology", # 207K00000X
      "Allergy & Immunology"],
    ["Allergy & Immunology (Allergy)", # 207KA0200X
      "Allergy & Immunology -- Allergy"],
    ["Allergy & Immunology (Clinical & Laboratory Immunology)", # 207KI0005X
      "Allergy & Immunology -- Clinical & Laboratory Immunology"],
    ["Anesthesiology", # 207L00000X
      "Anesthesiology"],
    ["Anesthesiology (Addiction Medicine)", # 207LA0401X
      "Anesthesiology -- Addiction Medicine"],
    ["Anesthesiology (Critical Care Medicine)", # 207LC0200X
      "Anesthesiology -- Critical Care Medicine"],
    ["Anesthesiology (Hospice and Palliative Medicine)", # 207LH0002X
      "Anesthesiology -- Hospice and Palliative Medicine"],
    ["Anesthesiology (Pain Medicine)", # 207LP2900X
      "Anesthesiology -- Pain Medicine"],
    ["Anesthesiology (Pediatric Anesthesiology)", # 207LP3000X
      "Anesthesiology -- Pediatric Anesthesiology"],
    ["Clinical Pharmacology", # 208U00000X
      "Clinical Pharmacology"],
    ["Colon & Rectal Surgery", # 208C00000X
      "Colon & Rectal Surgery"],
    ["Dermatology", # 207N00000X
      "Dermatology"],
    ["Dermatology (Clinical & Laboratory Dermatological Immunology)", # 207NI0002X
      "Dermatology -- Clinical & Laboratory Dermatological Immunology"],
    ["Dermatology (Dermatopathology)", # 207ND0900X
      "Dermatology -- Dermatopathology"],
    ["Dermatology (MOHS-Micrographic Surgery)", # 207ND0101X
      "Dermatology -- MOHS-Micrographic Surgery"],
    ["Dermatology (Pediatric Dermatology)", # 207NP0225X
      "Dermatology -- Pediatric Dermatology"],
    ["Dermatology (Procedural Dermatology)", # 207NS0135X
      "Dermatology -- Procedural Dermatology"],
    ["Electrodiagnostic Medicine", # 204R00000X
      "Electrodiagnostic Medicine"],
    ["Emergency Medicine", # 207P00000X
      "Emergency Medicine"],
    ["Emergency Medicine (Emergency Medical Services)", # 207PE0004X
      "Emergency Medicine -- Emergency Medical Services"],
    ["Emergency Medicine (Hospice and Palliative Medicine)", # 207PH0002X
      "Emergency Medicine -- Hospice and Palliative Medicine"],
    ["Emergency Medicine (Medical Toxicology)", # 207PT0002X
      "Emergency Medicine -- Medical Toxicology"],
    ["Emergency Medicine (Pediatric Emergency Medicine)", # 207PP0204X
      "Emergency Medicine -- Pediatric Emergency Medicine"],
    ["Emergency Medicine (Sports Medicine)", # 207PS0010X
      "Emergency Medicine -- Sports Medicine"],
    ["Emergency Medicine (Undersea and Hyperbaric Medicine)", # 207PE0005X
      "Emergency Medicine -- Undersea and Hyperbaric Medicine"],
    ["Family Medicine", # 207Q00000X
      "Family Medicine"],
    ["Family Medicine (Addiction Medicine)", # 207QA0401X
      "Family Medicine -- Addiction Medicine"],
    ["Family Medicine (Adolescent Medicine)", # 207QA0000X
      "Family Medicine -- Adolescent Medicine"],
    ["Family Medicine (Adult Medicine)", # 207QA0505X
      "Family Medicine -- Adult Medicine"],
    ["Family Medicine (Geriatric Medicine)", # 207QG0300X
      "Family Medicine -- Geriatric Medicine"],
    ["Family Medicine (Hospice and Palliative Medicine)", # 207QH0002X
      "Family Medicine -- Hospice and Palliative Medicine"],
    ["Family Medicine (Obesity Medicine)", # 207QB0002X
      "Family Medicine -- Obesity Medicine"],
    ["Family Medicine (Sleep Medicine)", # 207QS1201X
      "Family Medicine -- Sleep Medicine"],
    ["Family Medicine (Sports Medicine)", # 207QS0010X
      "Family Medicine -- Sports Medicine"],
    ["General Practice", # 208D00000X
      "General Practice"],
    ["Hospitalist", # 208M00000X
      "Hospitalist"],
    ["Independent Medical Examiner", # 202C00000X
      "Independent Medical Examiner"],
    # 202D00000X FAILED, doesn't exist (new code)
    ["Internal Medicine", # 207R00000X
      "Internal Medicine"],
    ["Internal Medicine (Addiction Medicine)", # 207RA0401X
      "Internal Medicine -- Addiction Medicine"],
    ["Internal Medicine (Adolescent Medicine)", # 207RA0000X
      "Internal Medicine -- Adolescent Medicine"],
    # 207RA0002X FAILED, fixed:
    ["Internal Medicine (Adult Congenital Heart Disease)", # 207RA0002X
      "Internal Medicine -- Adult Congenital Heart Disease"],
    ["Internal Medicine (Advanced Heart Failure and Transplant Cardiology)", # 207RA0001X
      "Internal Medicine -- Advanced Heart Failure and Transplant Cardiology"],
    ["Internal Medicine (Allergy & Immunology)", # 207RA0201X
      "Internal Medicine -- Allergy & Immunology"],
    ["Internal Medicine (Cardiovascular Disease)", # 207RC0000X
      "Internal Medicine -- Cardiovascular Disease"],
    ["Internal Medicine (Clinical & Laboratory Immunology)", # 207RI0001X
      "Internal Medicine -- Clinical & Laboratory Immunology"],
    ["Internal Medicine (Clinical Cardiac Electrophysiology)", # 207RC0001X
      "Internal Medicine -- Clinical Cardiac Electrophysiology"],
    ["Internal Medicine (Critical Care Medicine)", # 207RC0200X
      "Internal Medicine -- Critical Care Medicine"],
    ["Internal Medicine (Endocrinology, Diabetes & Metabolism)", # 207RE0101X
      "Internal Medicine -- Endocrinology, Diabetes & Metabolism"],
    ["Internal Medicine (Gastroenterology)", # 207RG0100X
      "Internal Medicine -- Gastroenterology"],
    ["Internal Medicine (Geriatric Medicine)", # 207RG0300X
      "Internal Medicine -- Geriatric Medicine"],
    ["Internal Medicine (Hematology)", # 207RH0000X
      "Internal Medicine -- Hematology"],
    ["Internal Medicine (Hematology & Oncology)", # 207RH0003X
      "Internal Medicine -- Hematology & Oncology"],
    ["Internal Medicine (Hepatology)", # 207RI0008X
      "Internal Medicine -- Hepatology"],
    ["Internal Medicine (Hospice and Palliative Medicine)", # 207RH0002X
      "Internal Medicine -- Hospice and Palliative Medicine"],
    ["Internal Medicine (Hypertension Specialist)", # 207RH0005X
      "Internal Medicine -- Hypertension Specialist"],
    ["Internal Medicine (Infectious Disease)", # 207RI0200X
      "Internal Medicine -- Infectious Disease"],
    ["Internal Medicine (Interventional Cardiology)", # 207RI0011X
      "Internal Medicine -- Interventional Cardiology"],
    ["Internal Medicine (Magnetic Resonance Imaging (MRI))", # 207RM1200X
      "Internal Medicine -- Magnetic Resonance Imaging (MRI)"],
    ["Internal Medicine (Medical Oncology)", # 207RX0202X
      "Internal Medicine -- Medical Oncology"],
    ["Internal Medicine (Nephrology)", # 207RN0300X
      "Internal Medicine -- Nephrology"],
    ["Internal Medicine (Obesity Medicine)", # 207RB0002X
      "Internal Medicine -- Obesity Medicine"],
    ["Internal Medicine (Pulmonary Disease)", # 207RP1001X
      "Internal Medicine -- Pulmonary Disease"],
    ["Internal Medicine (Rheumatology)", # 207RR0500X
      "Internal Medicine -- Rheumatology"],
    ["Internal Medicine (Sleep Medicine)", # 207RS0012X
      "Internal Medicine -- Sleep Medicine"],
    ["Internal Medicine (Sports Medicine)", # 207RS0010X
      "Internal Medicine -- Sports Medicine"],
    ["Internal Medicine (Transplant Hepatology)", # 207RT0003X
      "Internal Medicine -- Transplant Hepatology"],
    ["Legal Medicine", # 209800000X
      "Legal Medicine"],
    ["Medical Genetics (Clinical Biochemical Genetics)", # 207SG0202X
      "Medical Genetics -- Clinical Biochemical Genetics"],
    ["Medical Genetics (Clinical Cytogenetic)", # 207SC0300X
      "Medical Genetics -- Clinical Cytogenetic"],
    ["Medical Genetics (Clinical Genetics (M.D.))", # 207SG0201X
      "Medical Genetics -- Clinical Genetics (M.D.)"],
    ["Medical Genetics (Clinical Molecular Genetics)", # 207SG0203X
      "Medical Genetics -- Clinical Molecular Genetics"],
    ["Medical Genetics (Molecular Genetic Pathology)", # 207SM0001X
      "Medical Genetics -- Molecular Genetic Pathology"],
    ["Medical Genetics (Ph.D. Medical Genetics)", # 207SG0205X
      "Medical Genetics -- Ph.D. Medical Genetics"],
    ["Neurological Surgery", # 207T00000X
      "Neurological Surgery"],
    ["Neuromusculoskeletal Medicine & OMM", # 204D00000X
      "Neuromusculoskeletal Medicine & OMM"],
    ["Neuromusculoskeletal Medicine, Sports Medicine", # 204C00000X
      "Neuromusculoskeletal Medicine, Sports Medicine"],
    ["Nuclear Medicine", # 207U00000X
      "Nuclear Medicine"],
    ["Nuclear Medicine (In Vivo & In Vitro Nuclear Medicine)", # 207UN0903X
      "Nuclear Medicine -- In Vivo & In Vitro Nuclear Medicine"],
    ["Nuclear Medicine (Nuclear Cardiology)", # 207UN0901X
      "Nuclear Medicine -- Nuclear Cardiology"],
    ["Nuclear Medicine (Nuclear Imaging & Therapy)", # 207UN0902X
      "Nuclear Medicine -- Nuclear Imaging & Therapy"],
    ["Obstetrics & Gynecology", # 207V00000X
      "Obstetrics & Gynecology"],
    # 207VC0300X FAILED, doesn't exist (new code)
    ["Obstetrics & Gynecology (Critical Care Medicine)", # 207VC0200X
      "Obstetrics & Gynecology -- Critical Care Medicine"],
    ["Obstetrics & Gynecology (Female Pelvic Medicine and Reconstructive Surgery)", # 207VF0040X
      "Obstetrics & Gynecology -- Female Pelvic Medicine and Reconstructive Surgery"],
    ["Obstetrics & Gynecology (Gynecologic Oncology)", # 207VX0201X
      "Obstetrics & Gynecology -- Gynecologic Oncology"],
    ["Obstetrics & Gynecology (Gynecology)", # 207VG0400X
      "Obstetrics & Gynecology -- Gynecology"],
    ["Obstetrics & Gynecology (Hospice and Palliative Medicine)", # 207VH0002X
      "Obstetrics & Gynecology -- Hospice and Palliative Medicine"],
    ["Obstetrics & Gynecology (Maternal & Fetal Medicine)", # 207VM0101X
      "Obstetrics & Gynecology -- Maternal & Fetal Medicine"],
    ["Obstetrics & Gynecology (Obesity Medicine)", # 207VB0002X
      "Obstetrics & Gynecology -- Obesity Medicine"],
    ["Obstetrics & Gynecology (Obstetrics)", # 207VX0000X
      "Obstetrics & Gynecology -- Obstetrics"],
    ["Obstetrics & Gynecology (Reproductive Endocrinology)", # 207VE0102X
      "Obstetrics & Gynecology -- Reproductive Endocrinology"],
    ["Ophthalmology", # 207W00000X
      "Ophthalmology"],
    ["Ophthalmology (Cornea and External Diseases Specialist)", # 207WX0120X
      "Ophthalmology -- Cornea and External Diseases Specialist"],
    ["Ophthalmology (Glaucoma Specialist)", # 207WX0009X
      "Ophthalmology -- Glaucoma Specialist"],
    ["Ophthalmology (Neuro-ophthalmology)", # 207WX0109X
      "Ophthalmology -- Neuro-ophthalmology"],
    ["Ophthalmology (Ophthalmic Plastic and Reconstructive Surgery)", # 207WX0200X
      "Ophthalmology -- Ophthalmic Plastic and Reconstructive Surgery"],
    ["Ophthalmology (Pediatric Ophthalmology and Strabismus Specialist)", # 207WX0110X
      "Ophthalmology -- Pediatric Ophthalmology and Strabismus Specialist"],
    ["Ophthalmology (Retina Specialist)", # 207WX0107X
      "Ophthalmology -- Retina Specialist"],
    ["Ophthalmology (Uveitis and Ocular Inflammatory Disease)", # 207WX0108X
      "Ophthalmology -- Uveitis and Ocular Inflammatory Disease"],
    ["Oral & Maxillofacial Surgery", # 204E00000X
      "Oral & Maxillofacial Surgery"],
    ["Orthopaedic Surgery", # 207X00000X
      "Orthopaedic Surgery"],
    ["Orthopaedic Surgery (Adult Reconstructive Orthopaedic Surgery)", # 207XS0114X
      "Orthopaedic Surgery -- Adult Reconstructive Orthopaedic Surgery"],
    ["Orthopaedic Surgery (Foot and Ankle Surgery)", # 207XX0004X
      "Orthopaedic Surgery -- Foot and Ankle Surgery"],
    ["Orthopaedic Surgery (Hand Surgery)", # 207XS0106X
      "Orthopaedic Surgery -- Hand Surgery"],
    ["Orthopaedic Surgery (Orthopaedic Surgery of the Spine)", # 207XS0117X
      "Orthopaedic Surgery -- Orthopaedic Surgery of the Spine"],
    ["Orthopaedic Surgery (Orthopaedic Trauma)", # 207XX0801X
      "Orthopaedic Surgery -- Orthopaedic Trauma"],
    ["Orthopaedic Surgery (Pediatric Orthopaedic Surgery)", # 207XP3100X
      "Orthopaedic Surgery -- Pediatric Orthopaedic Surgery"],
    ["Orthopaedic Surgery (Sports Medicine)", # 207XX0005X
      "Orthopaedic Surgery -- Sports Medicine"],
    ["Otolaryngology", # 207Y00000X
      "Otolaryngology"],
    ["Otolaryngology (Facial Plastic Surgery)", # 207YS0123X
      "Otolaryngology -- Facial Plastic Surgery"],
    ["Otolaryngology (Otolaryngic Allergy)", # 207YX0602X
      "Otolaryngology -- Otolaryngic Allergy"],
    ["Otolaryngology (Otolaryngology/Facial Plastic Surgery)", # 207YX0905X
      "Otolaryngology -- Otolaryngology/Facial Plastic Surgery"],
    ["Otolaryngology (Otology & Neurotology)", # 207YX0901X
      "Otolaryngology -- Otology & Neurotology"],
    ["Otolaryngology (Pediatric Otolaryngology)", # 207YP0228X
      "Otolaryngology -- Pediatric Otolaryngology"],
    ["Otolaryngology (Plastic Surgery within the Head & Neck)", # 207YX0007X
      "Otolaryngology -- Plastic Surgery within the Head & Neck"],
    ["Otolaryngology (Sleep Medicine)", # 207YS0012X
      "Otolaryngology -- Sleep Medicine"],
    ["Pain Medicine (Interventional Pain Medicine)", # 208VP0014X
      "Pain Medicine -- Interventional Pain Medicine"],
    ["Pain Medicine (Pain Medicine)", # 208VP0000X
      "Pain Medicine -- Pain Medicine"],
    ["Pathology (Anatomic Pathology)", # 207ZP0101X
      "Pathology -- Anatomic Pathology"],
    ["Pathology (Anatomic Pathology & Clinical Pathology)", # 207ZP0102X
      "Pathology -- Anatomic Pathology & Clinical Pathology"],
    ["Pathology (Blood Banking & Transfusion Medicine)", # 207ZB0001X
      "Pathology -- Blood Banking & Transfusion Medicine"],
    ["Pathology (Chemical Pathology)", # 207ZP0104X
      "Pathology -- Chemical Pathology"],
    ["Pathology (Clinical Informatics)", # 207ZC0008X
      "Pathology -- Clinical Informatics"],
    ["Pathology (Clinical Pathology)", # 207ZC0006X
      "Pathology -- Clinical Pathology"],
    ["Pathology (Clinical Pathology/Laboratory Medicine)", # 207ZP0105X
      "Pathology -- Clinical Pathology/Laboratory Medicine"],
    ["Pathology (Cytopathology)", # 207ZC0500X
      "Pathology -- Cytopathology"],
    ["Pathology (Dermatopathology)", # 207ZD0900X
      "Pathology -- Dermatopathology"],
    ["Pathology (Forensic Pathology)", # 207ZF0201X
      "Pathology -- Forensic Pathology"],
    ["Pathology (Hematology)", # 207ZH0000X
      "Pathology -- Hematology"],
    ["Pathology (Immunopathology)", # 207ZI0100X
      "Pathology -- Immunopathology"],
    ["Pathology (Medical Microbiology)", # 207ZM0300X
      "Pathology -- Medical Microbiology"],
    ["Pathology (Molecular Genetic Pathology)", # 207ZP0007X
      "Pathology -- Molecular Genetic Pathology"],
    ["Pathology (Neuropathology)", # 207ZN0500X
      "Pathology -- Neuropathology"],
    ["Pathology (Pediatric Pathology)", # 207ZP0213X
      "Pathology -- Pediatric Pathology"],
    ["Pediatrics", # 208000000X
      "Pediatrics"],
    ["Pediatrics (Adolescent Medicine)", # 2080A0000X
      "Pediatrics -- Adolescent Medicine"],
    ["Pediatrics (Child Abuse Pediatrics)", # 2080C0008X
      "Pediatrics -- Child Abuse Pediatrics"],
    ["Pediatrics (Clinical & Laboratory Immunology)", # 2080I0007X
      "Pediatrics -- Clinical & Laboratory Immunology"],
    ["Pediatrics (Developmental – Behavioral Pediatrics)", # 2080P0006X
      "Pediatrics -- Developmental – Behavioral Pediatrics"],
    ["Pediatrics (Hospice and Palliative Medicine)", # 2080H0002X
      "Pediatrics -- Hospice and Palliative Medicine"],
    ["Pediatrics (Medical Toxicology)", # 2080T0002X
      "Pediatrics -- Medical Toxicology"],
    ["Pediatrics (Neonatal-Perinatal Medicine)", # 2080N0001X
      "Pediatrics -- Neonatal-Perinatal Medicine"],
    ["Pediatrics (Neurodevelopmental Disabilities)", # 2080P0008X
      "Pediatrics -- Neurodevelopmental Disabilities"],
    ["Pediatrics (Obesity Medicine)", # 2080B0002X
      "Pediatrics -- Obesity Medicine"],
    ["Pediatrics (Pediatric Allergy/Immunology)", # 2080P0201X
      "Pediatrics -- Pediatric Allergy/Immunology"],
    ["Pediatrics (Pediatric Cardiology)", # 2080P0202X
      "Pediatrics -- Pediatric Cardiology"],
    ["Pediatrics (Pediatric Critical Care Medicine)", # 2080P0203X
      "Pediatrics -- Pediatric Critical Care Medicine"],
    ["Pediatrics (Pediatric Emergency Medicine)", # 2080P0204X
      "Pediatrics -- Pediatric Emergency Medicine"],
    ["Pediatrics (Pediatric Endocrinology)", # 2080P0205X
      "Pediatrics -- Pediatric Endocrinology"],
    ["Pediatrics (Pediatric Gastroenterology)", # 2080P0206X
      "Pediatrics -- Pediatric Gastroenterology"],
    ["Pediatrics (Pediatric Hematology-Oncology)", # 2080P0207X
      "Pediatrics -- Pediatric Hematology-Oncology"],
    ["Pediatrics (Pediatric Infectious Diseases)", # 2080P0208X
      "Pediatrics -- Pediatric Infectious Diseases"],
    ["Pediatrics (Pediatric Nephrology)", # 2080P0210X
      "Pediatrics -- Pediatric Nephrology"],
    ["Pediatrics (Pediatric Pulmonology)", # 2080P0214X
      "Pediatrics -- Pediatric Pulmonology"],
    ["Pediatrics (Pediatric Rheumatology)", # 2080P0216X
      "Pediatrics -- Pediatric Rheumatology"],
    ["Pediatrics (Pediatric Transplant Hepatology)", # 2080T0004X
      "Pediatrics -- Pediatric Transplant Hepatology"],
    ["Pediatrics (Sleep Medicine)", # 2080S0012X
      "Pediatrics -- Sleep Medicine"],
    ["Pediatrics (Sports Medicine)", # 2080S0010X
      "Pediatrics -- Sports Medicine"],
    ["Phlebology", # 202K00000X
      "Phlebology"],
    ["Physical Medicine & Rehabilitation", # 208100000X
      "Physical Medicine & Rehabilitation"],
    ["Physical Medicine & Rehabilitation (Brain Injury Medicine)", # 2081P0301X
      "Physical Medicine & Rehabilitation -- Brain Injury Medicine"],
    ["Physical Medicine & Rehabilitation (Hospice and Palliative Medicine)", # 2081H0002X
      "Physical Medicine & Rehabilitation -- Hospice and Palliative Medicine"],
    ["Physical Medicine & Rehabilitation (Neuromuscular Medicine)", # 2081N0008X
      "Physical Medicine & Rehabilitation -- Neuromuscular Medicine"],
    ["Physical Medicine & Rehabilitation (Pain Medicine)", # 2081P2900X
      "Physical Medicine & Rehabilitation -- Pain Medicine"],
    ["Physical Medicine & Rehabilitation (Pediatric Rehabilitation Medicine)", # 2081P0010X
      "Physical Medicine & Rehabilitation -- Pediatric Rehabilitation Medicine"],
    ["Physical Medicine & Rehabilitation (Spinal Cord Injury Medicine)", # 2081P0004X
      "Physical Medicine & Rehabilitation -- Spinal Cord Injury Medicine"],
    ["Physical Medicine & Rehabilitation (Sports Medicine)", # 2081S0010X
      "Physical Medicine & Rehabilitation -- Sports Medicine"],
    ["Plastic Surgery", # 208200000X
      "Plastic Surgery"],
    ["Plastic Surgery (Plastic Surgery Within the Head and Neck)", # 2082S0099X
      "Plastic Surgery -- Plastic Surgery Within the Head and Neck"],
    ["Plastic Surgery (Surgery of the Hand)", # 2082S0105X
      "Plastic Surgery -- Surgery of the Hand"],
    # 2083A0300X FAILED, fixed:
    ["Preventive Medicine (Addiction Medicine)", # 2083A0300X
      "Preventive Medicine -- Addiction Medicine"],
    ["Preventive Medicine (Aerospace Medicine)", # 2083A0100X
      "Preventive Medicine -- Aerospace Medicine"],
    ["Preventive Medicine (Clinical Informatics)", # 2083C0008X
      "Preventive Medicine -- Clinical Informatics"],
    ["Preventive Medicine (Medical Toxicology)", # 2083T0002X
      "Preventive Medicine -- Medical Toxicology"],
    ["Preventive Medicine (Obesity Medicine)", # 2083B0002X
      "Preventive Medicine -- Obesity Medicine"],
    ["Preventive Medicine (Occupational Medicine)", # 2083X0100X
      "Preventive Medicine -- Occupational Medicine"],
    ["Preventive Medicine (Preventive Medicine/Occupational Environmental Medicine)", # 2083P0500X
      "Preventive Medicine -- Preventive Medicine/Occupational Environmental Medicine"],
    ["Preventive Medicine (Public Health & General Preventive Medicine)", # 2083P0901X
      "Preventive Medicine -- Public Health & General Preventive Medicine"],
    ["Preventive Medicine (Sports Medicine)", # 2083S0010X
      "Preventive Medicine -- Sports Medicine"],
    ["Preventive Medicine (Undersea and Hyperbaric Medicine)", # 2083P0011X
      "Preventive Medicine -- Undersea and Hyperbaric Medicine"],
    ["Psychiatry & Neurology (Addiction Medicine)", # 2084A0401X
      "Psychiatry & Neurology -- Addiction Medicine"],
    ["Psychiatry & Neurology (Addiction Psychiatry)", # 2084P0802X
      "Psychiatry & Neurology -- Addiction Psychiatry"],
    ["Psychiatry & Neurology (Behavioral Neurology & Neuropsychiatry)", # 2084B0040X
      "Psychiatry & Neurology -- Behavioral Neurology & Neuropsychiatry"],
    ["Psychiatry & Neurology (Brain Injury Medicine)", # 2084P0301X
      "Psychiatry & Neurology -- Brain Injury Medicine"],
    ["Psychiatry & Neurology (Child & Adolescent Psychiatry)", # 2084P0804X
      "Psychiatry & Neurology -- Child & Adolescent Psychiatry"],
    ["Psychiatry & Neurology (Clinical Neurophysiology)", # 2084N0600X
      "Psychiatry & Neurology -- Clinical Neurophysiology"],
    ["Psychiatry & Neurology (Diagnostic Neuroimaging)", # 2084D0003X
      "Psychiatry & Neurology -- Diagnostic Neuroimaging"],
    # 2084E0001X FAILED, fixed:
    ["Psychiatry & Neurology (Epilepsy)", # 2084E0001X
      "Psychiatry & Neurology -- Epilepsy"],
    ["Psychiatry & Neurology (Forensic Psychiatry)", # 2084F0202X
      "Psychiatry & Neurology -- Forensic Psychiatry"],
    ["Psychiatry & Neurology (Geriatric Psychiatry)", # 2084P0805X
      "Psychiatry & Neurology -- Geriatric Psychiatry"],
    ["Psychiatry & Neurology (Hospice and Palliative Medicine)", # 2084H0002X
      "Psychiatry & Neurology -- Hospice and Palliative Medicine"],
    ["Psychiatry & Neurology (Neurocritical Care)", # 2084A2900X
      "Psychiatry & Neurology -- Neurocritical Care"],
    ["Psychiatry & Neurology (Neurodevelopmental Disabilities)", # 2084P0005X
      "Psychiatry & Neurology -- Neurodevelopmental Disabilities"],
    ["Psychiatry & Neurology (Neurology)", # 2084N0400X
      "Psychiatry & Neurology -- Neurology"],
    ["Psychiatry & Neurology (Neurology with Special Qualifications in Child Neurology)", # 2084N0402X
      "Psychiatry & Neurology -- Neurology with Special Qualifications in Child Neurology"],
    ["Psychiatry & Neurology (Neuromuscular Medicine)", # 2084N0008X
      "Psychiatry & Neurology -- Neuromuscular Medicine"],
    ["Psychiatry & Neurology (Obesity Medicine)", # 2084B0002X
      "Psychiatry & Neurology -- Obesity Medicine"],
    ["Psychiatry & Neurology (Pain Medicine)", # 2084P2900X
      "Psychiatry & Neurology -- Pain Medicine"],
    ["Psychiatry & Neurology (Psychiatry)", # 2084P0800X
      "Psychiatry & Neurology -- Psychiatry"],
    ["Psychiatry & Neurology (Psychosomatic Medicine)", # 2084P0015X
      "Psychiatry & Neurology -- Psychosomatic Medicine"],
    ["Psychiatry & Neurology (Sleep Medicine)", # 2084S0012X
      "Psychiatry & Neurology -- Sleep Medicine"],
    ["Psychiatry & Neurology (Sports Medicine)", # 2084S0010X
      "Psychiatry & Neurology -- Sports Medicine"],
    ["Psychiatry & Neurology (Vascular Neurology)", # 2084V0102X
      "Psychiatry & Neurology -- Vascular Neurology"],
    ["Radiology (Body Imaging)", # 2085B0100X
      "Radiology -- Body Imaging"],
    ["Radiology (Diagnostic Neuroimaging)", # 2085D0003X
      "Radiology -- Diagnostic Neuroimaging"],
    ["Radiology (Diagnostic Radiology)", # 2085R0202X
      "Radiology -- Diagnostic Radiology"],
    ["Radiology (Diagnostic Ultrasound)", # 2085U0001X
      "Radiology -- Diagnostic Ultrasound"],
    ["Radiology (Hospice and Palliative Medicine)", # 2085H0002X
      "Radiology -- Hospice and Palliative Medicine"],
    ["Radiology (Neuroradiology)", # 2085N0700X
      "Radiology -- Neuroradiology"],
    ["Radiology (Nuclear Radiology)", # 2085N0904X
      "Radiology -- Nuclear Radiology"],
    ["Radiology (Pediatric Radiology)", # 2085P0229X
      "Radiology -- Pediatric Radiology"],
    ["Radiology (Radiation Oncology)", # 2085R0001X
      "Radiology -- Radiation Oncology"],
    ["Radiology (Radiological Physics)", # 2085R0205X
      "Radiology -- Radiological Physics"],
    ["Radiology (Therapeutic Radiology)", # 2085R0203X
      "Radiology -- Therapeutic Radiology"],
    ["Radiology (Vascular & Interventional Radiology)", # 2085R0204X
      "Radiology -- Vascular & Interventional Radiology"],
    ["Surgery", # 208600000X
      "Surgery"],
    ["Surgery (Hospice and Palliative Medicine)", # 2086H0002X
      "Surgery -- Hospice and Palliative Medicine"],
    ["Surgery (Pediatric Surgery)", # 2086S0120X
      "Surgery -- Pediatric Surgery"],
    ["Surgery (Plastic and Reconstructive Surgery)", # 2086S0122X
      "Surgery -- Plastic and Reconstructive Surgery"],
    ["Surgery (Surgery of the Hand)", # 2086S0105X
      "Surgery -- Surgery of the Hand"],
    ["Surgery (Surgical Critical Care)", # 2086S0102X
      "Surgery -- Surgical Critical Care"],
    ["Surgery (Surgical Oncology)", # 2086X0206X
      "Surgery -- Surgical Oncology"],
    ["Surgery (Trauma Surgery)", # 2086S0127X
      "Surgery -- Trauma Surgery"],
    ["Surgery (Vascular Surgery)", # 2086S0129X
      "Surgery -- Vascular Surgery"],
    ["Thoracic Surgery (Cardiothoracic Vascular Surgery)", # 208G00000X
      "Thoracic Surgery (Cardiothoracic Vascular Surgery)"],
    ["Transplant Surgery", # 204F00000X
      "Transplant Surgery"],
    ["Urology", # 208800000X
      "Urology"],
    ["Urology (Female Pelvic Medicine and Reconstructive Surgery)", # 2088F0040X
      "Urology -- Female Pelvic Medicine and Reconstructive Surgery"],
    ["Urology (Pediatric Urology)", # 2088P0231X
      "Urology -- Pediatric Urology"],
    ["Assistant Behavior Analyst", # 106E00000X
      "Assistant Behavior Analyst"],
    ["Behavior Technician", # 106S00000X
      "Behavior Technician"],
    ["Behavioral Analyst", # 103K00000X
      "Behavioral Analyst"],
    ["Clinical Neuropsychologist", # 103G00000X
      "Clinical Neuropsychologist"],
    ["Clinical Neuropsychologist (Clinical)", # 103GC0700X
      "Clinical Neuropsychologist -- Clinical"],
    ["Counselor", # 101Y00000X
      "Counselor"],
    ["Counselor (Addiction (Substance Use Disorder))", # 101YA0400X
      "Counselor -- Addiction (Substance Use Disorder)"],
    ["Counselor (Mental Health)", # 101YM0800X
      "Counselor -- Mental Health"],
    ["Counselor (Pastoral)", # 101YP1600X
      "Counselor -- Pastoral"],
    ["Counselor (Professional)", # 101YP2500X
      "Counselor -- Professional"],
    ["Counselor (School)", # 101YS0200X
      "Counselor -- School"],
    # 101200000X FAILED, fixed:
    ["Drama Therapist", # 101200000X
      "Drama Therapist"],
    ["Marriage & Family Therapist", # 106H00000X
      "Marriage & Family Therapist"],
    ["Poetry Therapist", # 102X00000X
      "Poetry Therapist"],
    ["Psychoanalyst", # 102L00000X
      "Psychoanalyst"],
    ["Psychologist", # 103T00000X
      "Psychologist"],
    ["Psychologist (Addiction (Substance Use Disorder))", # 103TA0400X
      "Psychologist -- Addiction (Substance Use Disorder)"],
    ["Psychologist (Adult Development & Aging)", # 103TA0700X
      "Psychologist -- Adult Development & Aging"],
    ["Psychologist (Clinical)", # 103TC0700X
      "Psychologist -- Clinical"],
    ["Psychologist (Clinical Child & Adolescent)", # 103TC2200X
      "Psychologist -- Clinical Child & Adolescent"],
    ["Psychologist (Cognitive & Behavioral)", # 103TB0200X
      "Psychologist -- Cognitive & Behavioral"],
    ["Psychologist (Counseling)", # 103TC1900X
      "Psychologist -- Counseling"],
    ["Psychologist (Educational)", # 103TE1000X
      "Psychologist -- Educational"],
    ["Psychologist (Exercise & Sports)", # 103TE1100X
      "Psychologist -- Exercise & Sports"],
    ["Psychologist (Family)", # 103TF0000X
      "Psychologist -- Family"],
    ["Psychologist (Forensic)", # 103TF0200X
      "Psychologist -- Forensic"],
    ["Psychologist (Group Psychotherapy)", # 103TP2701X
      "Psychologist -- Group Psychotherapy"],
    ["Psychologist (Health)", # 103TH0004X
      "Psychologist -- Health"],
    ["Psychologist (Health Service)", # 103TH0100X
      "Psychologist -- Health Service"],
    ["Psychologist (Men & Masculinity)", # 103TM1700X
      "Psychologist -- Men & Masculinity"],
    ["Psychologist (Mental Retardation & Developmental Disabilities)", # 103TM1800X
      "Psychologist -- Mental Retardation & Developmental Disabilities"],
    ["Psychologist (Prescribing (Medical))", # 103TP0016X
      "Psychologist -- Prescribing (Medical)"],
    ["Psychologist (Psychoanalysis)", # 103TP0814X
      "Psychologist -- Psychoanalysis"],
    ["Psychologist (Psychotherapy)", # 103TP2700X
      "Psychologist -- Psychotherapy"],
    ["Psychologist (Rehabilitation)", # 103TR0400X
      "Psychologist -- Rehabilitation"],
    ["Psychologist (School)", # 103TS0200X
      "Psychologist -- School"],
    ["Psychologist (Women)", # 103TW0100X
      "Psychologist -- Women"],
    ["Social Worker", # 104100000X
      "Social Worker"],
    ["Social Worker (Clinical)", # 1041C0700X
      "Social Worker -- Clinical"],
    ["Social Worker (School)", # 1041S0200X
      "Social Worker -- School"],
    ["Chiropractor", # 111N00000X
      "Chiropractor"],
    ["Chiropractor (Independent Medical Examiner)", # 111NI0013X
      "Chiropractor -- Independent Medical Examiner"],
    ["Chiropractor (Internist)", # 111NI0900X
      "Chiropractor -- Internist"],
    ["Chiropractor (Neurology)", # 111NN0400X
      "Chiropractor -- Neurology"],
    ["Chiropractor (Nutrition)", # 111NN1001X
      "Chiropractor -- Nutrition"],
    ["Chiropractor (Occupational Health)", # 111NX0100X
      "Chiropractor -- Occupational Health"],
    ["Chiropractor (Orthopedic)", # 111NX0800X
      "Chiropractor -- Orthopedic"],
    ["Chiropractor (Pediatric Chiropractor)", # 111NP0017X
      "Chiropractor -- Pediatric Chiropractor"],
    ["Chiropractor (Radiology)", # 111NR0200X
      "Chiropractor -- Radiology"],
    ["Chiropractor (Rehabilitation)", # 111NR0400X
      "Chiropractor -- Rehabilitation"],
    ["Chiropractor (Sports Physician)", # 111NS0005X
      "Chiropractor -- Sports Physician"],
    ["Chiropractor (Thermography)", # 111NT0100X
      "Chiropractor -- Thermography"],
    ["Advanced Practice Dental Therapist", # 125K00000X
      "Advanced Practice Dental Therapist"],
    ["Dental Assistant", # 126800000X
      "Dental Assistant"],
    ["Dental Hygienist", # 124Q00000X
      "Dental Hygienist"],
    ["Dental Laboratory Technician", # 126900000X
      "Dental Laboratory Technician"],
    ["Dental Therapist", # 125J00000X
      "Dental Therapist"],
    ["Dentist", # 122300000X
      "Dentist"],
    ["Dentist (Dental Public Health)", # 1223D0001X
      "Dentist -- Dental Public Health"],
    ["Dentist (Dentist Anesthesiologist)", # 1223D0004X
      "Dentist -- Dentist Anesthesiologist"],
    ["Dentist (Endodontics)", # 1223E0200X
      "Dentist -- Endodontics"],
    ["Dentist (General Practice)", # 1223G0001X
      "Dentist -- General Practice"],
    ["Dentist (Oral and Maxillofacial Pathology)", # 1223P0106X
      "Dentist -- Oral and Maxillofacial Pathology"],
    ["Dentist (Oral and Maxillofacial Radiology)", # 1223X0008X
      "Dentist -- Oral and Maxillofacial Radiology"],
    ["Dentist (Oral and Maxillofacial Surgery)", # 1223S0112X
      "Dentist -- Oral and Maxillofacial Surgery"],
    # 1223X2210X FAILED, fixed:
    ["Dentist (Orofacial Pain)", # 1223X2210X
      "Dentist -- Orofacial Pain"],
    ["Dentist (Orthodontics and Dentofacial Orthopedics)", # 1223X0400X
      "Dentist -- Orthodontics and Dentofacial Orthopedics"],
    ["Dentist (Pediatric Dentistry)", # 1223P0221X
      "Dentist -- Pediatric Dentistry"],
    ["Dentist (Periodontics)", # 1223P0300X
      "Dentist -- Periodontics"],
    ["Dentist (Prosthodontics)", # 1223P0700X
      "Dentist -- Prosthodontics"],
    ["Denturist", # 122400000X
      "Denturist"],
    ["Oral Medicinist", # 125Q00000X
      "Oral Medicinist"],
    ["Dietary Manager", # 132700000X
      "Dietary Manager"],
    ["Dietetic Technician, Registered", # 136A00000X
      "Dietetic Technician, Registered"],
    ["Dietitian, Registered", # 133V00000X
      "Dietitian, Registered"],
    # 133VN1101X FAILED, fixed:
    ["Dietitian, Registered (Nutrition, Gerontological)", # 133VN1101X
      "Dietitian, Registered -- Nutrition, Gerontological"],
    ["Dietitian, Registered (Nutrition, Metabolic)", # 133VN1006X
      "Dietitian, Registered -- Nutrition, Metabolic"],
    # 133VN1201X FAILED, fixed:
    ["Dietitian, Registered (Nutrition, Obesity and Weight Management)", # 133VN1201X
      "Dietitian, Registered -- Nutrition, Obesity and Weight Management"],
    # 133VN1301X FAILED, fixed:
    ["Dietitian, Registered (Nutrition, Oncology)", # 133VN1301X
      "Dietitian, Registered -- Nutrition, Oncology"],
    ["Dietitian, Registered (Nutrition, Pediatric)", # 133VN1004X
      "Dietitian, Registered -- Nutrition, Pediatric"],
    # 133VN1401X FAILED, fixed:
    ["Dietitian, Registered (Nutrition, Pediatric Critical Care)", # 133VN1401X
      "Dietitian, Registered -- Nutrition, Pediatric Critical Care"],
    ["Dietitian, Registered (Nutrition, Renal)", # 133VN1005X
      "Dietitian, Registered -- Nutrition, Renal"],
    # 133VN1501X FAILED, fixed:
    ["Dietitian, Registered (Nutrition, Sports Dietetics)", # 133VN1501X
      "Dietitian, Registered -- Nutrition, Sports Dietetics"],
    ["Nutritionist", # 133N00000X
      "Nutritionist"],
    ["Nutritionist (Nutrition, Education)", # 133NN1002X
      "Nutritionist -- Nutrition, Education"],
    ["Emergency Medical Technician, Basic", # 146N00000X
      "Emergency Medical Technician, Basic"],
    ["Emergency Medical Technician, Intermediate", # 146M00000X
      "Emergency Medical Technician, Intermediate"],
    ["Emergency Medical Technician, Paramedic", # 146L00000X
      "Emergency Medical Technician, Paramedic"],
    ["Personal Emergency Response Attendant", # 146D00000X
      "Personal Emergency Response Attendant"],
    ["Optometrist", # 152W00000X
      "Optometrist"],
    ["Optometrist (Corneal and Contact Management)", # 152WC0802X
      "Optometrist -- Corneal and Contact Management"],
    ["Optometrist (Low Vision Rehabilitation)", # 152WL0500X
      "Optometrist -- Low Vision Rehabilitation"],
    ["Optometrist (Occupational Vision)", # 152WX0102X
      "Optometrist -- Occupational Vision"],
    ["Optometrist (Pediatrics)", # 152WP0200X
      "Optometrist -- Pediatrics"],
    ["Optometrist (Sports Vision)", # 152WS0006X
      "Optometrist -- Sports Vision"],
    ["Optometrist (Vision Therapy)", # 152WV0400X
      "Optometrist -- Vision Therapy"],
    ["Technician/Technologist", # 156F00000X
      "Technician/Technologist"],
    ["Technician/Technologist (Contact Lens)", # 156FC0800X
      "Technician/Technologist -- Contact Lens"],
    ["Technician/Technologist (Contact Lens Fitter)", # 156FC0801X
      "Technician/Technologist -- Contact Lens Fitter"],
    ["Technician/Technologist (Ocularist)", # 156FX1700X
      "Technician/Technologist -- Ocularist"],
    ["Technician/Technologist (Ophthalmic)", # 156FX1100X
      "Technician/Technologist -- Ophthalmic"],
    ["Technician/Technologist (Ophthalmic Assistant)", # 156FX1101X
      "Technician/Technologist -- Ophthalmic Assistant"],
    ["Technician/Technologist (Optician)", # 156FX1800X
      "Technician/Technologist -- Optician"],
    ["Technician/Technologist (Optometric Assistant)", # 156FX1201X
      "Technician/Technologist -- Optometric Assistant"],
    ["Technician/Technologist (Optometric Technician)", # 156FX1202X
      "Technician/Technologist -- Optometric Technician"],
    ["Technician/Technologist (Orthoptist)", # 156FX1900X
      "Technician/Technologist -- Orthoptist"],
    ["Licensed Practical Nurse", # 164W00000X
      "Licensed Practical Nurse"],
    ["Licensed Psychiatric Technician", # 167G00000X
      "Licensed Psychiatric Technician"],
    ["Licensed Vocational Nurse", # 164X00000X
      "Licensed Vocational Nurse"],
    ["Registered Nurse", # 163W00000X
      "Registered Nurse"],
    ["Registered Nurse (Addiction (Substance Use Disorder))", # 163WA0400X
      "Registered Nurse -- Addiction (Substance Use Disorder)"],
    ["Registered Nurse (Administrator)", # 163WA2000X
      "Registered Nurse -- Administrator"],
    ["Registered Nurse (Ambulatory Care)", # 163WP2201X
      "Registered Nurse -- Ambulatory Care"],
    ["Registered Nurse (Cardiac Rehabilitation)", # 163WC3500X
      "Registered Nurse -- Cardiac Rehabilitation"],
    ["Registered Nurse (Case Management)", # 163WC0400X
      "Registered Nurse -- Case Management"],
    ["Registered Nurse (College Health)", # 163WC1400X
      "Registered Nurse -- College Health"],
    ["Registered Nurse (Community Health)", # 163WC1500X
      "Registered Nurse -- Community Health"],
    ["Registered Nurse (Continence Care)", # 163WC2100X
      "Registered Nurse -- Continence Care"],
    ["Registered Nurse (Continuing Education/Staff Development)", # 163WC1600X
      "Registered Nurse -- Continuing Education/Staff Development"],
    ["Registered Nurse (Critical Care Medicine)", # 163WC0200X
      "Registered Nurse -- Critical Care Medicine"],
    ["Registered Nurse (Diabetes Educator)", # 163WD0400X
      "Registered Nurse -- Diabetes Educator"],
    ["Registered Nurse (Dialysis, Peritoneal)", # 163WD1100X
      "Registered Nurse -- Dialysis, Peritoneal"],
    ["Registered Nurse (Emergency)", # 163WE0003X
      "Registered Nurse -- Emergency"],
    ["Registered Nurse (Enterostomal Therapy)", # 163WE0900X
      "Registered Nurse -- Enterostomal Therapy"],
    ["Registered Nurse (Flight)", # 163WF0300X
      "Registered Nurse -- Flight"],
    ["Registered Nurse (Gastroenterology)", # 163WG0100X
      "Registered Nurse -- Gastroenterology"],
    ["Registered Nurse (General Practice)", # 163WG0000X
      "Registered Nurse -- General Practice"],
    ["Registered Nurse (Gerontology)", # 163WG0600X
      "Registered Nurse -- Gerontology"],
    ["Registered Nurse (Hemodialysis)", # 163WH0500X
      "Registered Nurse -- Hemodialysis"],
    ["Registered Nurse (Home Health)", # 163WH0200X
      "Registered Nurse -- Home Health"],
    ["Registered Nurse (Hospice)", # 163WH1000X
      "Registered Nurse -- Hospice"],
    ["Registered Nurse (Infection Control)", # 163WI0600X
      "Registered Nurse -- Infection Control"],
    ["Registered Nurse (Infusion Therapy)", # 163WI0500X
      "Registered Nurse -- Infusion Therapy"],
    ["Registered Nurse (Lactation Consultant)", # 163WL0100X
      "Registered Nurse -- Lactation Consultant"],
    ["Registered Nurse (Maternal Newborn)", # 163WM0102X
      "Registered Nurse -- Maternal Newborn"],
    ["Registered Nurse (Medical-Surgical)", # 163WM0705X
      "Registered Nurse -- Medical-Surgical"],
    ["Registered Nurse (Neonatal Intensive Care)", # 163WN0002X
      "Registered Nurse -- Neonatal Intensive Care"],
    ["Registered Nurse (Neonatal, Low-Risk)", # 163WN0003X
      "Registered Nurse -- Neonatal, Low-Risk"],
    ["Registered Nurse (Nephrology)", # 163WN0300X
      "Registered Nurse -- Nephrology"],
    ["Registered Nurse (Neuroscience)", # 163WN0800X
      "Registered Nurse -- Neuroscience"],
    ["Registered Nurse (Nurse Massage Therapist (NMT))", # 163WM1400X
      "Registered Nurse -- Nurse Massage Therapist (NMT)"],
    ["Registered Nurse (Nutrition Support)", # 163WN1003X
      "Registered Nurse -- Nutrition Support"],
    ["Registered Nurse (Obstetric, High-Risk)", # 163WX0002X
      "Registered Nurse -- Obstetric, High-Risk"],
    ["Registered Nurse (Obstetric, Inpatient)", # 163WX0003X
      "Registered Nurse -- Obstetric, Inpatient"],
    ["Registered Nurse (Occupational Health)", # 163WX0106X
      "Registered Nurse -- Occupational Health"],
    ["Registered Nurse (Oncology)", # 163WX0200X
      "Registered Nurse -- Oncology"],
    ["Registered Nurse (Ophthalmic)", # 163WX1100X
      "Registered Nurse -- Ophthalmic"],
    ["Registered Nurse (Orthopedic)", # 163WX0800X
      "Registered Nurse -- Orthopedic"],
    ["Registered Nurse (Ostomy Care)", # 163WX1500X
      "Registered Nurse -- Ostomy Care"],
    ["Registered Nurse (Otorhinolaryngology & Head-Neck)", # 163WX0601X
      "Registered Nurse -- Otorhinolaryngology & Head-Neck"],
    ["Registered Nurse (Pain Management)", # 163WP0000X
      "Registered Nurse -- Pain Management"],
    ["Registered Nurse (Pediatric Oncology)", # 163WP0218X
      "Registered Nurse -- Pediatric Oncology"],
    ["Registered Nurse (Pediatrics)", # 163WP0200X
      "Registered Nurse -- Pediatrics"],
    ["Registered Nurse (Perinatal)", # 163WP1700X
      "Registered Nurse -- Perinatal"],
    ["Registered Nurse (Plastic Surgery)", # 163WS0121X
      "Registered Nurse -- Plastic Surgery"],
    ["Registered Nurse (Psych/Mental Health)", # 163WP0808X
      "Registered Nurse -- Psych/Mental Health"],
    ["Registered Nurse (Psych/Mental Health, Adult)", # 163WP0809X
      "Registered Nurse -- Psych/Mental Health, Adult"],
    ["Registered Nurse (Psych/Mental Health, Child & Adolescent)", # 163WP0807X
      "Registered Nurse -- Psych/Mental Health, Child & Adolescent"],
    ["Registered Nurse (Registered Nurse First Assistant)", # 163WR0006X
      "Registered Nurse -- Registered Nurse First Assistant"],
    ["Registered Nurse (Rehabilitation)", # 163WR0400X
      "Registered Nurse -- Rehabilitation"],
    ["Registered Nurse (Reproductive Endocrinology/Infertility)", # 163WR1000X
      "Registered Nurse -- Reproductive Endocrinology/Infertility"],
    ["Registered Nurse (School)", # 163WS0200X
      "Registered Nurse -- School"],
    ["Registered Nurse (Urology)", # 163WU0100X
      "Registered Nurse -- Urology"],
    ["Registered Nurse (Women's Health Care, Ambulatory)", # 163WW0101X
      "Registered Nurse -- Women's Health Care, Ambulatory"],
    ["Registered Nurse (Wound Care)", # 163WW0000X
      "Registered Nurse -- Wound Care"],
    ["Adult Companion", # 372600000X
      "Adult Companion"],
    ["Chore Provider", # 372500000X
      "Chore Provider"],
    ["Day Training/Habilitation Specialist", # 373H00000X
      "Day Training/Habilitation Specialist"],
    ["Doula", # 374J00000X
      "Doula"],
    ["Home Health Aide", # 374U00000X
      "Home Health Aide"],
    ["Homemaker", # 376J00000X
      "Homemaker"],
    ["Nurse's Aide", # 376K00000X
      "Nurse's Aide"],
    ["Nursing Home Administrator", # 376G00000X
      "Nursing Home Administrator"],
    ["Religious Nonmedical Nursing Personnel", # 374T00000X
      "Religious Nonmedical Nursing Personnel"],
    ["Religious Nonmedical Practitioner", # 374K00000X
      "Religious Nonmedical Practitioner"],
    ["Technician", # 374700000X
      "Technician"],
    ["Technician (Attendant Care Provider)", # 3747A0650X
      "Technician -- Attendant Care Provider"],
    ["Technician (Personal Care Attendant)", # 3747P1801X
      "Technician -- Personal Care Attendant"],
    ["Acupuncturist", # 171100000X
      "Acupuncturist"],
    ["Case Manager/Care Coordinator", # 171M00000X
      "Case Manager/Care Coordinator"],
    ["Clinical Ethicist", # 174V00000X
      "Clinical Ethicist"],
    ["Community Health Worker", # 172V00000X
      "Community Health Worker"],
    ["Contractor", # 171W00000X
      "Contractor"],
    ["Contractor (Home Modifications)", # 171WH0202X
      "Contractor -- Home Modifications"],
    ["Contractor (Vehicle Modifications)", # 171WV0202X
      "Contractor -- Vehicle Modifications"],
    ["Driver", # 172A00000X
      "Driver"],
    ["Funeral Director", # 176P00000X
      "Funeral Director"],
    ["Genetic Counselor, MS", # 170300000X
      "Genetic Counselor, MS"],
    # 171400000X FAILED, fixed:
    ["Health & Wellness Coach", # 171400000X
      "Health & Wellness Coach"],
    ["Health Educator", # 174H00000X
      "Health Educator"],
    ["Homeopath", # 175L00000X
      "Homeopath"],
    ["Interpreter", # 171R00000X
      "Interpreter"],
    ["Lactation Consultant, Non-RN", # 174N00000X
      "Lactation Consultant, Non-RN"],
    ["Midwife, Lay", # 175M00000X
      "Midwife, Lay"],
    ["Legal Medicine", # 173000000X
      "Legal Medicine"],
    ["Mechanotherapist", # 172M00000X
      "Mechanotherapist"],
    ["Midwife", # 176B00000X
      "Midwife"],
    ["Military Health Care Provider", # 171000000X
      "Military Health Care Provider"],
    ["Military Health Care Provider (Independent Duty Corpsman)", # 1710I1002X
      "Military Health Care Provider -- Independent Duty Corpsman"],
    ["Military Health Care Provider (Independent Duty Medical Technicians)", # 1710I1003X
      "Military Health Care Provider -- Independent Duty Medical Technicians"],
    ["Naprapath", # 172P00000X
      "Naprapath"],
    ["Naturopath", # 175F00000X
      "Naturopath"],
    ["Peer Specialist", # 175T00000X
      "Peer Specialist"],
    ["Medical Genetics, Ph.D. Medical Genetics", # 170100000X
      "Medical Genetics, Ph.D. Medical Genetics"],
    ["Prevention Professional", # 405300000X
      "Prevention Professional"],
    ["Reflexologist", # 173C00000X
      "Reflexologist"],
    ["Sleep Specialist, PhD", # 173F00000X
      "Sleep Specialist, PhD"],
    ["Specialist", # 174400000X
      "Specialist"],
    ["Specialist (Graphics Designer)", # 1744G0900X
      "Specialist -- Graphics Designer"],
    ["Specialist (Prosthetics Case Management)", # 1744P3200X
      "Specialist -- Prosthetics Case Management"],
    ["Specialist (Research Data Abstracter/Coder)", # 1744R1103X
      "Specialist -- Research Data Abstracter/Coder"],
    ["Specialist (Research Study)", # 1744R1102X
      "Specialist -- Research Study"],
    ["Veterinarian", # 174M00000X
      "Veterinarian"],
    ["Veterinarian (Medical Research)", # 174MM1900X
      "Veterinarian -- Medical Research"],
    ["Pharmacist", # 183500000X
      "Pharmacist"],
    ["Pharmacist (Ambulatory Care)", # 1835P2201X
      "Pharmacist -- Ambulatory Care"],
    ["Pharmacist (Critical Care)", # 1835C0205X
      "Pharmacist -- Critical Care"],
    ["Pharmacist (General Practice)", # 1835G0000X
      "Pharmacist -- General Practice"],
    ["Pharmacist (Geriatric)", # 1835G0303X
      "Pharmacist -- Geriatric"],
    ["Pharmacist (Nuclear)", # 1835N0905X
      "Pharmacist -- Nuclear"],
    ["Pharmacist (Nutrition Support)", # 1835N1003X
      "Pharmacist -- Nutrition Support"],
    ["Pharmacist (Oncology)", # 1835X0200X
      "Pharmacist -- Oncology"],
    ["Pharmacist (Pediatrics)", # 1835P0200X
      "Pharmacist -- Pediatrics"],
    ["Pharmacist (Pharmacist Clinician (PhC)/ Clinical Pharmacy Specialist)", # 1835P0018X
      "Pharmacist -- Pharmacist Clinician (PhC)/ Clinical Pharmacy Specialist"],
    ["Pharmacist (Pharmacotherapy)", # 1835P1200X
      "Pharmacist -- Pharmacotherapy"],
    ["Pharmacist (Psychiatric)", # 1835P1300X
      "Pharmacist -- Psychiatric"],
    ["Pharmacy Technician", # 183700000X
      "Pharmacy Technician"],
    ["Advanced Practice Midwife", # 367A00000X
      "Advanced Practice Midwife"],
    ["Anesthesiologist Assistant", # 367H00000X
      "Anesthesiologist Assistant"],
    ["Clinical Nurse Specialist", # 364S00000X
      "Clinical Nurse Specialist"],
    ["Clinical Nurse Specialist (Acute Care)", # 364SA2100X
      "Clinical Nurse Specialist -- Acute Care"],
    ["Clinical Nurse Specialist (Adult Health)", # 364SA2200X
      "Clinical Nurse Specialist -- Adult Health"],
    ["Clinical Nurse Specialist (Chronic Care)", # 364SC2300X
      "Clinical Nurse Specialist -- Chronic Care"],
    ["Clinical Nurse Specialist (Community Health/Public Health)", # 364SC1501X
      "Clinical Nurse Specialist -- Community Health/Public Health"],
    ["Clinical Nurse Specialist (Critical Care Medicine)", # 364SC0200X
      "Clinical Nurse Specialist -- Critical Care Medicine"],
    ["Clinical Nurse Specialist (Emergency)", # 364SE0003X
      "Clinical Nurse Specialist -- Emergency"],
    ["Clinical Nurse Specialist (Ethics)", # 364SE1400X
      "Clinical Nurse Specialist -- Ethics"],
    ["Clinical Nurse Specialist (Family Health)", # 364SF0001X
      "Clinical Nurse Specialist -- Family Health"],
    ["Clinical Nurse Specialist (Gerontology)", # 364SG0600X
      "Clinical Nurse Specialist -- Gerontology"],
    ["Clinical Nurse Specialist (Holistic)", # 364SH1100X
      "Clinical Nurse Specialist -- Holistic"],
    ["Clinical Nurse Specialist (Home Health)", # 364SH0200X
      "Clinical Nurse Specialist -- Home Health"],
    ["Clinical Nurse Specialist (Informatics)", # 364SI0800X
      "Clinical Nurse Specialist -- Informatics"],
    ["Clinical Nurse Specialist (Long-Term Care)", # 364SL0600X
      "Clinical Nurse Specialist -- Long-Term Care"],
    ["Clinical Nurse Specialist (Medical-Surgical)", # 364SM0705X
      "Clinical Nurse Specialist -- Medical-Surgical"],
    ["Clinical Nurse Specialist (Neonatal)", # 364SN0000X
      "Clinical Nurse Specialist -- Neonatal"],
    ["Clinical Nurse Specialist (Neuroscience)", # 364SN0800X
      "Clinical Nurse Specialist -- Neuroscience"],
    ["Clinical Nurse Specialist (Occupational Health)", # 364SX0106X
      "Clinical Nurse Specialist -- Occupational Health"],
    ["Clinical Nurse Specialist (Oncology)", # 364SX0200X
      "Clinical Nurse Specialist -- Oncology"],
    ["Clinical Nurse Specialist (Oncology, Pediatrics)", # 364SX0204X
      "Clinical Nurse Specialist -- Oncology, Pediatrics"],
    ["Clinical Nurse Specialist (Pediatrics)", # 364SP0200X
      "Clinical Nurse Specialist -- Pediatrics"],
    ["Clinical Nurse Specialist (Perinatal)", # 364SP1700X
      "Clinical Nurse Specialist -- Perinatal"],
    ["Clinical Nurse Specialist (Perioperative)", # 364SP2800X
      "Clinical Nurse Specialist -- Perioperative"],
    ["Clinical Nurse Specialist (Psych/Mental Health)", # 364SP0808X
      "Clinical Nurse Specialist -- Psych/Mental Health"],
    ["Clinical Nurse Specialist (Psych/Mental Health, Adult)", # 364SP0809X
      "Clinical Nurse Specialist -- Psych/Mental Health, Adult"],
    ["Clinical Nurse Specialist (Psych/Mental Health, Child & Adolescent)", # 364SP0807X
      "Clinical Nurse Specialist -- Psych/Mental Health, Child & Adolescent"],
    ["Clinical Nurse Specialist (Psych/Mental Health, Child & Family)", # 364SP0810X
      "Clinical Nurse Specialist -- Psych/Mental Health, Child & Family"],
    ["Clinical Nurse Specialist (Psych/Mental Health, Chronically Ill)", # 364SP0811X
      "Clinical Nurse Specialist -- Psych/Mental Health, Chronically Ill"],
    ["Clinical Nurse Specialist (Psych/Mental Health, Community)", # 364SP0812X
      "Clinical Nurse Specialist -- Psych/Mental Health, Community"],
    ["Clinical Nurse Specialist (Psych/Mental Health, Geropsychiatric)", # 364SP0813X
      "Clinical Nurse Specialist -- Psych/Mental Health, Geropsychiatric"],
    ["Clinical Nurse Specialist (Rehabilitation)", # 364SR0400X
      "Clinical Nurse Specialist -- Rehabilitation"],
    ["Clinical Nurse Specialist (School)", # 364SS0200X
      "Clinical Nurse Specialist -- School"],
    ["Clinical Nurse Specialist (Transplantation)", # 364ST0500X
      "Clinical Nurse Specialist -- Transplantation"],
    ["Clinical Nurse Specialist (Women's Health)", # 364SW0102X
      "Clinical Nurse Specialist -- Women's Health"],
    ["Nurse Anesthetist, Certified Registered", # 367500000X
      "Nurse Anesthetist, Certified Registered"],
    ["Nurse Practitioner", # 363L00000X
      "Nurse Practitioner"],
    ["Nurse Practitioner (Acute Care)", # 363LA2100X
      "Nurse Practitioner -- Acute Care"],
    ["Nurse Practitioner (Adult Health)", # 363LA2200X
      "Nurse Practitioner -- Adult Health"],
    ["Nurse Practitioner (Community Health)", # 363LC1500X
      "Nurse Practitioner -- Community Health"],
    ["Nurse Practitioner (Critical Care Medicine)", # 363LC0200X
      "Nurse Practitioner -- Critical Care Medicine"],
    ["Nurse Practitioner (Family)", # 363LF0000X
      "Nurse Practitioner -- Family"],
    ["Nurse Practitioner (Gerontology)", # 363LG0600X
      "Nurse Practitioner -- Gerontology"],
    ["Nurse Practitioner (Neonatal)", # 363LN0000X
      "Nurse Practitioner -- Neonatal"],
    ["Nurse Practitioner (Neonatal, Critical Care)", # 363LN0005X
      "Nurse Practitioner -- Neonatal, Critical Care"],
    ["Nurse Practitioner (Obstetrics & Gynecology)", # 363LX0001X
      "Nurse Practitioner -- Obstetrics & Gynecology"],
    ["Nurse Practitioner (Occupational Health)", # 363LX0106X
      "Nurse Practitioner -- Occupational Health"],
    ["Nurse Practitioner (Pediatrics)", # 363LP0200X
      "Nurse Practitioner -- Pediatrics"],
    ["Nurse Practitioner (Pediatrics, Critical Care)", # 363LP0222X
      "Nurse Practitioner -- Pediatrics, Critical Care"],
    ["Nurse Practitioner (Perinatal)", # 363LP1700X
      "Nurse Practitioner -- Perinatal"],
    ["Nurse Practitioner (Primary Care)", # 363LP2300X
      "Nurse Practitioner -- Primary Care"],
    ["Nurse Practitioner (Psych/Mental Health)", # 363LP0808X
      "Nurse Practitioner -- Psych/Mental Health"],
    ["Nurse Practitioner (School)", # 363LS0200X
      "Nurse Practitioner -- School"],
    ["Nurse Practitioner (Women's Health)", # 363LW0102X
      "Nurse Practitioner -- Women's Health"],
    ["Physician Assistant", # 363A00000X
      "Physician Assistant"],
    ["Physician Assistant (Medical)", # 363AM0700X
      "Physician Assistant -- Medical"],
    ["Physician Assistant (Surgical Technologist)", # 363AS0400X
      "Physician Assistant -- Surgical Technologist"],
    ["Assistant, Podiatric", # 211D00000X
      "Assistant, Podiatric"],
    ["Podiatrist", # 213E00000X
      "Podiatrist"],
    ["Podiatrist (Foot & Ankle Surgery)", # 213ES0103X
      "Podiatrist -- Foot & Ankle Surgery"],
    ["Podiatrist (Foot Surgery)", # 213ES0131X
      "Podiatrist -- Foot Surgery"],
    ["Podiatrist (General Practice)", # 213EG0000X
      "Podiatrist -- General Practice"],
    ["Podiatrist (Primary Podiatric Medicine)", # 213EP1101X
      "Podiatrist -- Primary Podiatric Medicine"],
    ["Podiatrist (Public Medicine)", # 213EP0504X
      "Podiatrist -- Public Medicine"],
    ["Podiatrist (Radiology)", # 213ER0200X
      "Podiatrist -- Radiology"],
    ["Podiatrist (Sports Medicine)", # 213ES0000X
      "Podiatrist -- Sports Medicine"],
    ["Anaplastologist", # 229N00000X
      "Anaplastologist"],
    ["Art Therapist", # 221700000X
      "Art Therapist"],
    ["Clinical Exercise Physiologist", # 224Y00000X
      "Clinical Exercise Physiologist"],
    ["Dance Therapist", # 225600000X
      "Dance Therapist"],
    ["Developmental Therapist", # 222Q00000X
      "Developmental Therapist"],
    ["Kinesiotherapist", # 226300000X
      "Kinesiotherapist"],
    ["Massage Therapist", # 225700000X
      "Massage Therapist"],
    ["Mastectomy Fitter", # 224900000X
      "Mastectomy Fitter"],
    ["Music Therapist", # 225A00000X
      "Music Therapist"],
    ["Occupational Therapist", # 225X00000X
      "Occupational Therapist"],
    ["Occupational Therapist (Driving and Community Mobility)", # 225XR0403X
      "Occupational Therapist -- Driving and Community Mobility"],
    ["Occupational Therapist (Environmental Modification)", # 225XE0001X
      "Occupational Therapist -- Environmental Modification"],
    ["Occupational Therapist (Ergonomics)", # 225XE1200X
      "Occupational Therapist -- Ergonomics"],
    ["Occupational Therapist (Feeding, Eating & Swallowing)", # 225XF0002X
      "Occupational Therapist -- Feeding, Eating & Swallowing"],
    ["Occupational Therapist (Gerontology)", # 225XG0600X
      "Occupational Therapist -- Gerontology"],
    ["Occupational Therapist (Hand)", # 225XH1200X
      "Occupational Therapist -- Hand"],
    ["Occupational Therapist (Human Factors)", # 225XH1300X
      "Occupational Therapist -- Human Factors"],
    ["Occupational Therapist (Low Vision)", # 225XL0004X
      "Occupational Therapist -- Low Vision"],
    ["Occupational Therapist (Mental Health)", # 225XM0800X
      "Occupational Therapist -- Mental Health"],
    ["Occupational Therapist (Neurorehabilitation)", # 225XN1300X
      "Occupational Therapist -- Neurorehabilitation"],
    ["Occupational Therapist (Pediatrics)", # 225XP0200X
      "Occupational Therapist -- Pediatrics"],
    ["Occupational Therapist (Physical Rehabilitation)", # 225XP0019X
      "Occupational Therapist -- Physical Rehabilitation"],
    ["Occupational Therapy Assistant", # 224Z00000X
      "Occupational Therapy Assistant"],
    ["Occupational Therapy Assistant (Driving and Community Mobility)", # 224ZR0403X
      "Occupational Therapy Assistant -- Driving and Community Mobility"],
    ["Occupational Therapy Assistant (Environmental Modification)", # 224ZE0001X
      "Occupational Therapy Assistant -- Environmental Modification"],
    ["Occupational Therapy Assistant (Feeding, Eating & Swallowing)", # 224ZF0002X
      "Occupational Therapy Assistant -- Feeding, Eating & Swallowing"],
    ["Occupational Therapy Assistant (Low Vision)", # 224ZL0004X
      "Occupational Therapy Assistant -- Low Vision"],
    ["Orthotic Fitter", # 225000000X
      "Orthotic Fitter"],
    ["Orthotist", # 222Z00000X
      "Orthotist"],
    ["Pedorthist", # 224L00000X
      "Pedorthist"],
    ["Physical Therapist", # 225100000X
      "Physical Therapist"],
    ["Physical Therapist (Cardiopulmonary)", # 2251C2600X
      "Physical Therapist -- Cardiopulmonary"],
    ["Physical Therapist (Electrophysiology, Clinical)", # 2251E1300X
      "Physical Therapist -- Electrophysiology, Clinical"],
    ["Physical Therapist (Ergonomics)", # 2251E1200X
      "Physical Therapist -- Ergonomics"],
    ["Physical Therapist (Geriatrics)", # 2251G0304X
      "Physical Therapist -- Geriatrics"],
    ["Physical Therapist (Hand)", # 2251H1200X
      "Physical Therapist -- Hand"],
    ["Physical Therapist (Human Factors)", # 2251H1300X
      "Physical Therapist -- Human Factors"],
    ["Physical Therapist (Neurology)", # 2251N0400X
      "Physical Therapist -- Neurology"],
    ["Physical Therapist (Orthopedic)", # 2251X0800X
      "Physical Therapist -- Orthopedic"],
    ["Physical Therapist (Pediatrics)", # 2251P0200X
      "Physical Therapist -- Pediatrics"],
    ["Physical Therapist (Sports)", # 2251S0007X
      "Physical Therapist -- Sports"],
    ["Physical Therapy Assistant", # 225200000X
      "Physical Therapy Assistant"],
    ["Prosthetist", # 224P00000X
      "Prosthetist"],
    ["Pulmonary Function Technologist", # 225B00000X
      "Pulmonary Function Technologist"],
    ["Recreation Therapist", # 225800000X
      "Recreation Therapist"],
    ["Recreational Therapist Assistant", # 226000000X
      "Recreational Therapist Assistant"],
    ["Rehabilitation Counselor", # 225C00000X
      "Rehabilitation Counselor"],
    ["Rehabilitation Counselor (Assistive Technology Practitioner)", # 225CA2400X
      "Rehabilitation Counselor -- Assistive Technology Practitioner"],
    ["Rehabilitation Counselor (Assistive Technology Supplier)", # 225CA2500X
      "Rehabilitation Counselor -- Assistive Technology Supplier"],
    ["Rehabilitation Counselor (Orientation and Mobility Training Provider)", # 225CX0006X
      "Rehabilitation Counselor -- Orientation and Mobility Training Provider"],
    ["Rehabilitation Practitioner", # 225400000X
      "Rehabilitation Practitioner"],
    ["Respiratory Therapist, Certified", # 227800000X
      "Respiratory Therapist, Certified"],
    ["Respiratory Therapist, Certified (Critical Care)", # 2278C0205X
      "Respiratory Therapist, Certified -- Critical Care"],
    ["Respiratory Therapist, Certified (Educational)", # 2278E1000X
      "Respiratory Therapist, Certified -- Educational"],
    ["Respiratory Therapist, Certified (Emergency Care)", # 2278E0002X
      "Respiratory Therapist, Certified -- Emergency Care"],
    ["Respiratory Therapist, Certified (General Care)", # 2278G1100X
      "Respiratory Therapist, Certified -- General Care"],
    ["Respiratory Therapist, Certified (Geriatric Care)", # 2278G0305X
      "Respiratory Therapist, Certified -- Geriatric Care"],
    ["Respiratory Therapist, Certified (Home Health)", # 2278H0200X
      "Respiratory Therapist, Certified -- Home Health"],
    ["Respiratory Therapist, Certified (Neonatal/Pediatrics)", # 2278P3900X
      "Respiratory Therapist, Certified -- Neonatal/Pediatrics"],
    ["Respiratory Therapist, Certified (Palliative/Hospice)", # 2278P3800X
      "Respiratory Therapist, Certified -- Palliative/Hospice"],
    ["Respiratory Therapist, Certified (Patient Transport)", # 2278P4000X
      "Respiratory Therapist, Certified -- Patient Transport"],
    ["Respiratory Therapist, Certified (Pulmonary Diagnostics)", # 2278P1004X
      "Respiratory Therapist, Certified -- Pulmonary Diagnostics"],
    ["Respiratory Therapist, Certified (Pulmonary Function Technologist)", # 2278P1006X
      "Respiratory Therapist, Certified -- Pulmonary Function Technologist"],
    ["Respiratory Therapist, Certified (Pulmonary Rehabilitation)", # 2278P1005X
      "Respiratory Therapist, Certified -- Pulmonary Rehabilitation"],
    ["Respiratory Therapist, Certified (SNF/Subacute Care)", # 2278S1500X
      "Respiratory Therapist, Certified -- SNF/Subacute Care"],
    ["Respiratory Therapist, Registered", # 227900000X
      "Respiratory Therapist, Registered"],
    ["Respiratory Therapist, Registered (Critical Care)", # 2279C0205X
      "Respiratory Therapist, Registered -- Critical Care"],
    ["Respiratory Therapist, Registered (Educational)", # 2279E1000X
      "Respiratory Therapist, Registered -- Educational"],
    ["Respiratory Therapist, Registered (Emergency Care)", # 2279E0002X
      "Respiratory Therapist, Registered -- Emergency Care"],
    ["Respiratory Therapist, Registered (General Care)", # 2279G1100X
      "Respiratory Therapist, Registered -- General Care"],
    ["Respiratory Therapist, Registered (Geriatric Care)", # 2279G0305X
      "Respiratory Therapist, Registered -- Geriatric Care"],
    ["Respiratory Therapist, Registered (Home Health)", # 2279H0200X
      "Respiratory Therapist, Registered -- Home Health"],
    ["Respiratory Therapist, Registered (Neonatal/Pediatrics)", # 2279P3900X
      "Respiratory Therapist, Registered -- Neonatal/Pediatrics"],
    ["Respiratory Therapist, Registered (Palliative/Hospice)", # 2279P3800X
      "Respiratory Therapist, Registered -- Palliative/Hospice"],
    ["Respiratory Therapist, Registered (Patient Transport)", # 2279P4000X
      "Respiratory Therapist, Registered -- Patient Transport"],
    ["Respiratory Therapist, Registered (Pulmonary Diagnostics)", # 2279P1004X
      "Respiratory Therapist, Registered -- Pulmonary Diagnostics"],
    ["Respiratory Therapist, Registered (Pulmonary Function Technologist)", # 2279P1006X
      "Respiratory Therapist, Registered -- Pulmonary Function Technologist"],
    ["Respiratory Therapist, Registered (Pulmonary Rehabilitation)", # 2279P1005X
      "Respiratory Therapist, Registered -- Pulmonary Rehabilitation"],
    ["Respiratory Therapist, Registered (SNF/Subacute Care)", # 2279S1500X
      "Respiratory Therapist, Registered -- SNF/Subacute Care"],
    ["Specialist/Technologist", # 225500000X
      "Specialist/Technologist"],
    ["Specialist/Technologist (Athletic Trainer)", # 2255A2300X
      "Specialist/Technologist -- Athletic Trainer"],
    ["Specialist/Technologist (Rehabilitation, Blind)", # 2255R0406X
      "Specialist/Technologist -- Rehabilitation, Blind"],
    ["Audiologist", # 231H00000X
      "Audiologist"],
    ["Audiologist (Assistive Technology Practitioner)", # 231HA2400X
      "Audiologist -- Assistive Technology Practitioner"],
    ["Audiologist (Assistive Technology Supplier)", # 231HA2500X
      "Audiologist -- Assistive Technology Supplier"],
    ["Audiologist-Hearing Aid Fitter", # 237600000X
      "Audiologist-Hearing Aid Fitter"],
    ["Hearing Instrument Specialist", # 237700000X
      "Hearing Instrument Specialist"],
    ["Specialist/Technologist", # 235500000X
      "Specialist/Technologist"],
    ["Specialist/Technologist (Audiology Assistant)", # 2355A2700X
      "Specialist/Technologist -- Audiology Assistant"],
    ["Specialist/Technologist (Speech-Language Assistant)", # 2355S0801X
      "Specialist/Technologist -- Speech-Language Assistant"],
    ["Speech-Language Pathologist", # 235Z00000X
      "Speech-Language Pathologist"],
    ["Student in an Organized Health Care Education/Training Program", # 390200000X
      "Student in an Organized Health Care Education/Training Program"],
    ["Perfusionist", # 242T00000X
      "Perfusionist"],
    ["Radiologic Technologist", # 247100000X
      "Radiologic Technologist"],
    ["Radiologic Technologist (Bone Densitometry)", # 2471B0102X
      "Radiologic Technologist -- Bone Densitometry"],
    ["Radiologic Technologist (Cardiac-Interventional Technology)", # 2471C1106X
      "Radiologic Technologist -- Cardiac-Interventional Technology"],
    ["Radiologic Technologist (Cardiovascular-Interventional Technology)", # 2471C1101X
      "Radiologic Technologist -- Cardiovascular-Interventional Technology"],
    ["Radiologic Technologist (Computed Tomography)", # 2471C3401X
      "Radiologic Technologist -- Computed Tomography"],
    ["Radiologic Technologist (Magnetic Resonance Imaging)", # 2471M1202X
      "Radiologic Technologist -- Magnetic Resonance Imaging"],
    ["Radiologic Technologist (Mammography)", # 2471M2300X
      "Radiologic Technologist -- Mammography"],
    ["Radiologic Technologist (Nuclear Medicine Technology)", # 2471N0900X
      "Radiologic Technologist -- Nuclear Medicine Technology"],
    ["Radiologic Technologist (Quality Management)", # 2471Q0001X
      "Radiologic Technologist -- Quality Management"],
    ["Radiologic Technologist (Radiation Therapy)", # 2471R0002X
      "Radiologic Technologist -- Radiation Therapy"],
    ["Radiologic Technologist (Radiography)", # 2471C3402X
      "Radiologic Technologist -- Radiography"],
    ["Radiologic Technologist (Sonography)", # 2471S1302X
      "Radiologic Technologist -- Sonography"],
    ["Radiologic Technologist (Vascular Sonography)", # 2471V0105X
      "Radiologic Technologist -- Vascular Sonography"],
    ["Radiologic Technologist (Vascular-Interventional Technology)", # 2471V0106X
      "Radiologic Technologist -- Vascular-Interventional Technology"],
    ["Radiology Practitioner Assistant", # 243U00000X
      "Radiology Practitioner Assistant"],
    ["Spec/Tech, Cardiovascular", # 246X00000X
      "Spec/Tech, Cardiovascular"],
    ["Spec/Tech, Cardiovascular (Cardiovascular Invasive Specialist)", # 246XC2901X
      "Spec/Tech, Cardiovascular -- Cardiovascular Invasive Specialist"],
    ["Spec/Tech, Cardiovascular (Sonography)", # 246XS1301X
      "Spec/Tech, Cardiovascular -- Sonography"],
    ["Spec/Tech, Cardiovascular (Vascular Specialist)", # 246XC2903X
      "Spec/Tech, Cardiovascular -- Vascular Specialist"],
    ["Spec/Tech, Health Info", # 246Y00000X
      "Spec/Tech, Health Info"],
    ["Spec/Tech, Health Info (Coding Specialist, Hospital Based)", # 246YC3301X
      "Spec/Tech, Health Info -- Coding Specialist, Hospital Based"],
    ["Spec/Tech, Health Info (Coding Specialist, Physician Office Based)", # 246YC3302X
      "Spec/Tech, Health Info -- Coding Specialist, Physician Office Based"],
    ["Spec/Tech, Health Info (Registered Record Administrator)", # 246YR1600X
      "Spec/Tech, Health Info -- Registered Record Administrator"],
    ["Specialist/Technologist, Other", # 246Z00000X
      "Specialist/Technologist, Other"],
    ["Specialist/Technologist, Other (Art, Medical)", # 246ZA2600X
      "Specialist/Technologist, Other -- Art, Medical"],
    ["Specialist/Technologist, Other (Biochemist)", # 246ZB0500X
      "Specialist/Technologist, Other -- Biochemist"],
    ["Specialist/Technologist, Other (Biomedical Engineering)", # 246ZB0301X
      "Specialist/Technologist, Other -- Biomedical Engineering"],
    ["Specialist/Technologist, Other (Biomedical Photographer)", # 246ZB0302X
      "Specialist/Technologist, Other -- Biomedical Photographer"],
    ["Specialist/Technologist, Other (Biostatistician)", # 246ZB0600X
      "Specialist/Technologist, Other -- Biostatistician"],
    ["Specialist/Technologist, Other (EEG)", # 246ZE0500X
      "Specialist/Technologist, Other -- EEG"],
    ["Specialist/Technologist, Other (Electroneurodiagnostic)", # 246ZE0600X
      "Specialist/Technologist, Other -- Electroneurodiagnostic"],
    ["Specialist/Technologist, Other (Geneticist, Medical (PhD))", # 246ZG1000X
      "Specialist/Technologist, Other -- Geneticist, Medical (PhD)"],
    ["Specialist/Technologist, Other (Graphics Methods)", # 246ZG0701X
      "Specialist/Technologist, Other -- Graphics Methods"],
    ["Specialist/Technologist, Other (Illustration, Medical)", # 246ZI1000X
      "Specialist/Technologist, Other -- Illustration, Medical"],
    ["Specialist/Technologist, Other (Nephrology)", # 246ZN0300X
      "Specialist/Technologist, Other -- Nephrology"],
    ["Specialist/Technologist, Other (Orthopedic Assistant)", # 246ZX2200X
      "Specialist/Technologist, Other -- Orthopedic Assistant"],
    ["Specialist/Technologist, Other (Surgical Assistant)", # 246ZC0007X
      "Specialist/Technologist, Other -- Surgical Assistant"],
    ["Specialist/Technologist, Other (Surgical Technologist)", # 246ZS0410X
      "Specialist/Technologist, Other -- Surgical Technologist"],
    ["Spec/Tech, Pathology", # 246Q00000X
      "Spec/Tech, Pathology"],
    ["Spec/Tech, Pathology (Blood Banking)", # 246QB0000X
      "Spec/Tech, Pathology -- Blood Banking"],
    ["Spec/Tech, Pathology (Chemistry)", # 246QC1000X
      "Spec/Tech, Pathology -- Chemistry"],
    ["Spec/Tech, Pathology (Cytotechnology)", # 246QC2700X
      "Spec/Tech, Pathology -- Cytotechnology"],
    ["Spec/Tech, Pathology (Hemapheresis Practitioner)", # 246QH0401X
      "Spec/Tech, Pathology -- Hemapheresis Practitioner"],
    ["Spec/Tech, Pathology (Hematology)", # 246QH0000X
      "Spec/Tech, Pathology -- Hematology"],
    ["Spec/Tech, Pathology (Histology)", # 246QH0600X
      "Spec/Tech, Pathology -- Histology"],
    ["Spec/Tech, Pathology (Immunology)", # 246QI0000X
      "Spec/Tech, Pathology -- Immunology"],
    ["Spec/Tech, Pathology (Laboratory Management)", # 246QL0900X
      "Spec/Tech, Pathology -- Laboratory Management"],
    ["Spec/Tech, Pathology (Laboratory Management, Diplomate)", # 246QL0901X
      "Spec/Tech, Pathology -- Laboratory Management, Diplomate"],
    ["Spec/Tech, Pathology (Medical Technologist)", # 246QM0706X
      "Spec/Tech, Pathology -- Medical Technologist"],
    ["Spec/Tech, Pathology (Microbiology)", # 246QM0900X
      "Spec/Tech, Pathology -- Microbiology"],
    ["Technician, Cardiology", # 246W00000X
      "Technician, Cardiology"],
    ["Technician, Health Information", # 247000000X
      "Technician, Health Information"],
    ["Technician, Health Information (Assistant Record Technician)", # 2470A2800X
      "Technician, Health Information -- Assistant Record Technician"],
    ["Technician, Other", # 247200000X
      "Technician, Other"],
    ["Technician, Other (Biomedical Engineering)", # 2472B0301X
      "Technician, Other -- Biomedical Engineering"],
    ["Technician, Other (Darkroom)", # 2472D0500X
      "Technician, Other -- Darkroom"],
    ["Technician, Other (EEG)", # 2472E0500X
      "Technician, Other -- EEG"],
    ["Technician, Other (Renal Dialysis)", # 2472R0900X
      "Technician, Other -- Renal Dialysis"],
    ["Technician, Other (Veterinary)", # 2472V0600X
      "Technician, Other -- Veterinary"],
    ["Technician, Pathology", # 246R00000X
      "Technician, Pathology"],
    ["Pathology (Clinical Laboratory Director, Non-physician)", # 247ZC0005X
      "Pathology -- Clinical Laboratory Director, Non-physician"],
    ["Technician, Pathology (Histology)", # 246RH0600X
      "Technician, Pathology -- Histology"],
    ["Technician, Pathology (Medical Laboratory)", # 246RM2200X
      "Technician, Pathology -- Medical Laboratory"],
    ["Technician, Pathology (Phlebotomy)", # 246RP1900X
      "Technician, Pathology -- Phlebotomy"]
  ]
end