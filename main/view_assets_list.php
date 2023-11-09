<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<table class="table table-bordered" id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			<th width="25%"> Name </th>
			<th width="25%"> supplier </th>
			<th width="3%">remarks</th>
			<th width="8%"> amount </th>
		</tr>
	</thead>
	<tbody>
		
			<?php
				require '../conn2.php';

				if(isset($_GET['transaction_id'])) $id=$_GET['transaction_id'];

				$result = $db->prepare("SELECT * FROM assets WHERE transaction_id= :userid");
				$result->bindParam(':userid', $id);
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td><?php
			echo $rrrrrrr=$row['name'];
			?></td>
			<td><?php
			echo $rrrrrrr=$row['supplier'];
			?></td>
			<td><?php echo $row['remarks']; ?></td>
			<td>
			<?php
			$dfdf=$row['amount'];
			echo formatMoney($dfdf, true);
			?>
			</td>
			</tr>
			<?php
				}
			?>
			<tr>
				<td colspan="2"><strong style="font-size: 12px; color: #222222;">Total:</strong></td>
				<td><strong style="font-size: 12px; color: #222222;">
				<?php
				function formatMoney($number, $fractional=false) {
					if ($fractional) {
						$number = sprintf('%.2f', $number);
					}
					while (true) {
						$replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
						if ($replaced != $number) {
							$number = $replaced;
						} else {
							break;
						}
					}
					return $number;
				}
				$sdsd=$_GET['transaction_id'];
				$resultas = $db->prepare("SELECT sum(amount) FROM assets WHERE transaction_id= :a");
				$resultas->bindParam(':a', $sdsd);
				$resultas->execute();
				for($i=0; $rowas = $resultas->fetch(); $i++){
				$fgfg=$rowas['sum(amount)'];
				echo formatMoney($fgfg, true);
				}
				?>
				</strong></td>
			</tr>
		
	</tbody>
</table>