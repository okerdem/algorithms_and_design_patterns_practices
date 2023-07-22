void main() {
  Store store = new Store();

  store.getNotificationService().subscribe(new EmailMsgListener("beyit@mail"));
  store.getNotificationService().unSubscribe(new MobileAppListener("beyit"));
  store.newItemPromotion();
}

class Store {
  late final NotificationService _notificationService;

  Store() {
    _notificationService = new NotificationService();
  }

  void newItemPromotion() {
    _notificationService.notify();
  }

  NotificationService getNotificationService() {
    return _notificationService;
  }
}

class NotificationService {
  late final List<EventListener> _customers;

  NotificationService() {
    _customers = [];
  }

  void subscribe(EventListener listener) {
    _customers.add(listener);
  }

  void unSubscribe(EventListener listener) {
    _customers.remove(listener);
  }

  void notify() {
    _customers.forEach((element) {
      element.update();
    });
  }
}

abstract class EventListener {
  void update();
}

class EmailMsgListener implements EventListener {
  late final String _email;

  EmailMsgListener(String email) {
    this._email = email;
  }

  void update() {
    // send information
  }
}

class MobileAppListener implements EventListener {
  late final String _username;

  MobileAppListener(String username) {
    this._username = username;
  }

  void update() {
    // send information
  }
}
