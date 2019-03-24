/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : genesystem

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2018-04-17 23:45:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for drug
-- ----------------------------
DROP TABLE IF EXISTS `drug`;
CREATE TABLE `drug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `drug` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `indication` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `pharmacodynamics` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `machanismOfAction` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `stucture` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `synonyms` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `SafetyAndHazards` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of drug
-- ----------------------------
INSERT INTO `drug` VALUES ('175', '001', 'Capecitabine', 'Small Molecule', '\r\nCapecitabine is an orally-administered chemotherapeutic agent used in the treatment of metastatic breast and colorectal cancers. Capecitabine is a prodrug, that is enzymatically converted to fluorouracil (antimetabolite) in the tumor, where it inhibits DNA synthesis and slows growth of tumor tissue.', 'For the treatment of patients with metastatic breast cancer resistant to both paclitaxel and an anthracycline-containing chemotherapy regimen. May also be used in combination with docetaxel for the treatment of metastatic breast cancer in patients who have failed to respond to, or recurred or relasped during or following anthracycline-containing chemotherapy. Capecitabine is used alone as an adjuvant therapy following the complete resection of primary tumor in patients with stage III colon cancer when monotherapy with fluroprymidine is preferred. The use or capecitabine in combination regimens for advanced gastric cancer is currently being investigated.', '\r\nCapecitabine is a fluoropyrimidine carbamate with antineoplastic activity indicated for the treatment of metastatic breast cancer and colon cancer. It is an orally administered systemic prodrug that has little pharmacologic activity until it is converted to fluorouracil by enzymes that are expressed in higher concentrations in many tumors. Fluorouracil it then metabolized both normal and tumor cells to 5-fluoro-2′-deoxyuridine 5′-monophosphate (FdUMP) and 5-fluorouridine triphosphate (FUTP).', 'Capecitabine is a prodrug that is selectively tumour-activated to its cytotoxic moiety, fluorouracil, by thymidine phosphorylase, an enzyme found in higher concentrations in many tumors compared to normal tissues or plasma. Fluorouracil is further metabolized to two active metabolites, 5-fluoro-2\'-deoxyuridine 5\'-monophosphate (FdUMP) and 5-fluorouridine triphosphate (FUTP), within normal and tumour cells. These metabolites cause cell injury by two different mechanisms. First, FdUMP and the folate cofactor, N5-10-methylenetetrahydrofolate, bind to thymidylate synthase (TS) to form a covalently bound ternary complex. This binding inhibits the formation of thymidylate from 2\'-deaxyuridylate. Thymidylate is the necessary precursor of thymidine triphosphate, which is essential for the synthesis of DNA, therefore a deficiency of this compound can inhibit cell division. Secondly, nuclear transcriptional enzymes can mistakenly incorporate FUTP in place of uridine triphosphate (UTP) during the synthesis of RNA. This metabolic error can interfere with RNA processing and protein synthesis through the production of fraudulent RNA.', '001.PNG', '(1-(5-Deoxy-beta-D-ribofuranosyl)-5-fluoro-1,2-dihydro-2-oxo-4-pyrimidinyl)-carbamic acid pentyl ester\r\nCapecitabin\r\nCapecitabina\r\nCapecitabinum\r\nPentyl [1-(5-deoxy-beta-D-ribofuranosyl)-5-fluoro-2-oxo-1,2-dihydropyrimidin-4-yl]carbamate\r\nPentyl 1-(5-deoxy-beta-D-ribofuranosyl)-5-fluoro-1,2-dihydro-2-oxo-4-pyrimidinecarbamate', 'Signal: Danger\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 33 companies from 10 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH315 (24.24%): Causes skin irritation [Warning Skin corrosion/irritation]\r\nH319 (24.24%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]\r\nH341 (72.73%): Suspected of causing genetic defects [Warning Germ cell mutagenicity]\r\nH350 (87.88%): May cause cancer [Danger Carcinogenicity]\r\nH360 (100%): May damage fertility or the unborn child [Danger Reproductive toxicity]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.\r\n\r\nPrecautionary Statement Codes\r\nP201, P202, P264, P280, P281, P302+P352, P305+P351+P338, P308+P313, P321, P332+P313, P337+P313, P362, P405, and P501\r\n(The corresponding statement to each P-code can be found here.)      Skin, Eye, and Respiratory Irritations\r\nOcular irritation occurred in 5-15% of patients receiving capecitabine for metastatic breast cancer or metastatic colorectal cancer. Abnormal vision occurred in 5% of patients receiving capecitabine monotherapy for metastatic colorectal cancer. Severe ocular irritation and corneal deposits were reported in 2 patients with a history of keratoconjunctivitis sicca who received higher doses of capecitabine for metastatic breast cancer or metastatic colon cancer. Ophthalmic examination is recommended for patients receiving capecitabine who experience severe ocular symptoms or decreased visual acuity. Increased lacrimation was reported in 12% of patients receiving capecitabine and docetaxel and in 7% of those receiving docetaxel alone for metastatic breast cancer. Among patients receiving capecitabine alone as adjuvant therapy for stage III colon can');
INSERT INTO `drug` VALUES ('176', '002', 'Trifluridine - tipiracil hydrochloride mixt', 'Small Molecule', 'An antiviral derivative of thymidine used mainly in the treatment of primary keratoconjunctivitis and recurrent epithelial keratitis due to herpes simplex virus. (From Martindale, The Extra Pharmacopoeia, 30th ed, p557)', 'Ophthalmic solution for the treatment of primay keratoconjunctivitis and recurrent epithelial keratitis due to herpes simplex virus, types 1 and 2.', 'Trifluridine is a fluorinated pyrimidine nucleoside with in vitro and in vivo activity against herpes simplex virus, types 1 and 2 and vacciniavirus. Some strains of adenovirus are also inhibited in vitro. Trifluridine is also effective in the treatment of epithelial keratitis that has not responded clinically to the topical administration of idoxuridine or when ocular toxicity or hypersensitivity to idoxuridine has occurred. In a smaller number of patients found to be resistant to topical vidarabine, trifluridine was also effective. Trifluridine interferes with DNA synthesis in cultured mammalian cells. However, its antiviral mechanism of action is not completely known.', 'The mechanism of action of trifluridine has not been fully determined, but appears to involve the inhibition of viral replication. Trifluridine does this by incorporating into viral DNA during replication, which leads to the formation of defective proteins and an increased mutation rate. This drug also reversibly inhibits thymidylate synthetase, an enzyme that is necessary for DNA synthesis.\r\n\r\n', '002.PNG', '5-(Trifluoromethyl)deoxyuridine\r\n5-Trifluoromethyl-2-deoxyuridine\r\nF₃T\r\nTFT\r\nTrifluoromethyldeoxyuridine\r\nTrifluorothymidine\r\nTrifluorothymine deoxyriboside', 'Signal: Warning\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 27 companies from 3 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH302 (96.3%): Harmful if swallowed [Warning Acute toxicity, oral]\r\nH312 (96.3%): Harmful in contact with skin [Warning Acute toxicity, dermal]\r\nH332 (96.3%): Harmful if inhaled [Warning Acute toxicity, inhalation]\r\nH351 (100%): Suspected of causing cancer [Warning Carcinogenicity]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.\r\n\r\nPrecautionary Statement Codes\r\nP201, P202, P261, P264, P270, P271, P280, P281, P301+P312, P302+P352, P304+P312, P304+P340, P308+P313, P312, P322, P330, P363, P405, and P501\r\n(The corresponding statement to each P-code can be found here.)    Wear approved respiratory protection, chemically compatible gloves, and protective clothing. Wipe up spillage or collect spillage using a high-efficiency vacuum cleaner. Avoid breathing dust. Place spillage in appropriately labeled container for disposal. Wash spill site.\r\nUnited States Pharmacopeial Convention, Inc (USP); MSDS Database Online; Material Safety Data Sheet: Trifluridine; Catalog Number: 1686309; (Revision Date: December 5, 2008)    SRP: Expired or waste pharmaceuticals shall carefully take into consideration applicable DEA, EPA, and FDA regulations. It is not appropriate to dispose by flushing the pharmaceutical down the toilet or discarding to trash. If possible return the pharmaceutical to the manufacturer for proper disposal being careful to properly label and securely package the material. Alternatively, the waste pharmaceutical shall be labeled, securely packaged and transported by a state licensed medical waste contractor to dispose by burial in a li');
INSERT INTO `drug` VALUES ('177', '006', 'Panitumumab', 'Biotech', 'Panitumumab (ABX-EGF) is a recombinant human IgG2 monoclonal antibody that binds specifically to the human epidermal growth factor receptor (EGFR). This drug is an antineoplastic agent.', 'For the treatment of EGFR-expressing, metastatic colorectal carcinoma that is refractory to fluoropyrimidine-, oxaliplatin-, and irinotecan- containing chemotherapy regimens.', 'Panitumumab is a recombinant, human IgG2 kappa monoclonal antibody that binds specifically to the human Epidermal Growth Factor Receptor (EGFR). EGFR is a transmembrane glycoprotein that belongs to the subfamily of type I receptor tyrosine kinases. Although EGFR is expressed in normal cells, the overexpression of EGFR is detected in many human cancers, including those of the colon and rectum. Interaction of EGFR with its normal ligands causes phosphorylation and activation of a series of intracellular proteins that will in turn regulate the transcription of genes involved with cellular growth and survival, motility, and prolieration. Signal transduction through EGFR leads to the activation of the wild type KRAS gene, but the presence of an activating somatic mutation of the KRAS gene within a cancer cell can result in the dysregulation of signaling pathways and resistance to EGFR inhibitor therapy.', 'Panitumumab binds specifically to EGFR on both normal and tumor cells, and competitively inhibits the binding of ligands for EGFR. Nonclinical studies show that binding of panitumumab to the EGFR prevents ligand-induced receptor autophosphorylation and activation of receptor-associated kinases, resulting in inhibition of cell growth, induction of apoptosis, decreased pro-inflammatory cytokine and vascular growth factor production, and internalization of the EGFR.', '003.PNG', 'ABX-EGF', 'Signal: Warning\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 27 companies from 3 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH302 (96.3%): Harmful if swallowed [Warning Acute toxicity, oral]\r\nH312 (96.3%): Harmful in contact with skin [Warning Acute toxicity, dermal]\r\nH332 (96.3%): Harmful if inhaled [Warning Acute toxicity, inhalation]\r\nH351 (100%): Suspected of causing cancer [Warning Carcinogenicity]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.\r\n\r\nPrecautionary Statement Codes\r\nP201, P202, P261, P264, P270, P271, P280, P281, P301+P312, P302+P352, P304+P312, P304+P340, P308+P313, P312, P322, P330, P363, P405, and P501\r\n(The corresponding statement to each P-code can be found here.)    Wear approved respiratory protection, chemically compatible gloves, and protective clothing. Wipe up spillage or collect spillage using a high-efficiency vacuum cleaner. Avoid breathing dust. Place spillage in appropriately labeled container for disposal. Wash spill site.\r\nUnited States Pharmacopeial Convention, Inc (USP); MSDS Database Online; Material Safety Data Sheet: Trifluridine; Catalog Number: 1686309; (Revision Date: December 5, 2008)    SRP: Expired or waste pharmaceuticals shall carefully take into consideration applicable DEA, EPA, and FDA regulations. It is not appropriate to dispose by flushing the pharmaceutical down the toilet or discarding to trash. If possible return the pharmaceutical to the manufacturer for proper disposal being careful to properly label and securely package the material. Alternatively, the waste pharmaceutical shall be labeled, securely packaged and transported by a state licensed medical waste contractor to dispose by burial in a li');
INSERT INTO `drug` VALUES ('178', '003', 'Oxaliplatin', 'Small Molecule', 'Oxaliplatin is a platinum-based chemotherapy drug in the same family as cisplatin and carboplatin. It is typically administered in combination with fluorouracil and leucovorin in a combination known as Folfox for the treatment of colorectal cancer. Compared to cisplatin the two amine groups are replaced by cyclohexyldiamine for improved antitumour activity. The chlorine ligands are replaced by the oxalato bidentate derived from oxalic acid in order to improve water solubility. Oxaliplatin is marketed by Sanofi-Aventis under the trademark Eloxatin®.', '\r\nUsed in combination with infusional 5-FU/LV, is indicated for the treatment of advanced carcinoma of the colon or rectum and for adjuvant treatment of stage III colon cancer patients who have undergone complete resection of the primary tumor.', 'Oxaliplatin selectively inhibits the synthesis of deoxyribonucleic acid (DNA). The guanine and cytosine content correlates with the degree of Oxaliplatin-induced cross-linking. At high concentrations of the drug, cellular RNA and protein synthesis are also suppressed.', 'Oxaliplatin undergoes nonenzymatic conversion to active derivatives via displacement of the labile oxalate ligand. Several transient reactive species are formed, including monoaquo and diaquo DACH platinum, which covalently bind with macromolecules. After activation, oxaliplatin binds preferentially to the guanine and cytosine moieties of DNA, leading to cross-linking of DNA, thus inhibiting DNA synthesis and transcription. Cytotoxicity is cell-cycle nonspecific.', '004.PNG', 'Diaminocyclohexane Oxalatoplatinum\r\nL-OHP\r\nOxalatoplatin\r\nOxalatoplatinum\r\noxaliplatine\r\noxaliplatino\r\noxaliplatinum', 'Signal: Danger\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 2 companies from 2 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH290 (50%): May be corrosive to metals [Warning Corrosive to Metals]\r\nH301 (50%): Toxic if swallowed [Danger Acute toxicity, oral]\r\nH302 (50%): Harmful if swallowed [Warning Acute toxicity, oral]\r\nH311 (100%): Toxic in contact with skin [Danger Acute toxicity, dermal]\r\nH315 (50%): Causes skin irritation [Warning Skin corrosion/irritation]\r\nH317 (50%): May cause an allergic skin reaction [Warning Sensitization, Skin]\r\nH319 (50%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]\r\nH331 (100%): Toxic if inhaled [Danger Acute toxicity, inhalation]\r\nH334 (50%): May cause allergy or asthma symptoms or breathing difficulties if inhaled [Danger Sensitization, respiratory]\r\nH335 (50%): May cause respiratory irritation [Warning Specific target organ toxicity, single exposure; Respiratory tract irritation]\r\nH340 (50%): May cause genetic defects [Danger Germ cell mutagenicity]\r\nH350 (50%): May cause cancer [Danger Carcinogenicity]\r\nH351 (50%): Suspected of causing cancer [Warning Carcinogenicity]\r\nH360 (50%): May damage fertility or the unborn child [Danger Reproductive toxicity]\r\nH362 (50%): May cause harm to breast-fed children [Reproductive toxicity, effects on or via lactation]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.    ');
INSERT INTO `drug` VALUES ('179', '004', 'Cetuximab', '\r\nBiotech', 'Cetuximab is an epidermal growth factor receptor binding FAB. Cetuximab is composed of the Fv (variable; antigen-binding) regions of the 225 murine EGFr monoclonal antibody specific for the N-terminal portion of human EGFr with human IgG1 heavy and kappa light chain constant (framework) regions. Cetuximab is marketed under the brand Erbitux® by Eli Lilly and Company. In the United States, a regimen of cetuximab costs approximately $30,790 for an eight-week course.', 'Cetuximab, used in combination with irinotecan, is indicated for the treatment of EGFR-expressing, metastatic colorectal carcinoma in patients who are refractory to irinotecan-based chemotherapy. Cetuximab administered as a single agent is indicated for the treatment of EGFR-expressing, metastatic colorectal carcinoma in patients who are intolerant to irinotecan-based chemotherapy.', '\r\nUsed in the treatment of colorectal cancer, cetuximab binds specifically to the epidermal growth factor receptor (EGFr, HER1, c-ErbB-1) on both normal and tumor cells. EGFr is over-expressed in many colorectal cancers. Cetuximab competitively inhibits the binding of epidermal growth factor (EGF) and other ligands, such as transforming growth factor–alpha. Binding of cetuximab to the EGFr blocks phosphorylation and activation of receptor-associated kinases, resulting in inhibition of cell growth, induction of apoptosis, decreased matrix metalloproteinase secretion and reduced vascular endothelial growth factor production.', 'Cetuximab binds to the epidermal growth factor receptor (EGFr) on both normal and tumor cells. EGFr is over-expressed in many colorectal cancers. Cetuximab competitively inhibits the binding of epidermal growth factor (EGF) and TGF alpha, thereby reducing their effects on cell growth and metastatic spread.', '005.PNG', '\r\nCetuximab\r\nCétuximab\r\nCetuximabum\r\nImmunoglobulin G 1 (human-mouse monoclonal C 225 gamma 1 - chain anti-human epidermal growt factor receptor), disulfide wit human-mouse monoclonal C 225 kappa - chain, dimer', 'Signal: Warning\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 27 companies from 3 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH302 (96.3%): Harmful if swallowed [Warning Acute toxicity, oral]\r\nH312 (96.3%): Harmful in contact with skin [Warning Acute toxicity, dermal]\r\nH332 (96.3%): Harmful if inhaled [Warning Acute toxicity, inhalation]\r\nH351 (100%): Suspected of causing cancer [Warning Carcinogenicity]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.\r\n\r\nPrecautionary Statement Codes\r\nP201, P202, P261, P264, P270, P271, P280, P281, P301+P312, P302+P352, P304+P312, P304+P340, P308+P313, P312, P322, P330, P363, P405, and P501\r\n(The corresponding statement to each P-code can be found here.)    Wear approved respiratory protection, chemically compatible gloves, and protective clothing. Wipe up spillage or collect spillage using a high-efficiency vacuum cleaner. Avoid breathing dust. Place spillage in appropriately labeled container for disposal. Wash spill site.\r\nUnited States Pharmacopeial Convention, Inc (USP); MSDS Database Online; Material Safety Data Sheet: Trifluridine; Catalog Number: 1686309; (Revision Date: December 5, 2008)    SRP: Expired or waste pharmaceuticals shall carefully take into consideration applicable DEA, EPA, and FDA regulations. It is not appropriate to dispose by flushing the pharmaceutical down the toilet or discarding to trash. If possible return the pharmaceutical to the manufacturer for proper disposal being careful to properly label and securely package the material. Alternatively, the waste pharmaceutical shall be labeled, securely packaged and transported by a state licensed medical waste contractor to dispose by burial in a li');
INSERT INTO `drug` VALUES ('180', '005', 'Bevacizumab', '\r\nBiotech', 'A recombinant humanized monoclonal IgG1 antibody that binds to and inhibits the biologic activity of human vascular endothelial growth factor (VEGF). Bevacizumab contains human framework regions and the complementarity-determining regions of a murine antibody that binds to VEGF. Bevacizumab is produced in a Chinese Hamster Ovary mammalian cell expression system in a nutrient medium containing the antibiotic gentamicin and has a molecular weight of approximately 149 kilodaltons.', 'As part of combination therapy for metastatic colorectal cancer and HER2-negative metastatic breast cancer.', 'Bevacizumab is an antineoplastic agent and prevents or reduces the formation of blood vessels (angiogenesis) thereby preventing or reducing metatstatic disease progressing. Bevacizumab binds VEGF and prevents vascular endothelial growth and endothelial cell proliferation.', 'Bevacizumab contains human framework regions with antigen binding regions of a humanised murine antibody that binds to VEGF. Bevacizumab is produced by recombinant DNA technology in a Chinese hamster ovary mammalian cell expression system in a nutrient medium containing the antibiotic gentamicin and is purified by a process that includes specific viral inactivation and removal steps. Bevacizumab binds VEGF and prevents the interaction of VEGF to its receptors (Flt-1 and KDR) on the surface of endothelial cells. This prevents blood vessel proliferation and in response retardation of metastatic tumor growth occurs.', '006.PNG', 'antiVEGF\r\nbevacizumab-awwb', 'Signal: Danger\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 33 companies from 10 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH315 (24.24%): Causes skin irritation [Warning Skin corrosion/irritation]\r\nH319 (24.24%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]\r\nH341 (72.73%): Suspected of causing genetic defects [Warning Germ cell mutagenicity]\r\nH350 (87.88%): May cause cancer [Danger Carcinogenicity]\r\nH360 (100%): May damage fertility or the unborn child [Danger Reproductive toxicity]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.\r\n\r\nPrecautionary Statement Codes\r\nP201, P202, P264, P280, P281, P302+P352, P305+P351+P338, P308+P313, P321, P332+P313, P337+P313, P362, P405, and P501\r\n(The corresponding statement to each P-code can be found here.)      Skin, Eye, and Respiratory Irritations\r\nOcular irritation occurred in 5-15% of patients receiving capecitabine for metastatic breast cancer or metastatic colorectal cancer. Abnormal vision occurred in 5% of patients receiving capecitabine monotherapy for metastatic colorectal cancer. Severe ocular irritation and corneal deposits were reported in 2 patients with a history of keratoconjunctivitis sicca who received higher doses of capecitabine for metastatic breast cancer or metastatic colon cancer. Ophthalmic examination is recommended for patients receiving capecitabine who experience severe ocular symptoms or decreased visual acuity. Increased lacrimation was reported in 12% of patients receiving capecitabine and docetaxel and in 7% of those receiving docetaxel alone for metastatic breast cancer. Among patients receiving capecitabine alone as adjuvant therapy for stage III colon can');
INSERT INTO `drug` VALUES ('181', '007', 'Nivolumab', 'Biotech', '\r\nPanitumumab (ABX-EGF) is a recombinant human IgG2 monoclonal antibody that binds specifically to the human epidermal growth factor receptor (EGFR). This drug is an antineoplastic agent.', 'For the treatment of EGFR-expressing, metastatic colorectal carcinoma that is refractory to fluoropyrimidine-, oxaliplatin-, and irinotecan- containing chemotherapy regimens.', 'Panitumumab is a recombinant, human IgG2 kappa monoclonal antibody that binds specifically to the human Epidermal Growth Factor Receptor (EGFR). EGFR is a transmembrane glycoprotein that belongs to the subfamily of type I receptor tyrosine kinases. Although EGFR is expressed in normal cells, the overexpression of EGFR is detected in many human cancers, including those of the colon and rectum. Interaction of EGFR with its normal ligands causes phosphorylation and activation of a series of intracellular proteins that will in turn regulate the transcription of genes involved with cellular growth and survival, motility, and prolieration. Signal transduction through EGFR leads to the activation of the wild type KRAS gene, but the presence of an activating somatic mutation of the KRAS gene within a cancer cell can result in the dysregulation of signaling pathways and resistance to EGFR inhibitor therapy.', 'Panitumumab binds specifically to EGFR on both normal and tumor cells, and competitively inhibits the binding of ligands for EGFR. Nonclinical studies show that binding of panitumumab to the EGFR prevents ligand-induced receptor autophosphorylation and activation of receptor-associated kinases, resulting in inhibition of cell growth, induction of apoptosis, decreased pro-inflammatory cytokine and vascular growth factor production, and internalization of the EGFR.', '007.PNG', 'ABX-EGF', 'Signal: Danger\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 2 companies from 2 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH290 (50%): May be corrosive to metals [Warning Corrosive to Metals]\r\nH301 (50%): Toxic if swallowed [Danger Acute toxicity, oral]\r\nH302 (50%): Harmful if swallowed [Warning Acute toxicity, oral]\r\nH311 (100%): Toxic in contact with skin [Danger Acute toxicity, dermal]\r\nH315 (50%): Causes skin irritation [Warning Skin corrosion/irritation]\r\nH317 (50%): May cause an allergic skin reaction [Warning Sensitization, Skin]\r\nH319 (50%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]\r\nH331 (100%): Toxic if inhaled [Danger Acute toxicity, inhalation]\r\nH334 (50%): May cause allergy or asthma symptoms or breathing difficulties if inhaled [Danger Sensitization, respiratory]\r\nH335 (50%): May cause respiratory irritation [Warning Specific target organ toxicity, single exposure; Respiratory tract irritation]\r\nH340 (50%): May cause genetic defects [Danger Germ cell mutagenicity]\r\nH350 (50%): May cause cancer [Danger Carcinogenicity]\r\nH351 (50%): Suspected of causing cancer [Warning Carcinogenicity]\r\nH360 (50%): May damage fertility or the unborn child [Danger Reproductive toxicity]\r\nH362 (50%): May cause harm to breast-fed children [Reproductive toxicity, effects on or via lactation]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.    ');
INSERT INTO `drug` VALUES ('182', '008', 'Pembrolizumab', 'Biotech', 'Pembrolizumab is a humanized monoclonal antibody that blocks the interaction between PD-1 and its ligands, PD-L1 and PD-L2. It is used for the treatment of several types of cancer such as, Melanoma, Non-Small Cell Lung Cancer and Head and Neck Cancer.\r\n\r\nDue to its success in clinical trials, pembrolizumab was approved early to allow quick patient access and was given breakthrough therapy and orphan drug designation. Pembrolizumab (as Keytruda) was approved by the U.S. Food and Drug Administration to treat advanced cases of the most common type of lung malignancy, non-small cell lung cancer on Oct. 2, 2015. Keytruda was additionally approved for the treatment of Classical Hodgkin Lymphoma (cHL) in March, 2017.', 'Pembrolizumab is a programmed death receptor-1 (PD-1)-blocking antibody indicated for the treatment of:  patients with unresectable or metastatic melanoma.  patients with metastatic NSCLC whose tumors have high PD-L1 expression [(Tumor Proportion Score (TPS) ≥50%)] as determined by an FDA-approved test, with no EGFR or ALK genomic tumor aberrations, and no prior systemic chemotherapy treatment for metastatic NSCLC.  patients with metastatic NSCLC whose tumors express PD-L1 (TPS ≥1%) as determined by an FDA-approved test, with disease progression on or after platinum-containing chemotherapy. Patients with EGFR or ALK genomic tumor aberrations should have disease progression on FDA-approved therapy for these aberrations prior to receiving KEYTRUDA.  patients with recurrent or metastatic HNSCC with disease progression on or after platinum-containing chemotherapy. This indication is approved under accelerated approval based on tumor response rate and durability of response. Continued approval for this indication may be contingent upon verification and description of clinical benefit in the confirmatory trials.', 'Based on dose/exposure efficacy and safety relationships, there are no clinically significant differences in efficacy and safety between pembrolizumab doses of 200 mg or 2 mg/kg every 3 weeks in patients with NSCLC. Pembrolizumab binds with high affinity (29 pM) to PD-1, antagonizing the interaction between PD-1 and its known ligands, PD-L1 and PD-L2, with a half maximal inhibitory concentration between 500 pM and 1 nM. Engagement of PD-1 on T cells with PDL1 or PD-L2 inhibits TCR-mediated T cell proliferation and cytokine production. Intracellularly, PD-1 activation inhibits CD28 signalling through the PI3K/AKT pathway, likely via the recruitment of the SHP-2 and SHP-1 phosphatases to the immune synapse, blocking the upregulation of pro-inflammatory mediators (e.g., IL-2 and IFNγ) and survival signals (e.g. Bcl-xl). The inhibitory role of the PD-1 pathway has been shown to be essential in maintaining self-tolerance, minimizing collateral damage during physiologic responses to pathogens, and inducing maternal tolerance to fetal tissue. By inhibiting this inhibitor in the treatment of cancer, pembrolizumab aims to shift the balance toward immune reactivity, enhancing tumor immunosurveillance and antitumor immune responses.', 'Pembrolizumab is an antibody drug that targets the cell surface receptor programmed cell death protein 1 (PD-1) found on T cells. By preventing the binding of its ligands (PD-L1 and PD-L2), pembrolizumab induces an antitumor immune response. Upregulation of PD-1 ligands is a mechanism for tumours to evade antitumor immune response; when PD-1 binds its ligand, the T cell receives an inhibitory signal leading to T cell anergy and blockade of anti tumour immune response. Instead of directly targeting tumor tissue to induce tumor cell death, pembrolizumab acts as a checkpoint inhibitor to stimulate immune responses to eliminate cancer cells.', '008.PNG', 'Lambrolizumab', 'Signal: Danger\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 2 companies from 2 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH290 (50%): May be corrosive to metals [Warning Corrosive to Metals]\r\nH301 (50%): Toxic if swallowed [Danger Acute toxicity, oral]\r\nH302 (50%): Harmful if swallowed [Warning Acute toxicity, oral]\r\nH311 (100%): Toxic in contact with skin [Danger Acute toxicity, dermal]\r\nH315 (50%): Causes skin irritation [Warning Skin corrosion/irritation]\r\nH317 (50%): May cause an allergic skin reaction [Warning Sensitization, Skin]\r\nH319 (50%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]\r\nH331 (100%): Toxic if inhaled [Danger Acute toxicity, inhalation]\r\nH334 (50%): May cause allergy or asthma symptoms or breathing difficulties if inhaled [Danger Sensitization, respiratory]\r\nH335 (50%): May cause respiratory irritation [Warning Specific target organ toxicity, single exposure; Respiratory tract irritation]\r\nH340 (50%): May cause genetic defects [Danger Germ cell mutagenicity]\r\nH350 (50%): May cause cancer [Danger Carcinogenicity]\r\nH351 (50%): Suspected of causing cancer [Warning Carcinogenicity]\r\nH360 (50%): May damage fertility or the unborn child [Danger Reproductive toxicity]\r\nH362 (50%): May cause harm to breast-fed children [Reproductive toxicity, effects on or via lactation]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.    ');
INSERT INTO `drug` VALUES ('183', '009', 'Ramucirumab', 'Biotech', 'Ramucirumab is a human monoclonal antibody (IgG1) against vascular endothelial growth factor receptor 2 (VEGFR2), a type II trans-membrane tyrosine kinase receptor expressed on endothelial cells. By binding to VEGFR2, ramucirumab prevents binding of its ligands (VEGF-A, VEGF-C, and VEGF-D), thereby preventing VEGF-stimulated receptor phosphorylation and downstream ligand-induced proliferation, permeability, and migration of human endothelial cells. VEGFR stimulation also mediates downstream signalling required for angiogenesis and is postulated to be heavily involved in cancer progression, making it a highly likely drug target. In contrast to other agents directed against VEGFR-2, ramucirumab binds a specific epitope on the extracellular domain of VEGFR-2, thereby blocking all VEGF ligands from binding to it. Ramucirumab is indicated for us in advanced gastric or gastro-esophageal junction adenocarcinoma as a single agent or in combination with paclitaxel after prior fluoropyrimidine- or platinum-containing chemotherapy.', 'For use in advanced gastric or gastro-esophageal junction adenocarcinoma as a single agent or in combination with paclitaxel after prior fluoropyrimidine- or platinum-containing chemotherapy.', '\r\nNot Available', 'Ramucirumab is a human monoclonal antibody (IgG1) against vascular endothelial growth factor receptor 2 (VEGFR2), a type II trans-membrane tyrosine kinase receptor expressed on endothelial cells. By binding to VEGFR2, ramucirumab prevents binding of its ligands (VEGF-A, VEGF-C, and VEGF-D), thereby preventing VEGF-stimulated receptor phosphorylation and downstream ligand-induced proliferation, permeability, and migration of human endothelial cells.', '009.PNG', '\r\nNot Available', 'Signal: Danger\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 33 companies from 10 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH315 (24.24%): Causes skin irritation [Warning Skin corrosion/irritation]\r\nH319 (24.24%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]\r\nH341 (72.73%): Suspected of causing genetic defects [Warning Germ cell mutagenicity]\r\nH350 (87.88%): May cause cancer [Danger Carcinogenicity]\r\nH360 (100%): May damage fertility or the unborn child [Danger Reproductive toxicity]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.\r\n\r\nPrecautionary Statement Codes\r\nP201, P202, P264, P280, P281, P302+P352, P305+P351+P338, P308+P313, P321, P332+P313, P337+P313, P362, P405, and P501\r\n(The corresponding statement to each P-code can be found here.)      Skin, Eye, and Respiratory Irritations\r\nOcular irritation occurred in 5-15% of patients receiving capecitabine for metastatic breast cancer or metastatic colorectal cancer. Abnormal vision occurred in 5% of patients receiving capecitabine monotherapy for metastatic colorectal cancer. Severe ocular irritation and corneal deposits were reported in 2 patients with a history of keratoconjunctivitis sicca who received higher doses of capecitabine for metastatic breast cancer or metastatic colon cancer. Ophthalmic examination is recommended for patients receiving capecitabine who experience severe ocular symptoms or decreased visual acuity. Increased lacrimation was reported in 12% of patients receiving capecitabine and docetaxel and in 7% of those receiving docetaxel alone for metastatic breast cancer. Among patients receiving capecitabine alone as adjuvant therapy for stage III colon can');
INSERT INTO `drug` VALUES ('184', '010', 'Regorafenib hydrate', 'Small Molecule', 'Regorafenib is an orally-administered inhibitor of multiple kinases. It is used for the treatment of metastatic colorectal cancer and advanced gastrointestinal stromal tumours. FDA approved on September 27, 2012. Approved use of Regorafenib was expanded to treat Hepatocellular Carcinoma in April, 2017.', 'Regorafenib is indicated for the treatment of patients with metastatic colorectal cancer (CRC) who have been previously treated with fluoropyrimidine-, oxaliplatin- and irinotecan-based chemotherapy, an anti-VEGF therapy, and, if KRAS wild type, an anti-EGFR therapy. Regorafenib is also indicated for the treatment of patients with locally advanced, unresectable or metastatic gastrointestinal stromal tumor (GIST) who have been previously treated with imatinib mesylate and sunitinib malate.', 'Not Available', '\r\nRegorafenib is a small molecule inhibitor of multiple membrane-bound and intracellular kinases involved in normal cellular functions and in pathologic processes such as oncogenesis, tumor angiogenesis, and maintenance of the tumor microenvironment. In in vitro biochemical or cellular assays, regorafenib or its major human active metabolites M-2 and M-5 inhibited the activity of RET, VEGFR1, VEGFR2, VEGFR3, KIT, PDGFR-alpha, PDGFR-beta, FGFR1, FGFR2, TIE2, DDR2, TrkA, Eph2A, RAF-1, BRAF, BRAFV600E , SAPK2, PTK5, and Abl at concentrations of regorafenib that have been achieved clinically. In in vivo models, regorafenib demonstrated anti-angiogenic activity in a rat tumor model, and inhibition of tumor growth as well as anti-metastatic activity in several mouse xenograft models including some for human colorectal carcinoma.', '010.PNG', 'Regorafenib\r\nRégorafénib\r\nRegorafenibum', 'Signal: Danger\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 2 companies from 2 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH290 (50%): May be corrosive to metals [Warning Corrosive to Metals]\r\nH301 (50%): Toxic if swallowed [Danger Acute toxicity, oral]\r\nH302 (50%): Harmful if swallowed [Warning Acute toxicity, oral]\r\nH311 (100%): Toxic in contact with skin [Danger Acute toxicity, dermal]\r\nH315 (50%): Causes skin irritation [Warning Skin corrosion/irritation]\r\nH317 (50%): May cause an allergic skin reaction [Warning Sensitization, Skin]\r\nH319 (50%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]\r\nH331 (100%): Toxic if inhaled [Danger Acute toxicity, inhalation]\r\nH334 (50%): May cause allergy or asthma symptoms or breathing difficulties if inhaled [Danger Sensitization, respiratory]\r\nH335 (50%): May cause respiratory irritation [Warning Specific target organ toxicity, single exposure; Respiratory tract irritation]\r\nH340 (50%): May cause genetic defects [Danger Germ cell mutagenicity]\r\nH350 (50%): May cause cancer [Danger Carcinogenicity]\r\nH351 (50%): Suspected of causing cancer [Warning Carcinogenicity]\r\nH360 (50%): May damage fertility or the unborn child [Danger Reproductive toxicity]\r\nH362 (50%): May cause harm to breast-fed children [Reproductive toxicity, effects on or via lactation]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.    ');
INSERT INTO `drug` VALUES ('185', '011', 'Irinotecan hydrochloride', 'Small Molecule', '\r\nIrinotecan is an antineoplastic enzyme inhibitor primarily used in the treatment of colorectal cancer. It is a derivative of camptothecin that inhibits the action of topoisomerase I. Irinotecan prevents religation of the DNA strand by binding to topoisomerase I-DNA complex, and causes double-strand DNA breakage and cell death. It is a derivative of camptothecin. Irinotecan was approved for the treatment of advanced pancreatic cancer in October, 2015 (irinotecan liposome injection, trade name Onivyde).', 'For the treatment of metastatic colorectal cancer (first-line therapy when administered with 5-fluorouracil and leucovorin). Also used in combination with cisplatin for the treatment of extensive small cell lung cancer. Irinotecan is currently under investigation for the treatment of metastatic or recurrent cervical cancer. Also used in combination with fluorouracil and leucovorin for the treatment of patients with metastatic adenocarcinoma of the pancreas after disease progression following gemcitabine-based therapy.', 'Irinotecan is an antineoplastic enzyme inhibitor primarily used in the treatment of colorectal cancer. Irinotecan is a semisynthetic derivative of camptothecin. Camptothecins interact specifically with topoisomerase I, an enzyme in the cell nucleus that regulates DNA topology and facilitates nuclear processes such as DNA replication, recombination, and repair. During these processes, topoisomerase I relieves torsional strain in DNA by inducing reversible single-strand breaks, allowing single DNA strands to pass through the break. The 3\'-DNA terminus of the broken DNA strands bind covalently with the topoisomerase enzyme to form a catalytic intermediate called a cleavable complex. After the DNA is sufficiently relaxed and the strand passage reaction is complete, DNA topoisomerase reattaches the broken DNA strands to form the chemically unaltered topoisomers that allow transcription to proceed. Irinotecan and its active metabolite SN-38 bind to the topoisomerase I-DNA complex and prevent religation of these single-strand breaks. Current research suggests that the cytotoxicity of irinotecan is due to double-strand DNA damage produced during DNA synthesis when replication enzymes interact with the ternary complex formed by topoisomerase I, DNA, and either Irinotecan or SN-38. Mammalian cells cannot efficiently repair these double-strand breaks. The precise contribution of SN-38 to the activity of irinotecan in humans is not known. Irinotecan is cell cycle phase-specific (S-phase).', 'Irinotecan inhibits the action of topoisomerase I. Irinotecan prevents religation of the DNA strand by binding to topoisomerase I-DNA complex. The formation of this ternary complex interferes with the moving replication fork, which induces replication arrest and lethal double-stranded breaks in DNA. As a result, DNA damage is not efficiently repaired and apoptosis (programmed cell death) occurs.\r\n\r\n', '011.PNG', 'Biotecan\r\nCamptothecin-11', 'Signal: Warning\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 27 companies from 3 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH302 (96.3%): Harmful if swallowed [Warning Acute toxicity, oral]\r\nH312 (96.3%): Harmful in contact with skin [Warning Acute toxicity, dermal]\r\nH332 (96.3%): Harmful if inhaled [Warning Acute toxicity, inhalation]\r\nH351 (100%): Suspected of causing cancer [Warning Carcinogenicity]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.\r\n\r\nPrecautionary Statement Codes\r\nP201, P202, P261, P264, P270, P271, P280, P281, P301+P312, P302+P352, P304+P312, P304+P340, P308+P313, P312, P322, P330, P363, P405, and P501\r\n(The corresponding statement to each P-code can be found here.)    Wear approved respiratory protection, chemically compatible gloves, and protective clothing. Wipe up spillage or collect spillage using a high-efficiency vacuum cleaner. Avoid breathing dust. Place spillage in appropriately labeled container for disposal. Wash spill site.\r\nUnited States Pharmacopeial Convention, Inc (USP); MSDS Database Online; Material Safety Data Sheet: Trifluridine; Catalog Number: 1686309; (Revision Date: December 5, 2008)    SRP: Expired or waste pharmaceuticals shall carefully take into consideration applicable DEA, EPA, and FDA regulations. It is not appropriate to dispose by flushing the pharmaceutical down the toilet or discarding to trash. If possible return the pharmaceutical to the manufacturer for proper disposal being careful to properly label and securely package the material. Alternatively, the waste pharmaceutical shall be labeled, securely packaged and transported by a state licensed medical waste contractor to dispose by burial in a li');
INSERT INTO `drug` VALUES ('186', '012', 'Aflibercept', 'Biotech', 'Aflibercept is a recombinant fusion protein that comprises of two main components: the vascular endothelial growth factor (VEGF) binding portions from the extracellular domains of human VEGF receptors 1 and 2 which is then fused to the Fc portion of human IgG1. Structurally, Aflibercept is a dimeric glycoprotein with a protein molecular weight of 96.9 kilo Daltons (kDa). It contains approximately 15% glycosylation to give a total molecular weight of 115 kDa. All five putative N-glycosylation sites on each polypeptide chain predicted by the primary sequence can be occupied with carbohydrate and exhibit some degree of chain heterogeneity, including heterogeneity in terminal sialic acid residues, except at the single unsialylated site associated with the Fc domain. Aflibercept, as an ophthalmic agent, is used in the treatment of macular edema following Central Retinal Vein Occlusion (CRVO) and neovascular Age-Related Macular Degeneration (AMD). Ziv-aflibercept, under the brand name Zaltrap, was developed as an injection for treatment of metastatic colorectal cancer. FDA approved in November 18, 2011 and EMA approved in November 2012.', '\r\nThe opthalmic agent is used for the treatment of neovascular (wet) age-related mascular degeneration (AMD) and macular edema following central retinal vein occulsion (CRVO). The systemic injection, known as ziv-aflibercept, in combination with 5-fluorouracil, leucovorin, irinotecan-(FOLFIRI), is for the treatment of metastatic colorectal cancer that is resistant to or progressed following treatment with oxaliplatin.', 'Compared to other anti-VEGF drugs like bevacizumab and ranibizumab, aflibercept has a higher binding affinity to VEGF-A (Kd = 0.5 pM).', 'Ablibercept is a recombinant fusion protein that acts as a decoy receptor for the ligands, vascular endothelial growth factor-A (VEGF-A) and placental growth factor (PIGF). It prevents these ligands to binding to endothelial receptors, VEGFR-1 and VEGFR-2, to suppress neovascularization and decrease vascular permeability. This ultimately will slow vision loss or the progression of metastatic colorectal cancer.', '012.PNG', 'VEGF Trap\r\nVEGF Trap-Eye\r\nZiv-Aflibercept', 'Signal: Danger\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 33 companies from 10 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH315 (24.24%): Causes skin irritation [Warning Skin corrosion/irritation]\r\nH319 (24.24%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]\r\nH341 (72.73%): Suspected of causing genetic defects [Warning Germ cell mutagenicity]\r\nH350 (87.88%): May cause cancer [Danger Carcinogenicity]\r\nH360 (100%): May damage fertility or the unborn child [Danger Reproductive toxicity]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.\r\n\r\nPrecautionary Statement Codes\r\nP201, P202, P264, P280, P281, P302+P352, P305+P351+P338, P308+P313, P321, P332+P313, P337+P313, P362, P405, and P501\r\n(The corresponding statement to each P-code can be found here.)      Skin, Eye, and Respiratory Irritations\r\nOcular irritation occurred in 5-15% of patients receiving capecitabine for metastatic breast cancer or metastatic colorectal cancer. Abnormal vision occurred in 5% of patients receiving capecitabine monotherapy for metastatic colorectal cancer. Severe ocular irritation and corneal deposits were reported in 2 patients with a history of keratoconjunctivitis sicca who received higher doses of capecitabine for metastatic breast cancer or metastatic colon cancer. Ophthalmic examination is recommended for patients receiving capecitabine who experience severe ocular symptoms or decreased visual acuity. Increased lacrimation was reported in 12% of patients receiving capecitabine and docetaxel and in 7% of those receiving docetaxel alone for metastatic breast cancer. Among patients receiving capecitabine alone as adjuvant therapy for stage III colon can');
INSERT INTO `drug` VALUES ('187', '013', 'Leucovorin calcium', 'Small Molecule', 'Folinic Acid (also known as 5-formyl tetrahydrofolic acid or leucovorin) is the 5-formyl derivative of tetrahydrofolic acid, a necessary co-factor in the body. Commercially available leucovorin is composed of a 1:1 racemic mixture of the dextrorotary and levorotary isomers, while levoleucovorin contains only the pharmacologically active levo-isomer. In vitro, the levo-isomer has been shown to be rapidly converted to the biologically available methyl-tetrahydrofolate form while the dextro form is slowly excreted by the kidneys. Despite this difference in activity, the two commercially available forms have been shown to be pharmacokinetically identical and may be used interchangeably with limited differences in efficacy or side effects (Kovoor et al, 2009).\r\n\r\nAs folate analogs, leucovorin and levoleucovorin are both used to counteract the toxic effects of folic acid antagonists, such as methotrexate, which act by inhibiting the enzyme dihydrofolate reductase (DHFR). They are indicated for use as rescue therapy following use of high-dose methotrexate in the treatment of osteosarcoma or for diminishing the toxicity associated with inadvertent overdosage of folic acid antagonists. Injectable forms are also indicated for use in the treatment of megaloblastic anemias due to folic acid deficiency when oral therapy is not feasible and for use in combination with 5-fluorouracil to prolong survival in the palliative treatment of patients with advanced colorectal cancer.\r\n\r\nFolic acid is an essential B vitamin required by the body for the synthesis of purines, pyrimidines, and methionine before incorporation into DNA or protein. However, in order to function in this role, it must first be reduced by the enzyme dihydrofolate reductase (DHFR) into the cofactors dihydrofolate (DHF) and tetrahydrofolate (THF). This important pathway, which is required for de novo synthesis of nucleic acids and amino acids, is disrupted when high-dose methotrexate is used for cancer therapy. As met', '\r\nFor the treatment of osteosarcoma (after high dose methotrexate therapy). Used to diminish the toxicity and counteract the effects of impaired methotrexate elimination and of inadvertent overdosages of folic acid antagonists, and to treat megaloblastic anemias due to folic acid deficiency. Also used in combination with 5-fluorouracil to prolong survival in the palliative treatment of patients with advanced colorectal cancer.', 'Leucovorin is one of several active, chemically reduced derivatives of folic acid. It is useful as an antidote to drugs which act as folic acid antagonists. Leucovorin is a mixture of the diastereoisomers of the 5-formyl derivative of tetrahydrofolic acid (THF). The biologically active compound of the mixture is the (-)-l-isomer, known as Citrovorum factor or (-)-folinic acid. Leucovorin does not require reduction by the enzyme dihydrofolate reductase in order to participate in reactions utilizing folates as a source of “one-carbon” moieties. Administration of leucovorin can counteract the therapeutic and toxic effects of folic acid antagonists such as methotrexate, which act by inhibiting dihydrofolate reductase. Leucovorin has also been used to enhance the activity of fluorouracil.', 'As leucovorin is a derivative of folic acid, it can be used to increase levels of folic acid under conditions favoring folic acid inhibition (following treatment of folic acid antagonists such as methotrexate). Leucovorin enhances the activity of fluorouracil by stabilizing the bond of the active metabolite (5-FdUMP) to the enzyme thymidylate synthetase.\r\n', '013.PNG', '(5-formyl-5,6,7,8-tetrahydropteroyl)glutamate\r\n10-Formyl-7,8-dihydrofolic acid\r\n5-Formyl-5,6,7,8-tetrahydrofolic acid\r\n5-Formyl-5,6,7,8-tetrahydropteroyl-L-glutamic acid\r\n5-Formyltetrahydrofolate\r\n5-formyltetrahydrofolic acid', 'Signal: Danger\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 2 companies from 2 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH290 (50%): May be corrosive to metals [Warning Corrosive to Metals]\r\nH301 (50%): Toxic if swallowed [Danger Acute toxicity, oral]\r\nH302 (50%): Harmful if swallowed [Warning Acute toxicity, oral]\r\nH311 (100%): Toxic in contact with skin [Danger Acute toxicity, dermal]\r\nH315 (50%): Causes skin irritation [Warning Skin corrosion/irritation]\r\nH317 (50%): May cause an allergic skin reaction [Warning Sensitization, Skin]\r\nH319 (50%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]\r\nH331 (100%): Toxic if inhaled [Danger Acute toxicity, inhalation]\r\nH334 (50%): May cause allergy or asthma symptoms or breathing difficulties if inhaled [Danger Sensitization, respiratory]\r\nH335 (50%): May cause respiratory irritation [Warning Specific target organ toxicity, single exposure; Respiratory tract irritation]\r\nH340 (50%): May cause genetic defects [Danger Germ cell mutagenicity]\r\nH350 (50%): May cause cancer [Danger Carcinogenicity]\r\nH351 (50%): Suspected of causing cancer [Warning Carcinogenicity]\r\nH360 (50%): May damage fertility or the unborn child [Danger Reproductive toxicity]\r\nH362 (50%): May cause harm to breast-fed children [Reproductive toxicity, effects on or via lactation]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.    ');
INSERT INTO `drug` VALUES ('188', '014', 'Levoleucovorin calcium ', 'Small Molecule', 'Levoleucovorin is the enantiomerically active form of Folinic Acid (also known as 5-formyl tetrahydrofolic acid or leucovorin). Commercially available leucovorin is composed of a 1:1 racemic mixture of the dextrorotary and levorotary isomers, while levoleucovorin contains only the pharmacologically active levo-isomer. In vitro, the levo-isomer has been shown to be rapidly converted to the biologically available methyl-tetrahydrofolate form while the dextro form is slowly excreted by the kidneys. Despite this difference in activity, the two commercially available forms have been shown to be pharmacokinetically identical and may be used interchangeably with limited differences in efficacy or side effects (Kovoor et al, 2009).\r\n\r\nAs folate analogs, levoleucovorin and leucovorin are both used to counteract the toxic effects of folic acid antagonists, such as methotrexate, which act by inhibiting the enzyme dihydrofolate reductase (DHFR). They are indicated for use as rescue therapy following use of high-dose methotrexate in the treatment of osteosarcoma or for diminishing the toxicity associated with inadvertent overdosage of folic acid antagonists. Levoleucovorin, as the product Fusilev (FDA), has an additional indication for use in combination chemotherapy with 5-fluorouracil in the palliative treatment of patients with advanced metastatic colorectal cancer.\r\n\r\nFolic acid is an essential B vitamin required by the body for the synthesis of purines, pyrimidines, and methionine before incorporation into DNA or protein. However, in order to function in this role, it must first be reduced by the enzyme dihydrofolate reductase (DHFR) into the cofactors dihydrofolate (DHF) and tetrahydrofolate (THF). This important pathway, which is required for de novo synthesis of nucleic acids and amino acids, is disrupted when high-dose methotrexate is used for cancer therapy. As methotrexate functions as a DHFR inhibitor to prevent DNA synthesis in rapidly dividing cells, it also preven', 'Levoleucovorin is indicated for use as rescue therapy following high-dose methotrexate in the treatment of osteosarcoma or for diminishing the toxicity associated with inadvertent overdosage of folic acid antagonists. Levoleucovorin, as the product Fusilev (FDA, dosed at one-half the usual dose of racemic d,l-leucovorin), has an additional indication for use in combination chemotherapy with 5-fluorouracil in the palliative treatment of patients with advanced metastatic colorectal cancer (although they should not be mixed in the same infusion as a precipitate may form).', '\r\nLevoleucovorin is actively and passively transported across cell membranes. In vivo, levoleucovorin is converted to 5-methyltetrahydrofolic acid (5-methyl-THF), the primary circulating form of active reduced folate. Levoleucovorin and 5-methyl-THF are polyglutamated intracellularly by the enzyme folylpolyglutamate synthetase. Folylpolyglutamates are active and participate in biochemical pathways that require reduced folate.', 'Folic acid is an essential B vitamin required by the body for the synthesis of purines, pyrimidines, and methionine before incorporation into DNA or protein. However, in order to function in this role, it must first be reduced by the enzyme dihydrofolate reductase (DHFR) into the cofactors dihydrofolate (DHF) and tetrahydrofolate (THF). This important pathway, which is required for de novo synthesis of nucleic acids and amino acids, is disrupted when high-dose methotrexate is used for cancer therapy. As methotrexate functions as a DHFR inhibitor to prevent DNA synthesis in rapidly dividing cells, it also prevents the formation of DHF and THF. This results in a deficiency of coenzymes and a resultant buildup of toxic substances that are responsible for numerous adverse side effects of methotrexate therapy. As levoleucovorin and leucovorin are analogs of tetrahydrofolate (THF), they are able to bypass DHFR reduction and act as a cellular replacement for the co-factor THF, thereby preventing these toxic side effects.', '014.PNG', '(6S)-5-Formyl-5,6,7,8-tetrahydrofolic acid\r\n(6S)-5-formyltetrahydrofolic acid\r\n(6S)-Folinic acid\r\n(6S)-Leucovorin\r\n(S)-Leucovorin\r\nCitrovorum factor\r\nL-Folinic acid\r\nLevofolene\r\nLevofolinic acid\r\nN-[4-({[(6S)-2-amino-5-formyl-4-oxo-1,4,5,6,7,8-hexahydropteridin-6-yl]methyl}amino)benzoyl]-L-glutamic acid', 'Signal: Danger\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 2 companies from 2 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH290 (50%): May be corrosive to metals [Warning Corrosive to Metals]\r\nH301 (50%): Toxic if swallowed [Danger Acute toxicity, oral]\r\nH302 (50%): Harmful if swallowed [Warning Acute toxicity, oral]\r\nH311 (100%): Toxic in contact with skin [Danger Acute toxicity, dermal]\r\nH315 (50%): Causes skin irritation [Warning Skin corrosion/irritation]\r\nH317 (50%): May cause an allergic skin reaction [Warning Sensitization, Skin]\r\nH319 (50%): Causes serious eye irritation [Warning Serious eye damage/eye irritation]\r\nH331 (100%): Toxic if inhaled [Danger Acute toxicity, inhalation]\r\nH334 (50%): May cause allergy or asthma symptoms or breathing difficulties if inhaled [Danger Sensitization, respiratory]\r\nH335 (50%): May cause respiratory irritation [Warning Specific target organ toxicity, single exposure; Respiratory tract irritation]\r\nH340 (50%): May cause genetic defects [Danger Germ cell mutagenicity]\r\nH350 (50%): May cause cancer [Danger Carcinogenicity]\r\nH351 (50%): Suspected of causing cancer [Warning Carcinogenicity]\r\nH360 (50%): May damage fertility or the unborn child [Danger Reproductive toxicity]\r\nH362 (50%): May cause harm to breast-fed children [Reproductive toxicity, effects on or via lactation]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.    ');
INSERT INTO `drug` VALUES ('189', '015', 'Floxuridine', 'Small Molecule', 'An antineoplastic antimetabolite that is metabolized to fluorouracil when administered by rapid injection. Floxuridine is available as a sterile, nonpyrogenic, lyophilized powder for reconstitution. When administered by slow, continuous, intra-arterial infusion, it is converted to floxuridine monophosphate. It has been used to treat hepatic metastases of gastrointestinal adenocarcinomas and for palliation in malignant neoplasms of the liver and gastrointestinal tract. [PubChem]', '\r\nFor palliative management of gastrointestinal adenocarcinoma metastatic to the liver, when given by continuous regional intra-arterial infusion in carefully selected patients who are considered incurable by surgery or other means. Also for the palliative management of liver cancer (usually administered by hepatic intra-arterial infusion).', 'Floxuridine is a pyrimidine analog that acts as an inhibitor of the S-phase of cell division. This selectively kills rapidly dividing cells. Floxuridine is an anti-metabolite. Anti-metabolites masquerade as pyramidine-like molecules which prevents normal pyrimidines from being incorporated into DNA during the S phase of the cell cycle. Flurouracil (the end-product of catabolism of floxuridine) blocks an enzyme which converts cytosine nucleosides into the deoxy derivative. In addition, DNA synthesis is further inhibited because fluoruracil blocks the incorporation of the thymdine nucleotide into the DNA strand.', 'Floxuridine is rapidly catabolized to 5-fluorouracil, which is the active form of the drug. The primary effect is interference with DNA synthesis and to a lesser extent, inhibition of RNA formation through the drug\'s incorporation into RNA, thus leading to the production of fraudulent RNA. Fluorouracil also inhibits uracil riboside phophorylase, which prevents the utilization of preformed uracil in RNA synthesis. As well, the monophosphate of floxuridine, 5-fluoro-2\'-deoxyuridine-5\'-phosphate (FUDR-MP) inhibits the enzyme thymidylate synthetase. This leads to the inhibition of methylation of deoxyuridylic acid to thymidylic acid, thus interfering with DNA synthesis.', '015.PNG', '1-(2-Deoxy-beta-D-ribofuranosyl)-5-fluorouracil\r\n1-beta-D-2\'-Deoxyribofuranosyl-5-flurouracil\r\n1beta-D-2\'-Deoxyribofuranosyl-5-flurouracil\r\n2\'-Deoxy-5-fluorouridine\r\n5-Fluoro-2-desoxyuridine\r\n5-Fluorodeoxyuridine\r\n5-Fluorouracil 2\'-deoxyriboside\r\n5-Fluorouracil deoxyriboside\r\n5FDU\r\nbeta-5-Fluoro-2\'-deoxyuridine\r\nDeoxyfluorouridine\r\nFdU', 'Signal: Warning\r\nGHS Hazard Statements\r\nAggregated GHS information provided by 27 companies from 3 notifications to the ECHA C&L Inventory. Each notification may be associated with multiple companies.\r\n\r\nH302 (96.3%): Harmful if swallowed [Warning Acute toxicity, oral]\r\nH312 (96.3%): Harmful in contact with skin [Warning Acute toxicity, dermal]\r\nH332 (96.3%): Harmful if inhaled [Warning Acute toxicity, inhalation]\r\nH351 (100%): Suspected of causing cancer [Warning Carcinogenicity]\r\n\r\nInformation may vary between notifications depending on impurities, additives, and other factors. The percentage value in parenthesis indicates the notified classification ratio from companies that provide hazard codes. Only hazard codes with percentage values above 10% are shown.\r\n\r\nPrecautionary Statement Codes\r\nP201, P202, P261, P264, P270, P271, P280, P281, P301+P312, P302+P352, P304+P312, P304+P340, P308+P313, P312, P322, P330, P363, P405, and P501\r\n(The corresponding statement to each P-code can be found here.)    Wear approved respiratory protection, chemically compatible gloves, and protective clothing. Wipe up spillage or collect spillage using a high-efficiency vacuum cleaner. Avoid breathing dust. Place spillage in appropriately labeled container for disposal. Wash spill site.\r\nUnited States Pharmacopeial Convention, Inc (USP); MSDS Database Online; Material Safety Data Sheet: Trifluridine; Catalog Number: 1686309; (Revision Date: December 5, 2008)    SRP: Expired or waste pharmaceuticals shall carefully take into consideration applicable DEA, EPA, and FDA regulations. It is not appropriate to dispose by flushing the pharmaceutical down the toilet or discarding to trash. If possible return the pharmaceutical to the manufacturer for proper disposal being careful to properly label and securely package the material. Alternatively, the waste pharmaceutical shall be labeled, securely packaged and transported by a state licensed medical waste contractor to dispose by burial in a li');

-- ----------------------------
-- Table structure for gene
-- ----------------------------
DROP TABLE IF EXISTS `gene`;
CREATE TABLE `gene` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'gene',
  `fid` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Gene` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Definition` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Organism` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gene
