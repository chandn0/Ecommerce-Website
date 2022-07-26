import { Component, OnDestroy, OnInit } from '@angular/core';
// import {prod, products} from '../shared/mockData';
import { ProductService } from '../../services/product.service';
import { ActivatedRoute } from '@angular/router';
import { Subscription } from "rxjs";
import { WishListService } from '../../services/wish-list.service';
import { JwtResponse } from '../../response/JwtResponse';
import { UserService } from '../../services/user.service';
import { CartService } from 'src/app/services/cart.service';
import { DetailComponent } from '../product-detail/detail.component';
import { MatDialog } from '@angular/material/dialog';


@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls: ['./card.component.css']
})
export class CardComponent implements OnInit, OnDestroy {
  searchText = '';


  title: string;
  page: any;
  private paramSub: Subscription;
  private querySub: Subscription;
  addedToWishlist: boolean = false;


  constructor(private productService: ProductService,
    private route: ActivatedRoute,
    private wishListService: WishListService,
    private userService: UserService,
    private cartService: CartService,
    private dialog: MatDialog) {
    this.userSubscription = this.userService.currentUser.subscribe(user => this.currentUser = user);
  }

  currentUser: JwtResponse;
  userSubscription: Subscription;



  ngOnInit() {
    this.querySub = this.route.queryParams.subscribe(() => {
      this.update();
    });
    this.paramSub = this.route.params.subscribe(() => {
      this.update();
    });

  }

  ngOnDestroy(): void {
    this.querySub.unsubscribe();
    this.paramSub.unsubscribe();
  }

  update() {
    if (this.route.snapshot.queryParamMap.get('page')) {
      const currentPage = +this.route.snapshot.queryParamMap.get('page');
      const size = +this.route.snapshot.queryParamMap.get('size');
      this.getProds(currentPage, size);
    } else {
      this.getProds();
    }
  }
  getProds(page: number = 1, size: number = 300) {
    if (this.route.snapshot.url.length == 1) {
      this.productService.getAllInPage(+page, +size)
        .subscribe(page => {
          this.page = page;
          this.title = 'Get Whatever You Want!';
        });
    } else { //  /category/:id
      const type = this.route.snapshot.url[1].path;
      this.productService.getCategoryInPage(+type, page, size)
        .subscribe(categoryPage => {
          this.title = categoryPage.category;
          this.page = categoryPage.page;
        });
    }

  }

  handleAddToWishList(productId) {
    console.log("started");

    this.cartService.addToWishList(productId).subscribe(() => {
      this.addedToWishlist = true;
    }

    );

    console.log(this.addedToWishlist);
  }

  handleRemoveFromWishList(productId) {
    this.wishListService.removeFromWishList(productId).subscribe(() => {
      this.addedToWishlist = false;
    }

    );
  }
  updateUser() {
    this.dialog.open(DetailComponent);
  }


}
