<aside class="main-sidebar sidebar-dark-primary elevation-4">
   <a href="<?= site_url() ?>" class="brand-link">
      <span class="brand-text font-weight-light">Laporan Pekerjaan</span>
   </a>

   <div class="sidebar">
      <nav class="mt-2">
         <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu">
            <li class="nav-item">
               <a href="<?= site_url('dashboard') ?>" class="nav-link">
                  <i class="nav-icon fas fa-chart-line"></i>
                  <p>Dashboard</p>
               </a>
            </li>
            <!-- DATA INPUT MENU-->
            <li class="nav-header">DATA INPUT</li>
            <li class="nav-item">
               <a href="<?= site_url('accounting/transaction') ?>" class="nav-link">
                  <i class="nav-icon fas fa-money-check-alt"></i>
                  <p>Alat Produksi</p>
               </a>
            </li>
			<li class="nav-item">
               <a href="<?= site_url('accounting/transaction') ?>" class="nav-link">
                  <i class="nav-icon fas fa-money-check-alt"></i>
                  <p>Beton Manual</p>
               </a>
            </li>
            <!-- END DATA INPUT MENU-->
            <!-- REPORTS MENU -->
            <li class="nav-header">REPORTS</li>
            <li class="nav-item">
               <a href="<?= site_url('reports/summary_report') ?>" class="nav-link">
                  <i class="nav-icon fas fa-book"></i>
                  <p>Laporan Alat Produksi</p>
               </a>
            </li>
            <li class="nav-item">
               <a href="<?= site_url('reports/cash_bank') ?>" class="nav-link">
                  <i class="nav-icon fas fa-book"></i>
                  <p>Laporan Beton Manual</p>
               </a>
            </li>
            <!-- END REPORTS -->

            <!-- COMPANY -->
            <li class="nav-header">MASTER</li>

            <li class="nav-item">
               <a href="<?= site_url('/bck/coa') ?>" class="nav-link">
                  <i class="nav-icon fas fa-user-tie"></i>
                  <p>Master Pekerjaan</p>
               </a>
            </li>
            <li class="nav-item">
               <a href="<?= site_url('/bck/banks/') ?>" class="nav-link">
                  <i class="nav-icon fas fa-landmark"></i>
                  <p>Master Alat</p>
               </a>
            </li>
            <li class="nav-item">
               <a href="<?= site_url('/bck/branches/') ?>" class="nav-link">
                  <i class="nav-icon fas fa-hotel"></i>
                  <p>Master Item</p>
               </a>
            </li>
            <!-- END COMPANY -->
            <!-- SYSTEM -->
            <li class="nav-header">SYSTEM</li>
            <li class="nav-item">
               <a href="<?= site_url('/bck/users/') ?>" class="nav-link">
                  <i class="nav-icon fas fa-users"></i>
                  <p>User Management</p>
               </a>
            </li>
            <li class="nav-item">
               <a href="<?= site_url('/bck/audit-logs/') ?>" class="nav-link">
                  <i class="nav-icon fas fa-clipboard-list"></i>
                  <p>Audit Logs</p>
               </a>
            </li>
            <li class="nav-item">
               <a href="<?= site_url('logout') ?>" class="nav-link">
                  <i class="nav-icon fas fa-sign-out-alt"></i>
                  <p>Sign Out</p>
               </a>
            </li>
         </ul>
      </nav>
   </div>
</aside>