use db;

INSERT INTO project_data (ProjectName, TaskName, Assigned, StartDate, DaysRequired, EndDate) VALUES
('Marketing', 'Market Research', 'Alice', '2024-01-01', 13, '2024-01-14'),
('Marketing', 'Content Creation', 'Bob', '2024-01-14', 14, '2024-01-28'),
('Marketing', 'Social Media Planning', 'Charlie', '2024-01-28', 22, '2024-02-19'),
('Marketing', 'Campaign Analysis', 'Daisy', '2024-02-18', 25, '2024-03-14'),
('Product Dev', 'Prototype Development', 'Ethan', '2024-01-02', 18, '2024-01-20'),
('Product Dev', 'Quality Assurance', 'Fiona', '2024-01-20', 10, '2024-01-30'),
('Product Dev', 'User Interface Design', 'Gabriel', '2024-02-04', 25, '2024-02-29'),
('Customer Svc', 'Service Improvement', 'Hannah', '2024-02-01', 22, '2024-02-23'),
('Customer Svc', 'Ticket Resolution', 'Ian', '2024-02-24', 25, '2024-03-20'),
('Customer Svc', 'Customer Feedback', 'Julia', '2024-03-21', 30, '2024-04-20'),
('Financial', 'Budget Analysis', 'Kevin', '2024-02-02', 22, '2024-02-24'),
('Financial', 'Financial Reporting', 'Mark', '2024-02-13', 21, '2024-02-09'), 
('Financial', 'Investment Planning', 'Mark', '2024-03-19', 25, '2024-04-13'),
('Research', 'Market Trends Analysis', 'Nathan', '2024-01-02', 23, '2024-01-25'),
('Research', 'Data Collection', 'Olivia', '2024-01-26', 32, '2024-02-27'),
('Research', 'Research Paper Writing', 'Peter', '2024-02-28', 27, '2024-03-26'),
('Development', 'Software Development', 'Quinn', '2024-01-02', 36, '2024-02-07'),
('Development', 'Feature Enhancement', 'Rachel', '2024-02-08', 34, '2024-03-13'),
('Development', 'Code Review', 'Sam', '2024-03-14', 30, '2024-04-13'),
('Production', 'Manufacturing', 'Tim', '2024-01-03', 47, '2024-02-19'),
('Production', 'Quality Control', 'Ursula', '2024-02-17', 27, '2024-03-15'),
('Production', 'Packaging Design', 'Victor', '2024-03-14', 22, '2024-04-05'),
('Sales', 'Lead Generation', 'Wendy', '2024-01-03', 60, '2024-03-03'),
('Sales', 'Client Meetings', 'Xavier', '2024-01-06', 20, '2024-01-26'),
('Sales', 'Contract Negotiation', 'Yvette', '2024-02-03', 35, '2024-03-09'),
('Support', 'Technical Support', 'Zoe', '2024-01-01', 25, '2024-01-26'),
('Support', 'Bug Fixes', 'Aaron', '2024-01-27', 31, '2024-02-27'),
('Support', 'Software Updates', 'Bella', '2024-03-02', 22, '2024-03-24'),
('Operations', 'Process Optimization', 'Calvin', '2024-01-03', 30, '2024-02-02'),
('Operations', 'Inventory Management', 'Diane', '2024-02-03', 25, '2024-02-28'),
('Operations', 'Facility Maintenance', 'Edward', '2024-02-29', 20, '2024-03-20'),
('Consulting', 'Strategic Planning', 'Fiona', '2024-01-02', 35, '2024-02-06'),
('Consulting', 'Market Expansion', 'Gary', '2024-02-02', 32, '2024-03-05'),
('Consulting', 'Client Advisory', 'Helen', '2024-03-06', 25, '2024-03-31'),
('Training', 'Employee Training', 'Isaac', '2024-01-04', 27, '2024-01-31'),
('Training', 'Certification Programs', 'Jane', '2024-01-28', 30, '2024-02-27'),
('Training', 'Skill Development', 'Kyle', '2024-02-28', 22, '2024-03-21'),
('Events', 'Event Planning', 'Laura', '2024-01-03', 25, '2024-01-28'),
('Events', 'Conference Management', 'Mike', '2024-02-03', 20, '2024-02-23'),
('Events', 'Sponsorship Coordination', 'Nancy', '2024-02-24', 35, '2024-03-30');

select * from project_data;

select Assigned,datediff(enddate,Startdate) as remaining_time from project_data;

select date_format(EndDate,"%Y") from project_data;

select date_format(EndDate,"%M") from project_data;

select date_format(EndDate,"%D") from project_data;

select quarter("2026-04-19");

select adddate("2026-06-11",interval 10 day);

select adddate("2026-06-11",interval 10 month);

select adddate("2026-06-11",interval 10 year);

select dayname(now());