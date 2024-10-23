SELECT lxd2.id as lxd_id,lxd2.maxd, lxd2.tenxd, ast.name as nvdx,sum(amount) as nvdx_total, 
(select assignment_type.name from assignment_type where id=1 limit 1) as sscd, 
(select sum(amount) as total_sscd from assignment_type 
join mucgia on assignment_type.id=mucgia.asssign_type_id 
join loaixd2 on mucgia.item_id=loaixd2.id 
where assignment_type.id=1 and tenxd=lxd2.tenxd limit 1) as sscd_total
FROM mucgia mg
right join loaixd2 lxd2 on mg.item_id=lxd2.id 
join assignment_type ast on ast.id=mg.asssign_type_id
where ast.id=2 and mg.quarter_id=20 and lxd2.id=20
group by lxd_id,maxd, tenxd, nvdx 
order by nvdx_total desc