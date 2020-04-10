<div class="container">
    <div class="login-form" style="margin-top: 100px;">
        <form action="<?php echo base_url('login/login'); ?>" method="post">
            <h2 class="text-center">Log in</h2>       
            <div class="form-group">
                <input type="text" name="username" class="form-control" placeholder="Username" required="required">
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="Password" required="required">
<!-- <div id="message"></div> -->
            </div>
            <div class="form-group">
                <button type="submit" name="submit" class="btn btn-primary btn-block">Log in</button>
            </div>
        </form>
    </div>
</div>