-- ----------------------------
INSERT INTO `gene` VALUES ('39', '	\r\n2932   ', 'GSK3B; glycogen synthase kinase 3 beta', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('40', '	\r\n3845   ', '	\r\nKRAS; KRAS proto-oncogene, GTPase', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('41', '	3845     ', '	\r\nKRAS; KRAS proto-oncogene, GTPase', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('42', '001       ', 'beta-Catenin (mutation) ', '(RefSeq) catenin beta 1', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('43', '002       ', 'K-ras (mutation)', '(RefSeq) KRAS proto-oncogene, GTPase', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('44', '003       ', 'APC (germline mutation (FAP), somatic mutation)', '(RefSeq) APC2, WNT signaling pathway regulator\r\n', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('45', '004       ', 'DCC (deletion)', '(RefSeq) DCC netrin 1 receptor', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('46', '005       ', 'TGF-betaRII (mutation)', '(RefSeq) transforming growth factor beta receptor 2', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('47', '006       ', 'Smad2 (mutation)', '(RefSeq) SMAD family member 2', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('48', '007       ', 'Smad4 (deletion)', '	\r\n(RefSeq) SMAD family member 4', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('49', '008       ', 'BAX (mutation)', '(RefSeq) BCL2 associated X, apoptosis regulator', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('50', '009       ', 'p53 (deletion) ', '(RefSeq) tumor protein p53', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('51', '010       ', 'MLH1 (germline mutation (HNPCC), LOH, promoter hypermethylation)', '(RefSeq) mutL homolog 1', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('52', '011       ', 'MSH3 (somatic frameshift mutation)', '(RefSeq) mutS homolog 2', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('53', '012       ', 'MSH6 (germline mutation (HNPCC), LOH, somatic frameshift mutation)', '(RefSeq) mutS homolog 3', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('54', '013       ', 'GALNT12 (germline mutation, somatic mutation)', '(RefSeq) mutS homolog 6', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('55', '014       ', 'EGF (overexpression)', 'NULL', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('56', '015       ', 'TGFA (overexpression)', '(RefSeq) epiregulin', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('57', '016       ', 'EREG (overexpression) ', '	\r\n(RefSeq) epiregulin', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('58', '017       ', 'AREG (overexpression)', '(RefSeq) amphiregulin', 'Homo sapiens (human)');
INSERT INTO `gene` VALUES ('59', '10000     ', '	\r\nAKT3; AKT serine/threonine kinase 3', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('60', '1026      ', '	\r\nCDKN1A; cyclin dependent kinase inhibitor 1A', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('61', '10912     ', '	\r\nGADD45G; growth arrest and DNA damage inducible gamma', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('62', '1499      ', '	\r\nCTNNB1; catenin beta 1', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('63', '1630      ', '	\r\nDCC; DCC netrin 1 receptor', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('64', '1643      ', '	\r\nDDB2; damage specific DNA binding protein 2', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('65', '1647      ', '	\r\nGADD45A; growth arrest and DNA damage inducible alpha', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('66', '1956      ', '	\r\nEGFR; epidermal growth factor receptor', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('67', '207       ', 'AKT1; AKT serine/threonine kinase 1', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('68', '208       ', 'AKT2; AKT serine/threonine kinase 2', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('69', '2475      ', '	\r\nMTOR; mechanistic target of rapamycin', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('70', '26060     ', '	\r\nAPPL1; adaptor protein, phosphotyrosine interacting with PH domain and leucine zipper 1', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('71', '2885      ', '	\r\nGRB2; growth factor receptor bound protein 2', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('72', '2932      ', 'GSK3B; glycogen synthase kinase 3 beta', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('73', '324       ', '	\r\nAPC; APC, WNT signaling pathway regulator', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('74', '3265      ', '	\r\nHRAS; HRas proto-oncogene, GTPase', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('75', '332       ', '	\r\nBIRC5; baculoviral IAP repeat containing 5', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('76', '369       ', 'ARAF; A-Raf proto-oncogene, serine/threonine kinase', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('77', '3845      ', '	\r\nKRAS; KRAS proto-oncogene, GTPase', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('78', '4087      ', '	\r\nSMAD2; SMAD family member 2', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('79', '4088      ', '	\r\nSMAD2; SMAD family member 3', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('80', '4609      ', '	\r\nMYC; MYC proto-oncogene, bHLH transcription factor', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('81', '4616      ', '	\r\nGADD45B; growth arrest and DNA damage inducible beta', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('82', '4893      ', '	\r\nNRAS; NRAS proto-oncogene, GTPase', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('83', '51176     ', 'LEF1; lymphoid enhancer binding factor 1\r\n', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('84', '51426     ', '	\r\nPOLK; DNA polymerase kappa', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('85', '5290      ', '	\r\nPIK3CA; phosphatidylinositol-4,5-bisphosphate 3-kinase ', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('86', '5291      ', 'PIK3CB; phosphatidylinositol-4,5-bisphosphate 3-kinase catalytic subunit beta', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('87', '5293      ', 'PIK3CD; phosphatidylinositol-4,5-bisphosphate 3-kinase catalytic subunit delta', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('88', '54205     ', '	\r\nCYCS; cytochrome c, somatic', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('89', '5594      ', 'MAPK1; mitogen-activated protein kinase 1', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('90', '5595      ', '	\r\nMAPK3; mitogen-activated protein kinase 3', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('91', '5604      ', '	\r\nMAP2K1; mitogen-activated protein kinase kinase 1', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('92', '5605      ', '	\r\nMAP2K2; mitogen-activated protein kinase kinase 2', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('93', '572       ', '	\r\nBAD; BCL2 associated agonist of cell death', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('94', '578       ', '	\r\nBAX; BCL2 associated X, apoptosis regulator', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('95', '581       ', '	\r\nBAX; BCL2 associated X, apoptosis regulator', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('96', '5894      ', '	\r\nRAF1; Raf-1 proto-oncogene, serine/threonine kinase', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('97', '5898      ', '	\r\nRALA; RAS like proto-oncogene A', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('98', '5899      ', 'RALB; RAS like proto-oncogene B', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('99', '5900      ', '	\r\nRALGDS; ral guanine nucleotide dissociation stimulator', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('100', '595       ', 'CCND1; cyclin D1', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('101', '6198      ', '	\r\nRPS6KB1; ribosomal protein S6 kinase B1', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('102', '6199      ', 'RPS6KB2; ribosomal protein S6 kinase B2', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('103', '6654      ', 'SOS1; SOS Ras/Rac guanine nucleotide exchange factor 1', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('104', '6655      ', '	\r\nSOS2; SOS Ras/Rho guanine nucleotide exchange factor 2', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('105', '673       ', 'BRAF; B-Raf proto-oncogene, serine/threonine kinase', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('106', '6932      ', '	\r\nTCF7; transcription factor 7', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('107', '6934      ', 'TCF7L2; transcription factor 7 like 2', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('108', '7039      ', '	\r\nTGFA; transforming growth factor alpha', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('109', '7046      ', '	\r\nTGFBR1; transforming growth factor beta receptor 1', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('110', '7048      ', '	\r\nTGFBR2; transforming growth factor beta receptor 2', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('111', '7157      ', '	\r\nTP53; tumor protein p53', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('112', '8312      ', 'AXIN1; axin 1', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('113', '8313      ', '	\rAXIN2; axin 2', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('114', '83439     ', '	\r\nTCF7L1; transcription factor 7 like 1', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('115', '836       ', '	\r\nCASP3; caspase 3', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('116', '842       ', '	\r\nCASP9; caspase 9', 'NULL', 'NULL');
INSERT INTO `gene` VALUES ('117', '34', '4', '4', '4');
INSERT INTO `gene` VALUES ('118', '555', '55', '55', '5');
INSERT INTO `gene` VALUES ('119', 'd', 'd', 'dd', 'dd');
INSERT INTO `gene` VALUES ('120', 'gggg', 'gg', 'gggg', 'gg');

-- ----------------------------
-- Table structure for gene_hsa
-- ----------------------------
DROP TABLE IF EXISTS `gene_hsa`;
CREATE TABLE `gene_hsa` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '基因和路通表',
  `gene` int(11) DEFAULT NULL COMMENT '基因',
  `hsa` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '路通',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=636 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gene_hsa
-- ----------------------------
INSERT INTO `gene_hsa` VALUES ('316', '1', 'hsa04015');
INSERT INTO `gene_hsa` VALUES ('317', '1', 'hsa04310');
INSERT INTO `gene_hsa` VALUES ('318', '1', 'hsa04390');
INSERT INTO `gene_hsa` VALUES ('319', '1', 'hsa04510');
INSERT INTO `gene_hsa` VALUES ('320', '1', 'hsa04520');
INSERT INTO `gene_hsa` VALUES ('321', '1', 'hsa04550');
INSERT INTO `gene_hsa` VALUES ('322', '1', 'hsa04670');
INSERT INTO `gene_hsa` VALUES ('323', '1', 'hsa04916');
INSERT INTO `gene_hsa` VALUES ('324', '1', 'hsa04919');
INSERT INTO `gene_hsa` VALUES ('325', '1', 'hsa04934');
INSERT INTO `gene_hsa` VALUES ('326', '1', 'hsa05100');
INSERT INTO `gene_hsa` VALUES ('327', '1', 'hsa05130');
INSERT INTO `gene_hsa` VALUES ('328', '1', 'hsa05165');
INSERT INTO `gene_hsa` VALUES ('329', '1', 'hsa05166');
INSERT INTO `gene_hsa` VALUES ('330', '1', 'hsa05167');
INSERT INTO `gene_hsa` VALUES ('331', '1', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('332', '1', 'hsa05205');
INSERT INTO `gene_hsa` VALUES ('333', '1', 'hsa05212 ');
INSERT INTO `gene_hsa` VALUES ('334', '1', 'hsa05215');
INSERT INTO `gene_hsa` VALUES ('335', '1', 'hsa05216');
INSERT INTO `gene_hsa` VALUES ('336', '1', 'hsa05217');
INSERT INTO `gene_hsa` VALUES ('337', '1', 'hsa05218');
INSERT INTO `gene_hsa` VALUES ('338', '1', 'hsa05224');
INSERT INTO `gene_hsa` VALUES ('339', '1', 'hsa05225');
INSERT INTO `gene_hsa` VALUES ('340', '1', 'hsa05226 ');
INSERT INTO `gene_hsa` VALUES ('341', '2', 'hsa01521');
INSERT INTO `gene_hsa` VALUES ('342', '2', 'hsa01522');
INSERT INTO `gene_hsa` VALUES ('343', '2', 'hsa04010');
INSERT INTO `gene_hsa` VALUES ('344', '2', 'hsa04012');
INSERT INTO `gene_hsa` VALUES ('345', '2', 'hsa04014');
INSERT INTO `gene_hsa` VALUES ('346', '2', 'hsa04015');
INSERT INTO `gene_hsa` VALUES ('347', '2', 'hsa04062');
INSERT INTO `gene_hsa` VALUES ('348', '2', 'hsa04068');
INSERT INTO `gene_hsa` VALUES ('349', '2', 'hsa04071');
INSERT INTO `gene_hsa` VALUES ('350', '2', 'hsa04072');
INSERT INTO `gene_hsa` VALUES ('351', '2', 'hsa04137');
INSERT INTO `gene_hsa` VALUES ('352', '2', 'hsa04140');
INSERT INTO `gene_hsa` VALUES ('353', '2', 'hsa04150');
INSERT INTO `gene_hsa` VALUES ('354', '2', 'hsa04151');
INSERT INTO `gene_hsa` VALUES ('355', '2', 'hsa04210');
INSERT INTO `gene_hsa` VALUES ('356', '2', 'hsa04211');
INSERT INTO `gene_hsa` VALUES ('357', '2', 'hsa04213');
INSERT INTO `gene_hsa` VALUES ('358', '2', 'hsa04218');
INSERT INTO `gene_hsa` VALUES ('359', '2', 'hsa04360');
INSERT INTO `gene_hsa` VALUES ('360', '2', 'hsa04370');
INSERT INTO `gene_hsa` VALUES ('361', '2', 'hsa04371');
INSERT INTO `gene_hsa` VALUES ('362', '2', 'hsa04540');
INSERT INTO `gene_hsa` VALUES ('363', '2', 'hsa04550');
INSERT INTO `gene_hsa` VALUES ('364', '2', 'hsa04625');
INSERT INTO `gene_hsa` VALUES ('365', '2', 'hsa04650');
INSERT INTO `gene_hsa` VALUES ('366', '2', 'hsa04660');
INSERT INTO `gene_hsa` VALUES ('367', '2', 'hsa04662');
INSERT INTO `gene_hsa` VALUES ('368', '2', 'hsa04664');
INSERT INTO `gene_hsa` VALUES ('369', '2', 'hsa04714 ');
INSERT INTO `gene_hsa` VALUES ('370', '2', 'hsa04720');
INSERT INTO `gene_hsa` VALUES ('371', '2', 'hsa04722');
INSERT INTO `gene_hsa` VALUES ('372', '2', 'hsa04725');
INSERT INTO `gene_hsa` VALUES ('373', '2', 'hsa04726');
INSERT INTO `gene_hsa` VALUES ('374', '2', 'hsa04730');
INSERT INTO `gene_hsa` VALUES ('375', '2', 'hsa04810');
INSERT INTO `gene_hsa` VALUES ('376', '2', 'hsa04910');
INSERT INTO `gene_hsa` VALUES ('377', '2', 'hsa04912');
INSERT INTO `gene_hsa` VALUES ('378', '2', 'hsa04914');
INSERT INTO `gene_hsa` VALUES ('379', '2', 'hsa04915');
INSERT INTO `gene_hsa` VALUES ('380', '2', 'hsa04916');
INSERT INTO `gene_hsa` VALUES ('381', '2', 'hsa04917');
INSERT INTO `gene_hsa` VALUES ('382', '2', 'hsa04919');
INSERT INTO `gene_hsa` VALUES ('383', '2', 'hsa04921');
INSERT INTO `gene_hsa` VALUES ('384', '2', 'hsa04926');
INSERT INTO `gene_hsa` VALUES ('385', '2', 'hsa04933');
INSERT INTO `gene_hsa` VALUES ('386', '2', 'hsa04960');
INSERT INTO `gene_hsa` VALUES ('387', '2', 'hsa05034');
INSERT INTO `gene_hsa` VALUES ('388', '2', 'hsa05160');
INSERT INTO `gene_hsa` VALUES ('389', '2', 'hsa05161');
INSERT INTO `gene_hsa` VALUES ('390', '2', 'hsa05165');
INSERT INTO `gene_hsa` VALUES ('391', '2', 'hsa05166');
INSERT INTO `gene_hsa` VALUES ('392', '2', 'hsa05167');
INSERT INTO `gene_hsa` VALUES ('393', '2', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('394', '2', 'hsa05203');
INSERT INTO `gene_hsa` VALUES ('395', '2', 'hsa05205');
INSERT INTO `gene_hsa` VALUES ('396', '2', 'hsa05206');
INSERT INTO `gene_hsa` VALUES ('397', '2', 'hsa05211');
INSERT INTO `gene_hsa` VALUES ('398', '2', 'hsa05212');
INSERT INTO `gene_hsa` VALUES ('399', '2', 'hsa05213');
INSERT INTO `gene_hsa` VALUES ('400', '2', 'hsa05214');
INSERT INTO `gene_hsa` VALUES ('401', '2', 'hsa05215');
INSERT INTO `gene_hsa` VALUES ('402', '2', 'hsa05216');
INSERT INTO `gene_hsa` VALUES ('403', '2', 'hsa05218');
INSERT INTO `gene_hsa` VALUES ('404', '2', 'hsa05219');
INSERT INTO `gene_hsa` VALUES ('405', '2', 'hsa05220');
INSERT INTO `gene_hsa` VALUES ('406', '2', 'hsa05221');
INSERT INTO `gene_hsa` VALUES ('407', '2', 'hsa05223');
INSERT INTO `gene_hsa` VALUES ('408', '2', 'hsa05224');
INSERT INTO `gene_hsa` VALUES ('409', '2', 'hsa05225');
INSERT INTO `gene_hsa` VALUES ('410', '2', 'hsa05226');
INSERT INTO `gene_hsa` VALUES ('411', '2', 'hsa05230');
INSERT INTO `gene_hsa` VALUES ('412', '2', 'hsa05231');
INSERT INTO `gene_hsa` VALUES ('413', '3', 'hsa04310');
INSERT INTO `gene_hsa` VALUES ('414', '3', 'hsa04390');
INSERT INTO `gene_hsa` VALUES ('415', '3', 'hsa04550');
INSERT INTO `gene_hsa` VALUES ('416', '3', 'hsa04810');
INSERT INTO `gene_hsa` VALUES ('417', '3', 'hsa04934');
INSERT INTO `gene_hsa` VALUES ('418', '3', 'hsa05165');
INSERT INTO `gene_hsa` VALUES ('419', '3', 'hsa05166');
INSERT INTO `gene_hsa` VALUES ('420', '3', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('421', '3', 'hsa05206');
INSERT INTO `gene_hsa` VALUES ('422', '3', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('423', '3', 'hsa05213');
INSERT INTO `gene_hsa` VALUES ('424', '3', 'hsa05217');
INSERT INTO `gene_hsa` VALUES ('425', '3', 'hsa05224');
INSERT INTO `gene_hsa` VALUES ('426', '3', 'hsa05225');
INSERT INTO `gene_hsa` VALUES ('427', '3', 'hsa05226');
INSERT INTO `gene_hsa` VALUES ('428', '4', 'hsa04360');
INSERT INTO `gene_hsa` VALUES ('429', '4', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('430', '4', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('431', '5', 'hsa04010');
INSERT INTO `gene_hsa` VALUES ('432', '5', 'hsa04060');
INSERT INTO `gene_hsa` VALUES ('433', '5', 'hsa04068');
INSERT INTO `gene_hsa` VALUES ('434', '5', 'hsa04144');
INSERT INTO `gene_hsa` VALUES ('435', '5', 'hsa04218');
INSERT INTO `gene_hsa` VALUES ('436', '5', 'hsa04350');
INSERT INTO `gene_hsa` VALUES ('437', '5', 'hsa04380');
INSERT INTO `gene_hsa` VALUES ('438', '5', 'hsa04390');
INSERT INTO `gene_hsa` VALUES ('439', '5', 'hsa04520');
INSERT INTO `gene_hsa` VALUES ('440', '5', 'hsa04659');
INSERT INTO `gene_hsa` VALUES ('441', '5', 'hsa04926');
INSERT INTO `gene_hsa` VALUES ('442', '5', 'hsa04933');
INSERT INTO `gene_hsa` VALUES ('443', '5', 'hsa05142');
INSERT INTO `gene_hsa` VALUES ('444', '5', 'hsa05166');
INSERT INTO `gene_hsa` VALUES ('445', '5', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('446', '5', 'hsa05202');
INSERT INTO `gene_hsa` VALUES ('447', '5', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('448', '5', 'hsa05212');
INSERT INTO `gene_hsa` VALUES ('449', '5', 'hsa05220');
INSERT INTO `gene_hsa` VALUES ('450', '5', 'hsa05225');
INSERT INTO `gene_hsa` VALUES ('451', '5', 'hsa05226');
INSERT INTO `gene_hsa` VALUES ('452', '6', 'hsa04068');
INSERT INTO `gene_hsa` VALUES ('453', '6', 'hsa04110');
INSERT INTO `gene_hsa` VALUES ('454', '6', 'hsa04144');
INSERT INTO `gene_hsa` VALUES ('455', '6', 'hsa04218');
INSERT INTO `gene_hsa` VALUES ('456', '6', 'hsa04350');
INSERT INTO `gene_hsa` VALUES ('457', '6', 'hsa04371');
INSERT INTO `gene_hsa` VALUES ('458', '6', 'hsa04390');
INSERT INTO `gene_hsa` VALUES ('459', '6', 'hsa04520');
INSERT INTO `gene_hsa` VALUES ('460', '6', 'hsa04550');
INSERT INTO `gene_hsa` VALUES ('461', '6', 'hsa04659');
INSERT INTO `gene_hsa` VALUES ('462', '6', 'hsa04926');
INSERT INTO `gene_hsa` VALUES ('463', '6', 'hsa04933');
INSERT INTO `gene_hsa` VALUES ('464', '6', 'hsa05142');
INSERT INTO `gene_hsa` VALUES ('465', '6', 'hsa05166');
INSERT INTO `gene_hsa` VALUES ('466', '6', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('467', '6', 'hsa05205');
INSERT INTO `gene_hsa` VALUES ('468', '6', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('469', '6', 'hsa05212');
INSERT INTO `gene_hsa` VALUES ('470', '6', 'hsa05225');
INSERT INTO `gene_hsa` VALUES ('471', '6', 'hsa05226');
INSERT INTO `gene_hsa` VALUES ('472', '6', 'hsa05321');
INSERT INTO `gene_hsa` VALUES ('473', '7', 'hsa04068');
INSERT INTO `gene_hsa` VALUES ('474', '7', 'hsa04110');
INSERT INTO `gene_hsa` VALUES ('475', '7', 'hsa04310');
INSERT INTO `gene_hsa` VALUES ('476', '7', 'hsa04350');
INSERT INTO `gene_hsa` VALUES ('477', '7', 'hsa04371');
INSERT INTO `gene_hsa` VALUES ('478', '7', 'hsa04390');
INSERT INTO `gene_hsa` VALUES ('479', '7', 'hsa04520');
INSERT INTO `gene_hsa` VALUES ('480', '7', 'hsa04550');
INSERT INTO `gene_hsa` VALUES ('481', '7', 'hsa04659');
INSERT INTO `gene_hsa` VALUES ('482', '7', 'hsa04933');
INSERT INTO `gene_hsa` VALUES ('483', '7', 'hsa05161');
INSERT INTO `gene_hsa` VALUES ('484', '7', 'hsa05166');
INSERT INTO `gene_hsa` VALUES ('485', '7', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('486', '7', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('487', '7', 'hsa05212');
INSERT INTO `gene_hsa` VALUES ('488', '7', 'hsa05220');
INSERT INTO `gene_hsa` VALUES ('489', '7', 'hsa05225');
INSERT INTO `gene_hsa` VALUES ('490', '7', 'hsa05226');
INSERT INTO `gene_hsa` VALUES ('491', '8', 'hsa01521');
INSERT INTO `gene_hsa` VALUES ('492', '8', 'hsa01522 ');
INSERT INTO `gene_hsa` VALUES ('493', '8', 'hsa01524');
INSERT INTO `gene_hsa` VALUES ('494', '8', 'hsa04071');
INSERT INTO `gene_hsa` VALUES ('495', '8', 'hsa04141');
INSERT INTO `gene_hsa` VALUES ('496', '8', 'hsa04210');
INSERT INTO `gene_hsa` VALUES ('497', '8', 'hsa04211');
INSERT INTO `gene_hsa` VALUES ('498', '8', 'hsa04215');
INSERT INTO `gene_hsa` VALUES ('499', '8', 'hsa04722');
INSERT INTO `gene_hsa` VALUES ('500', '8', 'hsa04932');
INSERT INTO `gene_hsa` VALUES ('501', '8', 'hsa04933');
INSERT INTO `gene_hsa` VALUES ('502', '8', 'hsa05014');
INSERT INTO `gene_hsa` VALUES ('503', '8', 'hsa05016');
INSERT INTO `gene_hsa` VALUES ('504', '8', 'hsa05020');
INSERT INTO `gene_hsa` VALUES ('505', '8', 'hsa05152');
INSERT INTO `gene_hsa` VALUES ('506', '8', 'hsa05161');
INSERT INTO `gene_hsa` VALUES ('507', '8', 'hsa05165');
INSERT INTO `gene_hsa` VALUES ('508', '8', 'hsa05166');
INSERT INTO `gene_hsa` VALUES ('509', '8', 'hsa05167');
INSERT INTO `gene_hsa` VALUES ('510', '8', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('511', '8', 'hsa05202');
INSERT INTO `gene_hsa` VALUES ('512', '8', 'hsa05203');
INSERT INTO `gene_hsa` VALUES ('513', '8', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('514', '8', 'hsa05212');
INSERT INTO `gene_hsa` VALUES ('515', '8', 'hsa05213');
INSERT INTO `gene_hsa` VALUES ('516', '8', 'hsa05214');
INSERT INTO `gene_hsa` VALUES ('517', '8', 'hsa05216');
INSERT INTO `gene_hsa` VALUES ('518', '8', 'hsa05217');
INSERT INTO `gene_hsa` VALUES ('519', '8', 'hsa05218 ');
INSERT INTO `gene_hsa` VALUES ('520', '8', 'hsa05220');
INSERT INTO `gene_hsa` VALUES ('521', '8', 'hsa05222');
INSERT INTO `gene_hsa` VALUES ('522', '8', 'hsa05223');
INSERT INTO `gene_hsa` VALUES ('523', '8', 'hsa05224');
INSERT INTO `gene_hsa` VALUES ('524', '8', 'hsa05225');
INSERT INTO `gene_hsa` VALUES ('525', '8', 'hsa05226');
INSERT INTO `gene_hsa` VALUES ('526', '9', 'hsa01522');
INSERT INTO `gene_hsa` VALUES ('527', '9', 'hsa01524');
INSERT INTO `gene_hsa` VALUES ('528', '9', 'hsa04010');
INSERT INTO `gene_hsa` VALUES ('529', '9', 'hsa04071');
INSERT INTO `gene_hsa` VALUES ('530', '9', 'hsa04110');
INSERT INTO `gene_hsa` VALUES ('531', '9', 'hsa04115');
INSERT INTO `gene_hsa` VALUES ('532', '9', 'hsa04137');
INSERT INTO `gene_hsa` VALUES ('533', '9', 'hsa04151');
INSERT INTO `gene_hsa` VALUES ('534', '9', 'hsa04210');
INSERT INTO `gene_hsa` VALUES ('535', '9', 'hsa04211');
INSERT INTO `gene_hsa` VALUES ('536', '9', 'hsa04216');
INSERT INTO `gene_hsa` VALUES ('537', '9', 'hsa04218');
INSERT INTO `gene_hsa` VALUES ('538', '9', 'hsa04310');
INSERT INTO `gene_hsa` VALUES ('539', '9', 'hsa04722');
INSERT INTO `gene_hsa` VALUES ('540', '9', 'hsa04919');
INSERT INTO `gene_hsa` VALUES ('541', '9', 'hsa05014');
INSERT INTO `gene_hsa` VALUES ('542', '9', 'hsa05016');
INSERT INTO `gene_hsa` VALUES ('543', '9', 'hsa05160');
INSERT INTO `gene_hsa` VALUES ('544', '9', 'hsa05161');
INSERT INTO `gene_hsa` VALUES ('545', '9', 'hsa05162');
INSERT INTO `gene_hsa` VALUES ('546', '9', 'hsa05165');
INSERT INTO `gene_hsa` VALUES ('547', '9', 'hsa05166');
INSERT INTO `gene_hsa` VALUES ('548', '9', 'hsa05167');
INSERT INTO `gene_hsa` VALUES ('549', '9', 'hsa05168');
INSERT INTO `gene_hsa` VALUES ('550', '9', 'hsa05169');
INSERT INTO `gene_hsa` VALUES ('551', '9', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('552', '9', 'hsa05202');
INSERT INTO `gene_hsa` VALUES ('553', '9', 'hsa05203');
INSERT INTO `gene_hsa` VALUES ('554', '9', 'hsa05205');
INSERT INTO `gene_hsa` VALUES ('555', '9', 'hsa05206');
INSERT INTO `gene_hsa` VALUES ('556', '9', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('557', '9', 'hsa05212');
INSERT INTO `gene_hsa` VALUES ('558', '9', 'hsa05213');
INSERT INTO `gene_hsa` VALUES ('559', '9', 'hsa05214');
INSERT INTO `gene_hsa` VALUES ('560', '9', 'hsa05215');
INSERT INTO `gene_hsa` VALUES ('561', '9', 'hsa05216');
INSERT INTO `gene_hsa` VALUES ('562', '9', 'hsa05217');
INSERT INTO `gene_hsa` VALUES ('563', '9', 'hsa05218');
INSERT INTO `gene_hsa` VALUES ('564', '9', 'hsa05219');
INSERT INTO `gene_hsa` VALUES ('565', '9', 'hsa05220');
INSERT INTO `gene_hsa` VALUES ('566', '9', 'hsa05222');
INSERT INTO `gene_hsa` VALUES ('567', '9', 'hsa05223');
INSERT INTO `gene_hsa` VALUES ('568', '9', 'hsa05224');
INSERT INTO `gene_hsa` VALUES ('569', '9', 'hsa05225');
INSERT INTO `gene_hsa` VALUES ('570', '9', 'hsa05226');
INSERT INTO `gene_hsa` VALUES ('571', '9', 'hsa05230');
INSERT INTO `gene_hsa` VALUES ('572', '9', 'hsa05418');
INSERT INTO `gene_hsa` VALUES ('573', '10', 'hsa01524');
INSERT INTO `gene_hsa` VALUES ('574', '10', 'hsa03430');
INSERT INTO `gene_hsa` VALUES ('575', '10', 'hsa03460');
INSERT INTO `gene_hsa` VALUES ('576', '10', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('577', '10', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('578', '10', 'hsa05213');
INSERT INTO `gene_hsa` VALUES ('579', '10', 'hsa05226');
INSERT INTO `gene_hsa` VALUES ('580', '11', 'hsa01524');
INSERT INTO `gene_hsa` VALUES ('581', '11', 'hsa03430');
INSERT INTO `gene_hsa` VALUES ('582', '11', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('583', '11', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('584', '12', 'hsa01524');
INSERT INTO `gene_hsa` VALUES ('585', '12', 'hsa03430');
INSERT INTO `gene_hsa` VALUES ('586', '12', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('587', '12', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('588', '13', 'hsa01524');
INSERT INTO `gene_hsa` VALUES ('589', '13', 'hsa03430');
INSERT INTO `gene_hsa` VALUES ('590', '13', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('591', '13', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('592', '14', 'hsa00512');
INSERT INTO `gene_hsa` VALUES ('593', '14', 'hsa01100 ');
INSERT INTO `gene_hsa` VALUES ('594', '15', 'hsa01521');
INSERT INTO `gene_hsa` VALUES ('595', '15', 'hsa04010');
INSERT INTO `gene_hsa` VALUES ('596', '15', 'hsa04012');
INSERT INTO `gene_hsa` VALUES ('597', '15', 'hsa04014');
INSERT INTO `gene_hsa` VALUES ('598', '15', 'hsa04015');
INSERT INTO `gene_hsa` VALUES ('599', '15', 'hsa04060');
INSERT INTO `gene_hsa` VALUES ('600', '15', 'hsa04066');
INSERT INTO `gene_hsa` VALUES ('601', '15', 'hsa04068');
INSERT INTO `gene_hsa` VALUES ('602', '15', 'hsa04072');
INSERT INTO `gene_hsa` VALUES ('603', '15', 'hsa04151');
INSERT INTO `gene_hsa` VALUES ('604', '15', 'hsa04510');
INSERT INTO `gene_hsa` VALUES ('605', '15', 'hsa04540 ');
INSERT INTO `gene_hsa` VALUES ('606', '15', 'hsa04630');
INSERT INTO `gene_hsa` VALUES ('607', '15', 'hsa04810');
INSERT INTO `gene_hsa` VALUES ('608', '15', 'hsa05160');
INSERT INTO `gene_hsa` VALUES ('609', '15', 'hsa05165');
INSERT INTO `gene_hsa` VALUES ('610', '15', 'hsa05200');
INSERT INTO `gene_hsa` VALUES ('611', '15', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('612', '15', 'hsa05212');
INSERT INTO `gene_hsa` VALUES ('613', '15', 'hsa05213');
INSERT INTO `gene_hsa` VALUES ('614', '15', 'hsa05214');
INSERT INTO `gene_hsa` VALUES ('615', '15', 'hsa05215');
INSERT INTO `gene_hsa` VALUES ('616', '15', 'hsa05218');
INSERT INTO `gene_hsa` VALUES ('617', '15', 'hsa05219');
INSERT INTO `gene_hsa` VALUES ('618', '15', 'hsa05223');
INSERT INTO `gene_hsa` VALUES ('619', '15', 'hsa05224');
INSERT INTO `gene_hsa` VALUES ('620', '15', 'hsa05226');
INSERT INTO `gene_hsa` VALUES ('621', '15', 'hsa05231');
INSERT INTO `gene_hsa` VALUES ('622', '16', 'hsa04010');
INSERT INTO `gene_hsa` VALUES ('623', '16', 'hsa04012');
INSERT INTO `gene_hsa` VALUES ('624', '16', 'hsa04151');
INSERT INTO `gene_hsa` VALUES ('625', '16', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('626', '17', 'hsa04010 ');
INSERT INTO `gene_hsa` VALUES ('627', '17', 'hsa04012');
INSERT INTO `gene_hsa` VALUES ('628', '17', 'hsa04151');
INSERT INTO `gene_hsa` VALUES ('629', '17', 'hsa04390');
INSERT INTO `gene_hsa` VALUES ('630', '17', 'hsa05210');
INSERT INTO `gene_hsa` VALUES ('631', '2', 'hsa01521');
INSERT INTO `gene_hsa` VALUES ('632', '0', 'dddddddd');
INSERT INTO `gene_hsa` VALUES ('633', '1', 'hsa00512');
INSERT INTO `gene_hsa` VALUES ('634', '555', 'hsa01100 ');
INSERT INTO `gene_hsa` VALUES ('635', '3', 'hsa00512');

-- ----------------------------
-- Table structure for gene_network
-- ----------------------------
DROP TABLE IF EXISTS `gene_network`;
CREATE TABLE `gene_network` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Gene` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `network` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=497 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gene_network
-- ----------------------------
INSERT INTO `gene_network` VALUES ('254', '	\r\n2932   ', 'N0005');
INSERT INTO `gene_network` VALUES ('255', '	\r\n2932   ', 'N0006');
INSERT INTO `gene_network` VALUES ('256', '	\r\n3845   ', 'N0002');
INSERT INTO `gene_network` VALUES ('257', '	3845     ', 'N0001');
INSERT INTO `gene_network` VALUES ('258', '001       ', 'N0005');
INSERT INTO `gene_network` VALUES ('259', '001       ', 'N00056');
INSERT INTO `gene_network` VALUES ('260', '001       ', 'N00059');
INSERT INTO `gene_network` VALUES ('261', '001       ', 'N0006');
INSERT INTO `gene_network` VALUES ('262', '001       ', 'N00060');
INSERT INTO `gene_network` VALUES ('263', '001       ', 'N00061');
INSERT INTO `gene_network` VALUES ('264', '001       ', 'N00175');
INSERT INTO `gene_network` VALUES ('265', '001       ', 'N00242');
INSERT INTO `gene_network` VALUES ('266', '001       ', 'N00257');
INSERT INTO `gene_network` VALUES ('267', '001       ', 'N00258 ');
INSERT INTO `gene_network` VALUES ('268', '002       ', 'N00001');
INSERT INTO `gene_network` VALUES ('269', '002       ', 'N00002');
INSERT INTO `gene_network` VALUES ('270', '002       ', 'N00003');
INSERT INTO `gene_network` VALUES ('271', '002       ', 'N00004');
INSERT INTO `gene_network` VALUES ('272', '002       ', 'N00005');
INSERT INTO `gene_network` VALUES ('273', '002       ', 'N00006');
INSERT INTO `gene_network` VALUES ('274', '002       ', 'N00007');
INSERT INTO `gene_network` VALUES ('275', '002       ', 'N00008');
INSERT INTO `gene_network` VALUES ('276', '002       ', 'N00009');
INSERT INTO `gene_network` VALUES ('277', '002       ', 'N0001');
INSERT INTO `gene_network` VALUES ('278', '002       ', 'N00011');
INSERT INTO `gene_network` VALUES ('279', '002       ', 'N00014');
INSERT INTO `gene_network` VALUES ('280', '002       ', 'N00015');
INSERT INTO `gene_network` VALUES ('281', '002       ', 'N00016');
INSERT INTO `gene_network` VALUES ('282', '002       ', 'N00018');
INSERT INTO `gene_network` VALUES ('283', '002       ', 'N00019');
INSERT INTO `gene_network` VALUES ('284', '002       ', 'N0002');
INSERT INTO `gene_network` VALUES ('285', '002       ', 'N00020');
INSERT INTO `gene_network` VALUES ('286', '002       ', 'N00021');
INSERT INTO `gene_network` VALUES ('287', '002       ', 'N00022');
INSERT INTO `gene_network` VALUES ('288', '002       ', 'N0003');
INSERT INTO `gene_network` VALUES ('289', '002       ', 'N00030');
INSERT INTO `gene_network` VALUES ('290', '002       ', 'N00031');
INSERT INTO `gene_network` VALUES ('291', '002       ', 'N00096');
INSERT INTO `gene_network` VALUES ('292', '002       ', 'N00097');
INSERT INTO `gene_network` VALUES ('293', '002       ', 'N00103');
INSERT INTO `gene_network` VALUES ('294', '002       ', 'N0011');
INSERT INTO `gene_network` VALUES ('295', '002       ', 'N0013');
INSERT INTO `gene_network` VALUES ('296', '002       ', 'N00152');
INSERT INTO `gene_network` VALUES ('297', '002       ', 'N00157');
INSERT INTO `gene_network` VALUES ('298', '002       ', 'N0016');
INSERT INTO `gene_network` VALUES ('299', '002       ', 'N00160');
INSERT INTO `gene_network` VALUES ('300', '002       ', 'N0017');
INSERT INTO `gene_network` VALUES ('301', '002       ', 'N00208');
INSERT INTO `gene_network` VALUES ('302', '002       ', 'N00215');
INSERT INTO `gene_network` VALUES ('303', '002       ', 'N00216');
INSERT INTO `gene_network` VALUES ('304', '002       ', 'N00217');
INSERT INTO `gene_network` VALUES ('305', '002       ', 'N00218');
INSERT INTO `gene_network` VALUES ('306', '002       ', 'N00229');
INSERT INTO `gene_network` VALUES ('307', '002       ', 'N00233');
INSERT INTO `gene_network` VALUES ('308', '002       ', 'N00235');
INSERT INTO `gene_network` VALUES ('309', '002       ', 'N00237');
INSERT INTO `gene_network` VALUES ('310', '002       ', 'N00246');
INSERT INTO `gene_network` VALUES ('311', '002       ', 'N00248');
INSERT INTO `gene_network` VALUES ('312', '002       ', 'N00252');
INSERT INTO `gene_network` VALUES ('313', '002       ', 'N00259');
INSERT INTO `gene_network` VALUES ('314', '002       ', 'N00267');
INSERT INTO `gene_network` VALUES ('315', '002       ', 'N00277');
INSERT INTO `gene_network` VALUES ('316', '002       ', 'N00278');
INSERT INTO `gene_network` VALUES ('317', '002       ', 'N00279');
INSERT INTO `gene_network` VALUES ('318', '004       ', 'N00101');
INSERT INTO `gene_network` VALUES ('319', '004       ', 'N0011');
INSERT INTO `gene_network` VALUES ('320', '005       ', '\r\nN00063');
INSERT INTO `gene_network` VALUES ('321', '005       ', 'N0007');
INSERT INTO `gene_network` VALUES ('322', '005       ', 'N0008');
INSERT INTO `gene_network` VALUES ('323', '005       ', 'N00134');
INSERT INTO `gene_network` VALUES ('324', '005       ', 'N00241');
INSERT INTO `gene_network` VALUES ('325', '005       ', 'N00256');
INSERT INTO `gene_network` VALUES ('326', '006       ', '\r\nN00063');
INSERT INTO `gene_network` VALUES ('327', '006       ', 'N0007');
INSERT INTO `gene_network` VALUES ('328', '006       ', 'N0008');
INSERT INTO `gene_network` VALUES ('329', '006       ', 'N00241');
INSERT INTO `gene_network` VALUES ('330', '006       ', 'N00256 ');
INSERT INTO `gene_network` VALUES ('331', '007       ', '\r\nN00063');
INSERT INTO `gene_network` VALUES ('332', '007       ', 'N00106');
INSERT INTO `gene_network` VALUES ('333', '007       ', 'N00107');
INSERT INTO `gene_network` VALUES ('334', '008       ', 'N0009');
INSERT INTO `gene_network` VALUES ('335', '008       ', 'N00098');
INSERT INTO `gene_network` VALUES ('336', '008       ', 'N00100');
INSERT INTO `gene_network` VALUES ('337', '008       ', 'N0012');
INSERT INTO `gene_network` VALUES ('338', '008       ', 'N00146');
INSERT INTO `gene_network` VALUES ('339', '008       ', 'N00164');
INSERT INTO `gene_network` VALUES ('340', '008       ', 'N00199');
INSERT INTO `gene_network` VALUES ('341', '008       ', 'N00273');
INSERT INTO `gene_network` VALUES ('342', '009       ', 'N00066');
INSERT INTO `gene_network` VALUES ('343', '009       ', 'N00067');
INSERT INTO `gene_network` VALUES ('344', '009       ', 'N00068');
INSERT INTO `gene_network` VALUES ('345', '009       ', 'N00076');
INSERT INTO `gene_network` VALUES ('346', '009       ', 'N0012');
INSERT INTO `gene_network` VALUES ('347', '009       ', 'N00131');
INSERT INTO `gene_network` VALUES ('348', '009       ', 'N00167');
INSERT INTO `gene_network` VALUES ('349', '009       ', 'N00169');
INSERT INTO `gene_network` VALUES ('350', '009       ', 'N00193');
INSERT INTO `gene_network` VALUES ('351', '009       ', 'N00196');
INSERT INTO `gene_network` VALUES ('352', '009       ', 'N00205');
INSERT INTO `gene_network` VALUES ('353', '009       ', 'N00222');
INSERT INTO `gene_network` VALUES ('354', '009       ', 'N00223');
INSERT INTO `gene_network` VALUES ('355', '009       ', 'N00262');
INSERT INTO `gene_network` VALUES ('356', '009       ', 'N00268');
INSERT INTO `gene_network` VALUES ('357', '009       ', 'N00273');
INSERT INTO `gene_network` VALUES ('358', '015       ', 'N00001');
INSERT INTO `gene_network` VALUES ('359', '015       ', 'N00021');
INSERT INTO `gene_network` VALUES ('360', '015       ', 'N00022');
INSERT INTO `gene_network` VALUES ('361', '015       ', 'N00023');
INSERT INTO `gene_network` VALUES ('362', '015       ', 'N00026');
INSERT INTO `gene_network` VALUES ('363', '015       ', 'N00030');
INSERT INTO `gene_network` VALUES ('364', '015       ', 'N00033');
INSERT INTO `gene_network` VALUES ('365', '015       ', 'N00034');
INSERT INTO `gene_network` VALUES ('366', '015       ', 'N00094');
INSERT INTO `gene_network` VALUES ('367', '015       ', 'N00095');
INSERT INTO `gene_network` VALUES ('368', '015       ', 'N00096');
INSERT INTO `gene_network` VALUES ('369', '015       ', 'N00103');
INSERT INTO `gene_network` VALUES ('370', '015       ', 'N0014');
INSERT INTO `gene_network` VALUES ('371', '015       ', 'N00147 ');
INSERT INTO `gene_network` VALUES ('372', '015       ', 'N0015');
INSERT INTO `gene_network` VALUES ('373', '015       ', 'N00252');
INSERT INTO `gene_network` VALUES ('374', '015       ', 'N00253');
INSERT INTO `gene_network` VALUES ('375', '016       ', 'N0017');
INSERT INTO `gene_network` VALUES ('376', '016       ', 'N00279');
INSERT INTO `gene_network` VALUES ('377', '016       ', 'N00284');
INSERT INTO `gene_network` VALUES ('378', '016       ', 'N00285');
INSERT INTO `gene_network` VALUES ('379', '017       ', 'N0016');
INSERT INTO `gene_network` VALUES ('380', '017       ', 'N0019');
INSERT INTO `gene_network` VALUES ('381', '017       ', 'N00277');
INSERT INTO `gene_network` VALUES ('382', '017       ', 'N00282');
INSERT INTO `gene_network` VALUES ('383', '10000     ', 'N0002');
INSERT INTO `gene_network` VALUES ('384', '10000     ', 'N0004');
INSERT INTO `gene_network` VALUES ('385', '1026      ', 'N0012');
INSERT INTO `gene_network` VALUES ('386', '10912     ', 'N0012');
INSERT INTO `gene_network` VALUES ('387', '1499      ', 'N0005');
INSERT INTO `gene_network` VALUES ('388', '1499      ', 'N0006');
INSERT INTO `gene_network` VALUES ('389', '1630      ', 'N0010');
INSERT INTO `gene_network` VALUES ('390', '1643      ', 'N0012');
INSERT INTO `gene_network` VALUES ('391', '1647      ', 'N0012');
INSERT INTO `gene_network` VALUES ('392', '1956      ', 'N0003');
INSERT INTO `gene_network` VALUES ('393', '1956      ', 'N0004');
INSERT INTO `gene_network` VALUES ('394', '1956      ', 'N0013');
INSERT INTO `gene_network` VALUES ('395', '207       ', 'N0002');
INSERT INTO `gene_network` VALUES ('396', '207       ', 'N0004');
INSERT INTO `gene_network` VALUES ('397', '208       ', 'N0002');
INSERT INTO `gene_network` VALUES ('398', '208       ', 'N0004');
INSERT INTO `gene_network` VALUES ('399', '2475      ', 'N0004');
INSERT INTO `gene_network` VALUES ('400', '26060     ', 'N0010');
INSERT INTO `gene_network` VALUES ('401', '2885      ', 'N0003');
INSERT INTO `gene_network` VALUES ('402', '2885      ', 'N0013');
INSERT INTO `gene_network` VALUES ('403', '2932      ', 'N0006');
INSERT INTO `gene_network` VALUES ('404', '324       ', 'N0005');
INSERT INTO `gene_network` VALUES ('405', '324       ', 'N0006');
INSERT INTO `gene_network` VALUES ('406', '3265      ', 'N0003');
INSERT INTO `gene_network` VALUES ('407', '3265      ', 'N0013');
INSERT INTO `gene_network` VALUES ('408', '332       ', 'N0005');
INSERT INTO `gene_network` VALUES ('409', '332       ', 'N0006');
INSERT INTO `gene_network` VALUES ('410', '369       ', 'N0001');
INSERT INTO `gene_network` VALUES ('411', '369       ', 'N0003');
INSERT INTO `gene_network` VALUES ('412', '369       ', 'N0013');
INSERT INTO `gene_network` VALUES ('413', '3845      ', 'N0003');
INSERT INTO `gene_network` VALUES ('414', '3845      ', 'N0011');
INSERT INTO `gene_network` VALUES ('415', '3845      ', 'N0013');
INSERT INTO `gene_network` VALUES ('416', '4087      ', 'N0007');
INSERT INTO `gene_network` VALUES ('417', '4087      ', 'N0008');
INSERT INTO `gene_network` VALUES ('418', '4088      ', 'N0007');
INSERT INTO `gene_network` VALUES ('419', '4088      ', 'N0008');
INSERT INTO `gene_network` VALUES ('420', '4609      ', 'N0005');
INSERT INTO `gene_network` VALUES ('421', '4609      ', 'N0006');
INSERT INTO `gene_network` VALUES ('422', '4616      ', 'N0012');
INSERT INTO `gene_network` VALUES ('423', '4893      ', 'N0001');
INSERT INTO `gene_network` VALUES ('424', '4893      ', 'N0002');
INSERT INTO `gene_network` VALUES ('425', '4893      ', 'N0003');
INSERT INTO `gene_network` VALUES ('426', '4893      ', 'N0013');
INSERT INTO `gene_network` VALUES ('427', '51176     ', 'N0005');
INSERT INTO `gene_network` VALUES ('428', '51176     ', 'N0006');
INSERT INTO `gene_network` VALUES ('429', '51426     ', 'N0012');
INSERT INTO `gene_network` VALUES ('430', '5290      ', 'N0002');
INSERT INTO `gene_network` VALUES ('431', '5290      ', 'N0004');
INSERT INTO `gene_network` VALUES ('432', '5291      ', 'N0002');
INSERT INTO `gene_network` VALUES ('433', '5291      ', 'N0004');
INSERT INTO `gene_network` VALUES ('434', '5293      ', 'N0002');
INSERT INTO `gene_network` VALUES ('435', '5293      ', 'N0004');
INSERT INTO `gene_network` VALUES ('436', '54205     ', 'N0009');
INSERT INTO `gene_network` VALUES ('437', '5594      ', 'N0001');
INSERT INTO `gene_network` VALUES ('438', '5594      ', 'N0003');
INSERT INTO `gene_network` VALUES ('439', '5594      ', 'N0013');
INSERT INTO `gene_network` VALUES ('440', '5595      ', 'N0001');
INSERT INTO `gene_network` VALUES ('441', '5595      ', 'N0003');
INSERT INTO `gene_network` VALUES ('442', '5595      ', 'N0013');
INSERT INTO `gene_network` VALUES ('443', '5604      ', 'N0001');
INSERT INTO `gene_network` VALUES ('444', '5604      ', 'N0003');
INSERT INTO `gene_network` VALUES ('445', '5604      ', 'N0013');
INSERT INTO `gene_network` VALUES ('446', '5605      ', 'N0001');
INSERT INTO `gene_network` VALUES ('447', '5605      ', 'N0003');
INSERT INTO `gene_network` VALUES ('448', '5605      ', 'N0013');
INSERT INTO `gene_network` VALUES ('449', '572       ', 'N0002');
INSERT INTO `gene_network` VALUES ('450', '578       ', 'N0012');
INSERT INTO `gene_network` VALUES ('451', '581       ', 'N0009');
INSERT INTO `gene_network` VALUES ('452', '581       ', 'N0012');
INSERT INTO `gene_network` VALUES ('453', '5894      ', 'N0001');
INSERT INTO `gene_network` VALUES ('454', '5894      ', 'N0003');
INSERT INTO `gene_network` VALUES ('455', '5894      ', 'N0013');
INSERT INTO `gene_network` VALUES ('456', '5898      ', 'N0011');
INSERT INTO `gene_network` VALUES ('457', '5899      ', 'N0011');
INSERT INTO `gene_network` VALUES ('458', '5900      ', 'N0011');
INSERT INTO `gene_network` VALUES ('459', '595       ', 'N0001');
INSERT INTO `gene_network` VALUES ('460', '595       ', 'N0005');
INSERT INTO `gene_network` VALUES ('461', '595       ', 'N0006');
INSERT INTO `gene_network` VALUES ('462', '6198      ', 'N0004');
INSERT INTO `gene_network` VALUES ('463', '6199      ', 'N0004');
INSERT INTO `gene_network` VALUES ('464', '6654      ', 'N0003');
INSERT INTO `gene_network` VALUES ('465', '6654      ', 'N0013');
INSERT INTO `gene_network` VALUES ('466', '6655      ', 'N0003');
INSERT INTO `gene_network` VALUES ('467', '6655      ', 'N0013');
INSERT INTO `gene_network` VALUES ('468', '673       ', 'N0001');
INSERT INTO `gene_network` VALUES ('469', '673       ', 'N0002');
INSERT INTO `gene_network` VALUES ('470', '673       ', 'N0003');
INSERT INTO `gene_network` VALUES ('471', '673       ', 'N0013');
INSERT INTO `gene_network` VALUES ('472', '6932      ', 'N0005');
INSERT INTO `gene_network` VALUES ('473', '6932      ', 'N0006');
INSERT INTO `gene_network` VALUES ('474', '6934      ', 'N0005');
INSERT INTO `gene_network` VALUES ('475', '6934      ', 'N0006');
INSERT INTO `gene_network` VALUES ('476', '7039      ', 'N0013');
INSERT INTO `gene_network` VALUES ('477', '7046      ', 'N0007');
INSERT INTO `gene_network` VALUES ('478', '7046      ', 'N0008');
INSERT INTO `gene_network` VALUES ('479', '7048      ', 'N0007');
INSERT INTO `gene_network` VALUES ('480', '7048      ', 'N0008');
INSERT INTO `gene_network` VALUES ('481', '7157      ', 'N0012');
INSERT INTO `gene_network` VALUES ('482', '8312      ', 'N0005');
INSERT INTO `gene_network` VALUES ('483', '8312      ', 'N0006');
INSERT INTO `gene_network` VALUES ('484', '8313      ', 'N0005');
INSERT INTO `gene_network` VALUES ('485', '8313      ', 'N0006');
INSERT INTO `gene_network` VALUES ('486', '83439     ', 'N0005');
INSERT INTO `gene_network` VALUES ('487', '83439     ', 'N0006');
INSERT INTO `gene_network` VALUES ('488', '836       ', 'N0010');
INSERT INTO `gene_network` VALUES ('489', '842       ', 'N0010');
INSERT INTO `gene_network` VALUES ('490', 'N00003', '010       ');
INSERT INTO `gene_network` VALUES ('491', 'N00003', '1643      ');
INSERT INTO `gene_network` VALUES ('492', '009       ', 'N00003');
INSERT INTO `gene_network` VALUES ('493', '555', 'N00031');
INSERT INTO `gene_network` VALUES ('494', 'd', 'N00285');
INSERT INTO `gene_network` VALUES ('495', 'd', 'N00004');
INSERT INTO `gene_network` VALUES ('496', 'gggg', 'g_h');

-- ----------------------------
-- Table structure for hsa
-- ----------------------------
DROP TABLE IF EXISTS `hsa`;
CREATE TABLE `hsa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hsa_id` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `disease` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=617 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hsa
-- ----------------------------
INSERT INTO `hsa` VALUES ('502', 'hsa00512', 'Mucin type O-glycan biosynthesis');
INSERT INTO `hsa` VALUES ('503', 'hsa01100 ', 'Metabolic pathways');
INSERT INTO `hsa` VALUES ('504', 'hsa01521', '	\r\nEGFR tyrosine kinase inhibitor resistance');
INSERT INTO `hsa` VALUES ('505', 'hsa01522', 'Endocrine resistance');
INSERT INTO `hsa` VALUES ('506', 'hsa01524', '	\r\nPlatinum drug resistance');
INSERT INTO `hsa` VALUES ('507', 'hsa03430', '	\r\nMismatch repair');
INSERT INTO `hsa` VALUES ('508', 'hsa03460', '	\r\nFanconi anemia pathway');
INSERT INTO `hsa` VALUES ('509', 'hsa04010', '	\r\nMAPK signaling pathway');
INSERT INTO `hsa` VALUES ('510', 'hsa04012', '	\r\nErbB signaling pathway');
INSERT INTO `hsa` VALUES ('511', 'hsa04014', '	\r\nRas signaling pathway');
INSERT INTO `hsa` VALUES ('512', 'hsa04015', '	\r\nRap1 signaling pathway');
INSERT INTO `hsa` VALUES ('513', 'hsa04060', 'Cytokine-cytokine receptor interaction');
INSERT INTO `hsa` VALUES ('514', 'hsa04062', 'Chemokine signaling pathway');
INSERT INTO `hsa` VALUES ('515', 'hsa04066', 'HIF-1 signaling pathway');
INSERT INTO `hsa` VALUES ('516', 'hsa04068', 'FoxO signaling pathway');
INSERT INTO `hsa` VALUES ('517', 'hsa04071', 'Sphingolipid signaling pathway');
INSERT INTO `hsa` VALUES ('518', 'hsa04072', 'Phospholipase D signaling pathway');
INSERT INTO `hsa` VALUES ('519', 'hsa04110', 'Cell cycle');
INSERT INTO `hsa` VALUES ('520', 'hsa04115', '	\r\np53 signaling pathway');
INSERT INTO `hsa` VALUES ('521', 'hsa04137', '	\r\nMitophagy - animal');
INSERT INTO `hsa` VALUES ('522', 'hsa04140', '	\r\nAutophagy - animal');
INSERT INTO `hsa` VALUES ('523', 'hsa04141', '	\r\nProtein processing in endoplasmic reticulum');
INSERT INTO `hsa` VALUES ('524', 'hsa04144', 'Endocytosis');
INSERT INTO `hsa` VALUES ('525', 'hsa04150', 'mTOR signaling pathway');
INSERT INTO `hsa` VALUES ('526', 'hsa04151', '	\r\nPI3K-Akt signaling pathway');
INSERT INTO `hsa` VALUES ('527', 'hsa04210', '\r\nApoptosis');
INSERT INTO `hsa` VALUES ('528', 'hsa04211', 'Longevity regulating pathway');
INSERT INTO `hsa` VALUES ('529', 'hsa04213', '	\r\nLongevity regulating pathway - multiple species');
INSERT INTO `hsa` VALUES ('530', 'hsa04215', '	\r\nApoptosis - multiple species');
INSERT INTO `hsa` VALUES ('531', 'hsa04216', 'Ferroptosis');
INSERT INTO `hsa` VALUES ('532', 'hsa04217', '	\r\nNecroptosis');
INSERT INTO `hsa` VALUES ('533', 'hsa04218', 'Cellular senescence');
INSERT INTO `hsa` VALUES ('534', 'hsa04310', 'Wnt signaling pathway');
INSERT INTO `hsa` VALUES ('535', 'hsa04350', 'TGF-beta signaling pathway');
INSERT INTO `hsa` VALUES ('536', 'hsa04360', 'Axon guidance\r\n');
INSERT INTO `hsa` VALUES ('537', 'hsa04370', 'VEGF signaling pathway');
INSERT INTO `hsa` VALUES ('538', 'hsa04371', '	\r\nApelin signaling pathway');
INSERT INTO `hsa` VALUES ('539', 'hsa04380', 'Osteoclast differentiation');
INSERT INTO `hsa` VALUES ('540', 'hsa04390', '	\r\nHippo signaling pathway');
INSERT INTO `hsa` VALUES ('541', 'hsa04510', '	\r\nFocal adhesion');
INSERT INTO `hsa` VALUES ('542', 'hsa04520', '	\r\nAdherens junction');
INSERT INTO `hsa` VALUES ('543', 'hsa04540', '\r\nGap junction');
INSERT INTO `hsa` VALUES ('544', 'hsa04550', 'Signaling pathways regulating pluripotency of stem');
INSERT INTO `hsa` VALUES ('545', 'hsa04625', 'C-type lectin receptor signaling pathway');
INSERT INTO `hsa` VALUES ('546', 'hsa04630', 'Jak-STAT signaling pathway');
INSERT INTO `hsa` VALUES ('547', 'hsa04650', 'Natural killer cell mediated cytotoxicity');
INSERT INTO `hsa` VALUES ('548', 'hsa04659', '	\r\nTh17 cell differentiation');
INSERT INTO `hsa` VALUES ('549', 'hsa04660', 'T cell receptor signaling pathway');
INSERT INTO `hsa` VALUES ('550', 'hsa04662', '	\r\nB cell receptor signaling pathway');
INSERT INTO `hsa` VALUES ('551', 'hsa04664', '	\r\nFc epsilon RI signaling pathway');
INSERT INTO `hsa` VALUES ('552', 'hsa04670', '	\r\nLeukocyte transendothelial migration');
INSERT INTO `hsa` VALUES ('553', 'hsa04714', '\r\nThermogenesis');
INSERT INTO `hsa` VALUES ('554', 'hsa04720', '	\r\nLong-term potentiation');
INSERT INTO `hsa` VALUES ('555', 'hsa04722', '	\r\nNeurotrophin signaling pathway');
INSERT INTO `hsa` VALUES ('556', 'hsa04725', 'Cholinergic synapse');
INSERT INTO `hsa` VALUES ('557', 'hsa04726', 'Serotonergic synapse');
INSERT INTO `hsa` VALUES ('558', 'hsa04730', '	\r\nLong-term depression');
INSERT INTO `hsa` VALUES ('559', 'hsa04810', '	\r\nRegulation of actin cytoskeleton');
INSERT INTO `hsa` VALUES ('560', 'hsa04910', 'Insulin signaling pathway');
INSERT INTO `hsa` VALUES ('561', 'hsa04912', '	\r\nGnRH signaling pathway');
INSERT INTO `hsa` VALUES ('562', 'hsa04914', 'Progesterone-mediated oocyte maturation');
INSERT INTO `hsa` VALUES ('563', 'hsa04915', '	\r\nEstrogen signaling pathway');
INSERT INTO `hsa` VALUES ('564', 'hsa04916', '	\r\nMelanogenesis');
INSERT INTO `hsa` VALUES ('565', 'hsa04917', '	\r\nProlactin signaling pathway');
INSERT INTO `hsa` VALUES ('566', 'hsa04919', 'Thyroid hormone signaling pathway');
INSERT INTO `hsa` VALUES ('567', 'hsa04921', 'Oxytocin signaling pathway');
INSERT INTO `hsa` VALUES ('568', 'hsa04926', 'Relaxin signaling pathway');
INSERT INTO `hsa` VALUES ('569', 'hsa04932', '	\r\nNon-alcoholic fatty liver disease (NAFLD)');
INSERT INTO `hsa` VALUES ('570', 'hsa04933', 'AGE-RAGE signaling pathway in diabetic complicatio');
INSERT INTO `hsa` VALUES ('571', 'hsa04934', 'Cushing\'s syndrome');
INSERT INTO `hsa` VALUES ('572', 'hsa04960', 'Aldosterone-regulated sodium reabsorption');
INSERT INTO `hsa` VALUES ('573', 'hsa05014', 'Amyotrophic lateral sclerosis (ALS)');
INSERT INTO `hsa` VALUES ('574', 'hsa05016', '	\r\nHuntington\'s disease');
INSERT INTO `hsa` VALUES ('575', 'hsa05020', '\r\nPrion diseases');
INSERT INTO `hsa` VALUES ('576', 'hsa05034', 'Alcoholism');
INSERT INTO `hsa` VALUES ('577', 'hsa05100', '	\r\nBacterial invasion of epithelial cells');
INSERT INTO `hsa` VALUES ('578', 'hsa05130', 'Pathogenic Escherichia coli infection');
INSERT INTO `hsa` VALUES ('579', 'hsa05142', '	\r\nChagas disease (American trypanosomiasis)');
INSERT INTO `hsa` VALUES ('580', 'hsa05152', '	\r\nTuberculosis');
INSERT INTO `hsa` VALUES ('581', 'hsa05160', 'Hepatitis C');
INSERT INTO `hsa` VALUES ('582', 'hsa05161', '\r\nHepatitis B');
INSERT INTO `hsa` VALUES ('583', 'hsa05162', 'Measles');
INSERT INTO `hsa` VALUES ('584', 'hsa05165', '	\r\nHuman papillomavirus infection');
INSERT INTO `hsa` VALUES ('585', 'hsa05166', 'HTLV-I infection');
INSERT INTO `hsa` VALUES ('586', 'hsa05167', 'Kaposi\'s sarcoma-associated herpesvirus infection');
INSERT INTO `hsa` VALUES ('587', 'hsa05168', '	\r\nHerpes simplex infection');
INSERT INTO `hsa` VALUES ('588', 'hsa05169', '	\r\nEpstein-Barr virus infection');
INSERT INTO `hsa` VALUES ('589', 'hsa05200', '	\r\nPathways in cancer');
INSERT INTO `hsa` VALUES ('590', 'hsa05202', '	\r\nTranscriptional misregulation in cancer');
INSERT INTO `hsa` VALUES ('591', 'hsa05203', 'Viral carcinogenesis');
INSERT INTO `hsa` VALUES ('592', 'hsa05205', 'Proteoglycans in cancer');
INSERT INTO `hsa` VALUES ('593', 'hsa05206', '	\r\nMicroRNAs in cancer');
INSERT INTO `hsa` VALUES ('594', 'hsa05210', 'Colorectal cancer');
INSERT INTO `hsa` VALUES ('595', 'hsa05211', 'Renal cell carcinoma');
INSERT INTO `hsa` VALUES ('596', 'hsa05212 ', 'Pancreatic cancer');
INSERT INTO `hsa` VALUES ('597', 'hsa05213', 'Endometrial cancer');
INSERT INTO `hsa` VALUES ('598', 'hsa05214', '\r\nGlioma');
INSERT INTO `hsa` VALUES ('599', 'hsa05215', 'Prostate cancer');
INSERT INTO `hsa` VALUES ('600', 'hsa05216', 'Thyroid cancer');
INSERT INTO `hsa` VALUES ('601', 'hsa05217', '	\r\nBasal cell carcinoma');
INSERT INTO `hsa` VALUES ('602', 'hsa05218', 'Melanoma');
INSERT INTO `hsa` VALUES ('603', 'hsa05219', 'Bladder cancer');
INSERT INTO `hsa` VALUES ('604', 'hsa05220', 'Chronic myeloid leukemia');
INSERT INTO `hsa` VALUES ('605', 'hsa05221', 'Acute myeloid leukemia');
INSERT INTO `hsa` VALUES ('606', 'hsa05222', 'Small cell lung cancer');
INSERT INTO `hsa` VALUES ('607', 'hsa05223', 'Non-small cell lung cancer');
INSERT INTO `hsa` VALUES ('608', 'hsa05224', '\r\nBreast cancer');
INSERT INTO `hsa` VALUES ('609', 'hsa05225', 'Hepatocellular carcinoma');
INSERT INTO `hsa` VALUES ('610', 'hsa05226 ', 'Gastric cancer');
INSERT INTO `hsa` VALUES ('611', 'hsa05230', 'Central carbon metabolism in cancer');
INSERT INTO `hsa` VALUES ('612', 'hsa05231', '	\r\nCholine metabolism in cancer');
INSERT INTO `hsa` VALUES ('613', 'hsa05321', 'Inflammatory bowel disease (IBD)');
INSERT INTO `hsa` VALUES ('614', 'hsa05418', '	\r\nFluid shear stress and atherosclerosis');
INSERT INTO `hsa` VALUES ('615', '56', '56556');
INSERT INTO `hsa` VALUES ('616', 'dddddddd', 'dd');

-- ----------------------------
-- Table structure for network
-- ----------------------------
DROP TABLE IF EXISTS `network`;
CREATE TABLE `network` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `definitionExpanded` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=321 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of network
-- ----------------------------
INSERT INTO `network` VALUES ('205', '\r\nN00063', '	\r\nTGF-beta signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('206', 'N00001', 'EGF-EGFR-RAS-ERK signaling pathway', 'Mutation-activated KRAS/NRAS to ERK signaling pathway', 'Variant');
INSERT INTO `network` VALUES ('207', 'N00002', 'BCR-ABL fusion kinase to RAS-ERK signaling pathway', 'KRAS*,NRAS*) -> PI3K -> PIP3 -> AKT -| BAD\r\n  Expanded	\r\n(3845v1,4893v1) -> (5290,5291,5293) -> C05981 -> (207,208,10000) -| 572', 'Variant');
INSERT INTO `network` VALUES ('208', 'N00003', '	\r\nMutation-activated KIT to RAS-ERK signaling pathway', 'EGFR* -> GRB2 -> SOS -> RAS -> RAF -> MEK -> ERK\r\n  Expanded	\r\n1956v4 -> 2885 -> (6654,6655) -> (3265,3845,4893) -> (369,673,5894) -> (5604,5605) -> (5594,5595)', 'Variant');
INSERT INTO `network` VALUES ('209', 'N00004', 'Duplication-activated FLT3 to RAS-ERK signaling pathway', 'EGFR* -> PI3K -> PIP3 -> AKT -> MTOR -> S6K\r\n  Expanded	\r\n1956v4 -> (5290,5291,5293) -> C05981 -> (207,208,10000) -> 2475 -> (6198,6199)', 'Variant');
INSERT INTO `network` VALUES ('210', 'N00005', 'Mutation-activated MET to RAS-ERK signaling pathway', '(GSK3B+AXIN) // APC* // CTNNB1 -> TCF/LEF => (BIRC5,MYC,CCND1)\r\n  Expanded	\r\n(2932+(8312,8313)) // 324v1 // 1499 -> (6932,83439,6934,51176) => (332,4609,595)', 'Variant');
INSERT INTO `network` VALUES ('211', 'N00006', '	\r\nAmplified EGFR to RAS-ERK signaling pathway', '(GSK3B+AXIN+APC) // CTNNB1* -> TCF/LEF => (BIRC5,MYC,CCND1)\r\n  Expanded	\r\n(2932+(8312,8313)+324) // 1499v1 -> (6932,83439,6934,51176) => (332,4609,595)', 'Variant');
INSERT INTO `network` VALUES ('212', 'N00007', '	\r\nEML4-ALK fusion kinase to RAS-ERK signaling pathway', '(TGFBR2+TGFBR1) // (SMAD2*,SMAD3)\r\n  \r\n(7048+7046) // (4087v1,4088)', 'Variant');
INSERT INTO `network` VALUES ('213', 'N00008', ' \r\nRET-PTC fusion kinase to RAS-ERK signaling pathway', '	\r\n(TGFBR2+TGFBR1) // (SMAD2*,SMAD3)\r\n  \r\n(7048+7046) // (4087v1,4088)', 'Variant');
INSERT INTO `network` VALUES ('214', 'N00009', '	\r\nTRK fusion kinase to RAS-ERK signaling pathway', 'BAX* // CYCS\r\n  	\r\n581v1 // 54205', 'Variant');
INSERT INTO `network` VALUES ('215', 'N0001', '\r\nMutation-activated KRAS/NRAS to ERK signaling pathway', 'BAX* // CYCS\r\n  	\r\n581v1 // 54205', 'Variant');
INSERT INTO `network` VALUES ('216', 'N00011', 'Mutation-activated FGFR3 to RAS-ERK signaling pathway', 'CASP3 // DCC* // (CASP9+APPL1)\r\n  \r\n836 // 1630v1 // (842+26060)', 'Variant');
INSERT INTO `network` VALUES ('217', 'N00014', '	\r\nMutation-activated EGFR to RAS-ERK signaling pathway', 'TGFA* -> EGFR -> PI3K -> PIP3 -> AKT\r\n  Expanded	\r\n7039v1 -> 1956 -> (5290,5291,5293) -> C05981 -> (207,208,10000)', 'Variant');
INSERT INTO `network` VALUES ('218', 'N00015', '	\r\nPDGF-PDGFR-RAS-ERK signaling pathway', 'TGFA* -> EGFR -> PI3K -> PIP3 -> AKT\r\n  Expanded	\r\n7039v1 -> 1956 -> (5290,5291,5293) -> C05981 -> (207,208,10000)', 'Variant');
INSERT INTO `network` VALUES ('219', 'N00016', '	\r\nPDGF-overexpression to RAS-ERK signaling pathway', 'AREG* -> EGFR -> GRB2 -> SOS -> RAS -> RAF -> MEK -> ERK\r\n  Expanded	\r\n374v1 -> 1956 -> 2885 -> (6654,6655) -> (3265,3845,4893) -> (369,673,5894) -> (5604,5605) -> (5594,5595)', 'Variant');
INSERT INTO `network` VALUES ('220', 'N00018', ' \r\nAmplified PDGFR to RAS-ERK signaling pathway', 'EREG* -> EGFR -> PI3K -> PIP3 -> AKT -> S6K\r\n  Expanded	\r\n2069v1 -> 1956 -> (5290,5291,5293) -> C05981 -> (207,208,10000) -> (6198,6199)', 'Variant');
INSERT INTO `network` VALUES ('221', 'N00019', 'FGF-FGFR-RAS-ERK signaling pathway', 'AREG* -> EGFR -> PI3K -> PIP3 -> AKT -> S6K\r\n  Expanded	\r\n374v1 -> 1956 -> (5290,5291,5293) -> C05981 -> (207,208,10000) -> (6198,6199)', 'Variant');
INSERT INTO `network` VALUES ('222', 'N0002', '\r\nMutation-activated KRAS/NRAS to PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('223', 'N00020', 'Amplified FGFR to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('224', 'N00021', 'EGF-ERBB2-RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('225', 'N00022', '	\r\nERBB2-overexpression to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('226', 'N00023', '	\r\nEGF-EGFR-PLCG-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('227', 'N00026', 'EGF-EGFR-PLCG-CAMK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('228', 'N0003', '\r\nEGFR-overexpression to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('229', 'N00030', '	\r\nEGF-EGFR-RAS-PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('230', 'N00031', 'Duplication-activated FLT3 to RAS-PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('231', 'N00033', '	\r\nEGF-EGFR-PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('232', 'N00034', '	\r\nERBB2-overexpression to PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('233', 'N0004', '	\r\nEGFR-overexpression to PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('234', 'N0005', ' Mutation-inactivated APC to Wnt signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('235', 'N00056', 'Wnt signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('236', 'N00059', '	\r\nFZD7-overexpression to Wnt signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('237', 'N0006', '\r\nMutation-activated CTNNB1 to Wnt signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('238', 'N00060', 'LRP6-overexpression to Wnt signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('239', 'N00061', '	\r\nCDH1-reduced expression to Wnt signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('240', 'N00066', '	\r\np21-Cell cycle G1/S', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('241', 'N00067', '	\r\nDeleted p14(ARF) to p21-cell cycle G1/S', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('242', 'N00068', '	\r\nAmplified MDM2 to p21-cell cycle G1/S', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('243', 'N0007', '\r\nMutation-inactivated TGFBR2 to TGF-beta signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('244', 'N00076', '	\r\nMutation-inactivated p14(ARF) to p21-cell cycle G1/S', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('245', 'N0008', '\r\nMutation-inactivated SMAD2 to TGF-beta signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('246', 'N0009', '\r\nMutation-inactivated BAX to apoptotic pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('247', 'N00094', '	\r\nEGF-Jak-STAT signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('248', 'N00095', '	\r\nERBB2-overexpression to EGF-Jak-STAT signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('249', 'N00096', '	\r\nEGF-EGFR-RAS-RASSF1 signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('250', 'N00097', 'Loss of RASSF1 to EGF-EGFR-RAS-RASSF1 signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('251', 'N00098', 'Intrinsic apoptotic pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('252', 'N0010', 'Loss of DCC to DCC-apoptotic pathway\r\n', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('253', 'N00100', 'BCL2-overexpression to intrinsic apoptotic pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('254', 'N00101', 'DCC-apoptotic pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('255', 'N00103', '	\r\nEGF-EGFR-RAS-RalGDS signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('256', 'N00106', 'AML1-EVI1 fusion to TGF-beta signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('257', 'N00107', '	\r\nEVI-1 overexpression to TGF-beta signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('258', 'N0011', 'Mutation-activated KRAS to RalGDS signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('259', 'N0012', '\r\nMutation-inactivated TP53 to transcription', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('260', 'N0013', 'TGFA-overexpression to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('261', 'N00131', ' \r\nAmplified MYCN to transcriptional activation', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('262', 'N00134', 'EWSR1-FLI1 fusion to transcriptional repression', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('263', 'N0014', '\r\nTGFA-overexpression to PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('264', 'N00146', '	\r\nCrosstalk between extrinsic and intrinsic apoptotic pathways', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('265', 'N00147 ', '	\r\nEGF-EGFR-PLCG-calcineurin signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('266', 'N0015', '\r\nEGF-overexpression to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('267', 'N00152', 'CXCR-GNB/G-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('268', 'N00157', 'KSHV vGPCR to GNB/G-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('269', 'N0016', '\r\nEREG-overexpression to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('270', 'N00160', '	\r\nKSHV K1 to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('271', 'N00164', 'KSHV vBCL2 to crosstalk between extrinsic and intrinsic apoptotic pathways', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('272', 'N00167', '	\r\nKSHV vIRF1/3 to p21-cell cycle G1/S', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('273', 'N00169', 'KSHV LANA to p21-cell cycle G1/S', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('274', 'N0017', '\r\nAREG-overexpression to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('275', 'N00175', '	\r\nKSHV LANA to Wnt signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('276', 'N0018', '\r\nEGF-overexpression to PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('277', 'N0019', 'EREG-overexpression to PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('278', 'N00193', 'HPV E6 to host-cell-protein inhibition', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('279', 'N00196', 'KSHV vIRF1/2/3 to host-cell-protein inhibition', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('280', 'N00199', '	\r\nKSHV vBCL2 to host-cell-protein inhibition', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('281', 'N0020', 'AREG-overexpression to PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('282', 'N00205', '	\r\nKSHV LANA to host-cell-protein inhibition', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('283', 'N00208', '	\r\nKSHV K1 to host-cell-protein activation', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('284', 'N00215', 'KITLG-KIT-RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('285', 'N00216', '	\r\nHGF-MET-RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('286', 'N00217', 'FLT3LG-FLT3-RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('287', 'N00218', '	\r\nFLT3LG-FLT3-RAS-PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('288', 'N00222', '	\r\nHTLV-I Tax to host-cell-protein inhibition', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('289', 'N00223', '	\r\nEBV EBNA1 to host-cell-protein inhibition', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('290', 'N00229', 'TGFA-EGFR-RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('291', 'N00233', 'IGF2-IGF1R-RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('292', 'N00235', 'IGF2-overexpression to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('293', 'N00237', 'IGF1R-overexpression to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('294', 'N00241', '	\r\nTGFBR2-reduced expression to TGF-beta signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('295', 'N00242', '	\r\nMutation-inactivated AXIN to Wnt signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('296', 'N00246', 'HGF-overexpression to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('297', 'N00248', 'MET-overexpression to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('298', 'N00252', '	\r\nAmplified ERBB2 to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('299', 'N00253', 'Amplified ERBB2 to PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('300', 'N00256', 'TGFBR1-reduced expression to TGF-beta signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('301', 'N00257', '	\r\nLoss of CDH1 to Wnt signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('302', 'N00258 ', 'Mutation-inactivated CDH1 to Wnt signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('303', 'N00259', 'Amplified MET to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('304', 'N00262', ' \r\nEBV EBNA3C to host-cell-protein inhibition', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('305', 'N00267', '	\r\nHBV HBx to host-cell-protein activation', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('306', 'N00268', 'HBV HBx to host-cell-protein inhibition', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('307', 'N00273', 'HCV NS5A to host-cell-protein inhibition', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('308', 'N00277', '	\r\nEREG-EGFR-RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('309', 'N00278', 'EREG-overexpression to RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('310', 'N00279', 'AREG-EGFR-RAS-ERK signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('311', 'N00282', '	\r\nEREG-EGFR-PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('312', 'N00284', 'AREG-EGFR-PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('313', 'N00285', '	\r\nAREG-overexpression to PI3K signaling pathway', 'NULL', 'NULL');
INSERT INTO `network` VALUES ('314', 'e', 'e', 'e', 'e');
INSERT INTO `network` VALUES ('315', 'e', 'e', 'e', 'e');
INSERT INTO `network` VALUES ('316', 'e', 'e', 'e', '');
INSERT INTO `network` VALUES ('317', 'd', 'd', 'd', 'd');
INSERT INTO `network` VALUES ('318', 'd', 'd', 'd', 'd');
INSERT INTO `network` VALUES ('319', '', '', '', '');
INSERT INTO `network` VALUES ('320', 'g_h', 'g_h', 'g_h', 'g_h');

-- ----------------------------
-- Table structure for network_hsa
-- ----------------------------
DROP TABLE IF EXISTS `network_hsa`;
CREATE TABLE `network_hsa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `network` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `hsa` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of network_hsa
-- ----------------------------
INSERT INTO `network_hsa` VALUES ('67', '\r\nN0001 ', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('68', '\r\nN0001 ', 'hsa05212 ');
INSERT INTO `network_hsa` VALUES ('69', '\r\nN0001 ', 'hsa05213');
INSERT INTO `network_hsa` VALUES ('70', '\r\nN0001 ', 'hsa05216');
INSERT INTO `network_hsa` VALUES ('71', '\r\nN0001 ', 'hsa05218');
INSERT INTO `network_hsa` VALUES ('72', '\r\nN0001 ', 'hsa05221');
INSERT INTO `network_hsa` VALUES ('73', '\r\nN0001 ', 'hsa05223');
INSERT INTO `network_hsa` VALUES ('74', '\r\nN0001 ', 'hsa05226 ');
INSERT INTO `network_hsa` VALUES ('75', '\r\nN0002', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('76', '\r\nN0002', 'hsa05212');
INSERT INTO `network_hsa` VALUES ('77', 'N0002', 'hsa05218');
INSERT INTO `network_hsa` VALUES ('78', 'N0002', 'hsa05221');
INSERT INTO `network_hsa` VALUES ('79', 'N0002', 'hsa05223');
INSERT INTO `network_hsa` VALUES ('80', 'N0003', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('81', 'N0003', 'hsa05214');
INSERT INTO `network_hsa` VALUES ('82', 'N0003', 'hsa05219');
INSERT INTO `network_hsa` VALUES ('83', 'N0003', 'hsa05223');
INSERT INTO `network_hsa` VALUES ('84', 'N0003', 'hsa05224');
INSERT INTO `network_hsa` VALUES ('85', 'N0004', 'hsa05214');
INSERT INTO `network_hsa` VALUES ('86', 'N0004', 'hsa05224');
INSERT INTO `network_hsa` VALUES ('87', 'N0005', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('88', 'N0005', 'hsa05226 ');
INSERT INTO `network_hsa` VALUES ('89', 'N0006', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('90', 'N0006', 'hsa05213');
INSERT INTO `network_hsa` VALUES ('91', 'N0006', 'hsa05225');
INSERT INTO `network_hsa` VALUES ('92', 'N0007', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('93', 'N0008', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('94', 'N0009', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('95', 'N0010', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('96', 'N0011', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('97', 'N0011', 'hsa05212 ');
INSERT INTO `network_hsa` VALUES ('98', 'N0012', 'hsa05202');
INSERT INTO `network_hsa` VALUES ('99', 'N0012', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('100', 'N0012', 'hsa05212 ');
INSERT INTO `network_hsa` VALUES ('101', 'N0012', 'hsa05213');
INSERT INTO `network_hsa` VALUES ('102', 'N0012', 'hsa05214');
INSERT INTO `network_hsa` VALUES ('103', 'N0012', 'hsa05216');
INSERT INTO `network_hsa` VALUES ('104', 'N0012', 'hsa05217');
INSERT INTO `network_hsa` VALUES ('105', 'N0012', 'hsa05218');
INSERT INTO `network_hsa` VALUES ('106', 'N0012', 'hsa05219');
INSERT INTO `network_hsa` VALUES ('107', 'N0012', 'hsa05220');
INSERT INTO `network_hsa` VALUES ('108', 'N0012', 'hsa05222');
INSERT INTO `network_hsa` VALUES ('109', 'N0012', 'hsa05223');
INSERT INTO `network_hsa` VALUES ('110', 'N0012', 'hsa05224');
INSERT INTO `network_hsa` VALUES ('111', 'N0012', 'hsa05225');
INSERT INTO `network_hsa` VALUES ('112', 'N0012', 'hsa05226 ');
INSERT INTO `network_hsa` VALUES ('113', 'N0013', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('114', 'N0013', 'hsa05225');
INSERT INTO `network_hsa` VALUES ('115', 'N0014', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('116', 'N0014', 'hsa05225');
INSERT INTO `network_hsa` VALUES ('117', 'N0015', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('118', 'N0016', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('119', 'N0017', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('120', 'N0018', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('121', 'N0019', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('122', 'N0020', 'hsa05210');
INSERT INTO `network_hsa` VALUES ('123', '\nN00063', '34');
INSERT INTO `network_hsa` VALUES ('124', 'N00001', '576');
INSERT INTO `network_hsa` VALUES ('125', '\nN00063', 'hsa01521');
INSERT INTO `network_hsa` VALUES ('126', 'N00001', 'hsa01100 ');
INSERT INTO `network_hsa` VALUES ('127', 'N00001', null);
INSERT INTO `network_hsa` VALUES ('128', 'N00001', null);
INSERT INTO `network_hsa` VALUES ('129', 'N00003', 'hsa01100 ');
INSERT INTO `network_hsa` VALUES ('130', 'N00003', 'hsa01522');
INSERT INTO `network_hsa` VALUES ('131', 'N00003', null);
INSERT INTO `network_hsa` VALUES ('132', 'N00003', null);
INSERT INTO `network_hsa` VALUES ('133', 'N00003', null);
INSERT INTO `network_hsa` VALUES ('134', 'N00003', null);
INSERT INTO `network_hsa` VALUES ('135', 'g_h', 'hsa04144');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', '123456', '0');
INSERT INTO `tb_user` VALUES ('2', '123', '123', '1');
