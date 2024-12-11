SELECT karyawan.name AS karyawan_name, departemen.name AS departemen_name
FROM karyawan
JOIN departemen ON karyawan.departemen_id = departemen.id
WHERE karyawan.departemen_id IS NOT NULL;


SELECT e.Name AS EmployeeName, p.Name AS ProjectName
FROM employees e
LEFT JOIN employee_projects ep ON e.id = ep.employee_id
LEFT JOIN projects p ON ep.project_id = p.id
ORDER BY e.Name;


SELECT p.ProjectName, d.DepartmentName
FROM Project p
LEFT JOIN Department d ON p.Department_ID = d.Department_ID;


SELECT karyawan.name AS karyawan_name, gaji.amount AS salary
FROM karyawan
LEFT JOIN gaji ON karyawan.id = gaji.karyawan_id
UNION
SELECT NULL AS karyawan_name, gaji.amount AS salary
FROM gaji
WHERE gaji.karyawan_id IS NULL;


SELECT k.nama_karyawan, p.project_name
FROM karyawan k
CROSS JOIN proyek p;


SELECT k.nama AS karyawan, m.nama AS manajer
FROM karyawan k
LEFT JOIN karyawan m ON k.manager_id = m.id;


SELECT 