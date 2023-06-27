<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fab fa-atlassian"></i>
        </div>
        <div class="sidebar-brand-text mx-3">warteg</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">
    <?php if ($this->session->userdata('role_id') == 1) { ?>

        <div class="sidebar-heading">Admin</div>
        <li class="nav-item <?= $this->uri->segment(1) == 'admin' ? 'active' : '' ?>">
            <a class="nav-link" href="<?= base_url('admin'); ?> ">
                <i class="fas fa-fw fa-user"></i>
                <span>Role</span>
            </a>
        </li>

        <div class="sidebar-heading">user</div>
        <li class="nav-item <?= $this->uri->segment(1) == 'user' ? 'active' : '' ?>">
            <a class="nav-link" href="<?= base_url('user'); ?> ">
                <i class="fas fa-fw fa-user"></i>
                <span>My Profile</span>
            </a>
        </li>

        <hr class="sidebar-divider mt-3">
        <div class="sidebar-heading">Transaksi</div>
        <li class="nav-item <?= $this->uri->segment(1) == 'transaksi' ? 'active' : '' ?>">
            <a class="nav-link" href="<?= base_url('transaksi'); ?> ">
                <i class="fas fa-fw fa-shopping-cart"></i>
                <span>Daftar Transaksi</span>
            </a>
        </li>

        <hr class="sidebar-divider mt-3">
        <div class="sidebar-heading">Makanan</div>
        <li class="nav-item <?= $this->uri->segment(1) == 'makanan' ? 'active' : '' ?>">
            <a class="nav-link" href="<?= base_url('makanan'); ?> ">
                <i class="fas fa-fw fa-utensils"></i>
                <span>Daftar Makanan</span>
            </a>
        </li>

    <?php } ?>


    <?php if ($this->session->userdata('role_id') == 2) { ?>
        <hr class="sidebar-divider mt-3">
        <div class="sidebar-heading">Pesanan</div>

        <!--sub menu looping-->
        <li class="nav-item <?= $this->uri->segment(1) == 'pesanan' && $this->uri->segment(2) == '' ? 'active' : '' ?>">
            <a class="nav-link pb-0" href="<?= base_url('pesanan'); ?>">
                <i class="fas fa-fw fa-shopping-cart"></i>
                <span>
                    Pesan Makanan </span></a>
        </li>

    <?php } ?>
    <!-- Divider -->
    <hr class="sidebar-divider mt-3">

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('auth/logout'); ?> ">
            <i class="fas fa-fw fa-sign-out-alt"></i>
            <span>Logout</span>
        </a>
    </li>


    <!-- Divider -->
    <hr class="sidebar-divider">
    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->