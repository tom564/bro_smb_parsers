use syslog;

/*  Create BRO_SMB_FILES class */
INSERT IGNORE INTO classes (id, class) VALUES (29020, "BRO_SMB_FILES");


/* integers i0 through i5 are field order 5 through 10 */
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_FILES"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_FILES"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_FILES"), (SELECT id FROM fields WHERE field="dstip"), 7);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_FILES"), (SELECT id FROM fields WHERE field="dstport"), 8);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_FILES"), (SELECT id FROM fields WHERE field="file_size"), 9);


/* strings s0 through s5 are field order 11 through 16 */
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_FILES"), (SELECT id FROM fields WHERE field="action"), 11);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_FILES"), (SELECT id FROM fields WHERE field="path"), 12);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_FILES"), (SELECT id FROM fields WHERE field="filename"), 13);

/* Create bro_ntlm class */ 
INSERT IGNORE INTO classes (id, class) VALUES (29021, "BRO_NTLM");

INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_NTLM"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_NTLM"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_NTLM"), (SELECT id FROM fields WHERE field="dstip"), 7);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_NTLM"), (SELECT id FROM fields WHERE field="dstport"), 8);

INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_NTLM"), (SELECT id FROM fields WHERE field="user"), 11);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_NTLM"), (SELECT id FROM fields WHERE field="hostname"), 12);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_NTLM"), (SELECT id FROM fields WHERE field="domain"), 13);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_NTLM"), (SELECT id FROM fields WHERE field="success"), 14);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_NTLM"), (SELECT id FROM fields WHERE field="status"), 15);

/* Create bro_ntlm class */ 
INSERT IGNORE INTO classes (id, class) VALUES (29022, "BRO_SMB_MAPPING");

INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_MAPPING"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_MAPPING"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_MAPPING"), (SELECT id FROM fields WHERE field="dstip"), 7);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_MAPPING"), (SELECT id FROM fields WHERE field="dstport"), 8);

/* strings */ 
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_MAPPING"), (SELECT id FROM fields WHERE field="path"), 11);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_MAPPING"), (SELECT id FROM fields WHERE field="service"), 12);

/* create new field */ 

INSERT IGNORE INTO fields (field, field_type, pattern_type) VALUES ("native_file_system","string", "QSTRING");
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_MAPPING"), (SELECT id FROM fields WHERE field="native_file_system"), 13);
INSERT IGNORE INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SMB_MAPPING"), (SELECT id FROM fields WHERE field="type"), 14);
