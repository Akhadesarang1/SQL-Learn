-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
-- FROM memberships;

-- postgres
-- SELECT membership_end - membership_start
-- FROM memberships;

-- postgres
-- SELECT NOW() - membership_start
-- FROM memberships;

-- SELECT DATEDIFF(membership_end,  membership_start)
-- FROM memberships; -- mysql

-- SELECT DATEDIFF(NOW(),  membership_start)
-- FROM memberships; -- mysql