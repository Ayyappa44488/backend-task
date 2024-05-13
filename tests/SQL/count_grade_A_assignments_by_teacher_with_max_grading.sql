WITH grade_counts AS (
    SELECT
        t.id AS teacher_id,
        COUNT(*) AS total_assignments,
        SUM(CASE WHEN a.grade = 'A' THEN 1 ELSE 0 END) AS grade_a_count
    FROM
        teachers t
    JOIN
        assignments a ON t.id = a.teacher_id
    GROUP BY
        t.id
)
SELECT
    grade_a_count
FROM
    grade_counts
ORDER BY
    total_assignments DESC,
    grade_a_count DESC
LIMIT 1;
