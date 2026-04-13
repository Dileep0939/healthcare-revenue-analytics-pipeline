SELECT
    patient_id,
    COUNT(claim_id) AS total_claims,
    SUM(billed_amount) AS total_billed,
    SUM(paid_amount) AS total_paid,
    SUM(CASE WHEN denial_flag = 1 THEN 1 ELSE 0 END) AS denied_claims
FROM claims
GROUP BY patient_id
